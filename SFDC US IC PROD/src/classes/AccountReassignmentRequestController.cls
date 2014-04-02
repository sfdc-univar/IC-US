public with sharing class AccountReassignmentRequestController
{
	public List<AccountSearchResultWrapper> accountSearchResultsCurrentPage{get; set;}
    public ApexPages.StandardSetController sscAccounts;
	public Set<Id> searchResultsSelectedAccountIds;
	public String contextItem{get;set;} //this needed? i dont think so
    public List<SelectedAccountForReassignmentWrapper> selectedAccountsForReassignment{get; set;}
	public Set<Id> selectedAccountsForReassignmentIds;
	public List<String> errorsSelectingAccountsForReassignment{get; set;}
	
    //User Approver Maps
    public Map<String,CustomDistrict__c> districtSettings{get; set;}
    public Map<String,Id> rsdRvpPerNrIdMap{get; set;}
    
    Map<String,Id> accountRecordTypesByDeveloperNameMap{get; set;}
    
    //Search Criteria
    public String nameQuery {get; set;}
    
    //PageBlockTable Lists
    public List<AccountSearchResultWrapper> searchResultsAccounts{get; set;}
    //public Map<Id,Integer> searchResultsAccountsMap{get; set;}
    
    //Account Reassignment Template
    public Account_Reassignment__c template{get; set;}
    public User newOwner{get; set;}
    public Boolean headerCheckbox{get; set;}
    
    //AcctReasgn SB 
    //public String alertImageUrl = '/servlet/servlet.FileDownload?file=015c00000007rM5';
	//public String blankImageUrl = '/servlet/servlet.FileDownload?file=015c00000007sci';
    //IC TEST
    //public String alertImageUrl = '/servlet/servlet.FileDownload?file=015M0000000IIz5';
	//public String blankImageUrl = '/servlet/servlet.FileDownload?file=015M0000000IJbX';
	//PRODUCTION
    public String alertImageUrl = '/servlet/servlet.FileDownload?file=015a0000002kmFK';
	public String blankImageUrl = '/servlet/servlet.FileDownload?file=015a0000002kmFL';
	
    //Controller Constructor (Initialization)
    public AccountReassignmentRequestController()
    {
        //Paging Properties
        searchResultsSelectedAccountIds = new Set<Id>();
        selectedAccountsForReassignment = new List<SelectedAccountForReassignmentWrapper>();
		selectedAccountsForReassignmentIds = new Set<Id>();
		
        accountRecordTypesByDeveloperNameMap = retrieveAccountRecordTypesByDeveloperNameMap();
        setUserApproverMaps();
        
        template = new Account_Reassignment__c();
        newOwner = new User();
		headerCheckbox = false;
		errorsSelectingAccountsForReassignment = new List<String>();
    }
    
    public String selectedAccountSearchByOption
    {
        get
        {
            if (this.selectedAccountSearchByOption == null) { return 'Name'; }
            else { return this.selectedAccountSearchByOption; }
        }
        set { this.selectedAccountSearchByOption = value; }
    }
	
	public String[] selectedAccountSearchByRecordTypes
    {
        get
		{
            if (this.selectedAccountSearchByRecordTypes == null) { return new String[] {accountRecordTypesByDeveloperNameMap.get('ShipTo')}; }
            else { return this.selectedAccountSearchByRecordTypes; }
        }
        set { this.selectedAccountSearchByRecordTypes = value; }
    }
	
	public String selectedRecordsPerPageOption
	{
		get
		{
			if (this.selectedRecordsPerPageOption == null) { return '10'; }
			else { return this.selectedRecordsPerPageOption; }
		}
		set { this.selectedRecordsPerPageOption = value; }
	}
	
	//public String selectedRecordsPerPageOption { get; set; } { selectedRecordsPerPageOption = '10'; }
    //public String selectedRecordsPerPageOption;
	//public String getSelectedRecordsPerPageOption() { if (selectedRecordsPerPageOption == null) { return '10'; } else { return selectedRecordsPerPageOption; } }
	//public void setSelectedRecordsPerPageOption(String s) { selectedRecordsPerPageOption = s; }
	
    public List<SelectOption> getAccountSearchByOptions()
    {
        List<SelectOption> accountSearchByOptions = new List<SelectOption>();
        accountSearchByOptions.add(new SelectOption('Name', 'Account Name'));
        accountSearchByOptions.add(new SelectOption('CustomerShipTo__c', 'Customer Ship To'));
        accountSearchByOptions.add(new SelectOption('Owner.Name', 'Account Owner'));
        return accountSearchByOptions;
    }
    
    public List<SelectOption> getAccountSearchByRecordTypes()
    {
        List<SelectOption> accountSearchByRecordTypes = new List<SelectOption>();
        accountSearchByRecordTypes.add(new SelectOption(accountRecordTypesByDeveloperNameMap.get('ShipTo'), 'Ship To'));
        accountSearchByRecordTypes.add(new SelectOption(accountRecordTypesByDeveloperNameMap.get('Prospect'), 'Prospect'));
        return accountSearchByRecordTypes;
    }
	
	public List<SelectOption> getRecordsPerPageOptions()
	{
		List<SelectOption> recordsPerPageOptions = new List<SelectOption>();
		recordsPerPageOptions.add(new SelectOption('10', '10'));
		recordsPerPageOptions.add(new SelectOption('20', '20'));
		recordsPerPageOptions.add(new SelectOption('50', '50'));
		recordsPerPageOptions.add(new SelectOption('100', '100'));
		return recordsPerPageOptions;
	}
    
	public Map<String,Id> retrieveAccountRecordTypesByDeveloperNameMap()
    {
        List<RecordType> accountRecordTypes = [SELECT Id, DeveloperName FROM RecordType WHERE SobjectType = 'Account' AND IsActive = true];
        Map<String,Id> retrievedAccountRecordTypesByDeveloperNameMap = new Map<String,Id>();
        
        for (RecordType rt :accountRecordTypes)
        {
            retrievedAccountRecordTypesByDeveloperNameMap.put(rt.DeveloperName,rt.Id);
        }
        
        return retrievedAccountRecordTypesByDeveloperNameMap;
    }
    
    public void setUserApproverMaps()
    {
        //get all Rsd and rvp settings
        districtSettings = CustomDistrict__c.getAll();
        
        Set<String> rsdRvpPerNrSet = new Set<String>();
        
        for(CustomDistrict__c cd: districtSettings.values())
        {
            rsdRvpPerNrSet.add(cd.RSD_PerNr__c);
            rsdRvpPerNrSet.add(cd.RVP_PerNr__c);
        }
        
        List<User> rsdRvpUsers = [SELECT Id, PerNr__c FROM User WHERE PerNr__c IN :rsdRvpPerNrSet];
        rsdRvpPerNrIdMap = new Map<String,Id>();
        
        for (User u: rsdRvpUsers)
        {
            rsdRvpPerNrIdMap.put(u.PerNr__c, u.Id); 
        }
    }
    
	
	public void searchButtonClick()
    {
        this.searchResultsSelectedAccountIds.clear();
		this.sscAccounts = searchAccounts();
		this.sscAccounts.setPageNumber(1);
        this.sscAccounts.setPageSize(Integer.valueOf(this.selectedRecordsPerPageOption));
		this.accountSearchResultsCurrentPage = constructCurrentPageAccountSearchResultWrapperList();
    }
	
    public void addButtonClick()
    {
        if (template == null || template.New_Owner__c == null)
		{
			apexpages.addmessage(new ApexPages.Message(ApexPages.Severity.ERROR,'New Owner must first be specified!'));
			return;
		}
		
		setSelectedAccountsOnPageChange(this.accountSearchResultsCurrentPage, this.searchResultsSelectedAccountIds);
		appendToSelectedAccountsForReassignment();
		this.searchResultsSelectedAccountIds.clear();
		this.accountSearchResultsCurrentPage = constructCurrentPageAccountSearchResultWrapperList();
    }
    
    public void removeButtonClick()
    {
        removeFromSelectedAccountsForReassignment();
		this.accountSearchResultsCurrentPage = constructCurrentPageAccountSearchResultWrapperList();
    }
    
    public PageReference submitForApprovalButtonClick()
    {
        
		List<Account_Reassignment__c> accountReassignments = getAccountReassignmentsFromWrapperList(selectedAccountsForReassignment);
		Set<Id> uniqueApproverIdList = getApproverIdsFromWrapperList(selectedAccountsForReassignment);
		
		Boolean allSuccess = true;
		Database.Saveresult[] saveResults = Database.insert(accountReassignments);
        
        for (Integer i = saveResults.size() - 1; i >= 0; i--)
        {
            if (!saveResults[i].isSuccess())
            {
                for (Database.Error err : saveResults[i].getErrors())
				{
					apexpages.addmessage(new ApexPages.Message(ApexPages.Severity.ERROR,err.getStatusCode() + ': ' + err.getMessage()));
					allSuccess = false;
				}
            }
			
			EmailHelper.sendAccountReassignmentNotificationEmails(uniqueApproverIdList,'AR_Initial_Notification');
			
			if (allSuccess)
			{
				PageReference currentPage = ApexPages.currentPage();
				currentPage.getParameters().clear();
				currentPage.setRedirect(true);
				return currentPage;
			}
			else { return null; }
        }
		
		return null;
    }
    
    public PageReference cancelButtonClick()
    {
        Schema.DescribeSObjectResult result = Account_Reassignment__c.SObjectType.getDescribe();
    
        PageReference pageRef = new PageReference('/' + result.getKeyPrefix());
        pageRef.setRedirect(true);
        return pageRef;
    }
	
	public void newOwnerLookupOnChange()
    {
        if (template != null && template.New_Owner__c != null)
		{
			this.newOwner = [SELECT Id, Name, ManagerId, Title, UserRoleId, User_District__c FROM User WHERE Id = :template.New_Owner__c];
			
			//This looks a little wonky, but its needed to auto-resolve the name field when the lookup is set.
			Id newOwnerId = this.template.New_Owner__c;
			User u = [SELECT Id, Name FROM User WHERE Id = :newOwnerId];
			this.template.New_Owner__c = u.Id;
		}
		else { this.newOwner = null; }
    }
    
    
	
	public ApexPages.StandardSetController searchAccounts()
    {
        String queryStr = '%' + nameQuery + '%';
		String soql =  'SELECT  Id, Name, CustomerShipTo__c, ShippingCity, ShippingState, ShippingStateCode, ShippingCountryCode, AcornRolling12MoSales__c, ' + 
                          		'OwnerId, Owner.User_District__c, Owner.ManagerId, Owner.UserRoleId ' + 
                		'FROM Account ' + 
						'WHERE ' + selectedAccountSearchByOption + ' LIKE :queryStr ' + 
						  'AND RecordTypeId IN :selectedAccountSearchByRecordTypes ' + 
						'LIMIT 500';
		system.debug('zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz');
		system.debug(soql);
		ApexPages.StandardSetController accountSearchResultsStandardSetController = new ApexPages.StandardSetController(Database.getQueryLocator(soql));
		
		return accountSearchResultsStandardSetController;
    }
	
	public List<AccountSearchResultWrapper> constructCurrentPageAccountSearchResultWrapperList()
	{
		if (this.sscAccounts == null) { return null; }
		List<Account> accountsCurrentPage = this.sscAccounts.getRecords();
		List<AccountSearchResultWrapper> accountSearchResultsCurrentPage = new List<AccountSearchResultWrapper>();
		Map<Id,Account_Reassignment__c> conflictingInProgressAccountReassignments = findConflictingInProgressAccountReassignments(accountsCurrentPage);
		
		for(sObject so : accountsCurrentPage)
        {
			Account a = (Account)so;
			AccountSearchResultWrapper asrWrapper = new AccountSearchResultWrapper(a);
			
			//Set Selected if Account was selected on previous page
			if (this.searchResultsSelectedAccountIds.contains(a.Id)) { asrWrapper.selected = true; }
            else { asrWrapper.selected = false; }
			
			//Disable checkbox and add text if already part of another pending reasignment
            if (conflictingInProgressAccountReassignments.containsKey(asrWrapper.account.Id))
            {
                asrWrapper.disabled = true;
                asrWrapper.notificationImageUrl = alertImageUrl;
                asrWrapper.hoverText = 'Account is already part of an In-Progress reassignment: ' + conflictingInProgressAccountReassignments.get(asrWrapper.account.Id).Name;
				asrWrapper.conflictingAccountReassignmentId = conflictingInProgressAccountReassignments.get(asrWrapper.account.Id).Id;
            }
			else //Hopefully this will fix IE 10 and below issues with displaying imaage, using a blank.
			{
				asrWrapper.notificationImageUrl = blankImageUrl;
			}
			
			//Disable checkbox if 
			if (this.selectedAccountsForReassignmentIds.contains(a.Id))
			{
				asrWrapper.disabled = true;
			}
			
			accountSearchResultsCurrentPage.add(asrWrapper);
		}
		
		return accountSearchResultsCurrentPage;
	}
	
	public void appendToSelectedAccountsForReassignment()
	{
		if (this.searchResultsSelectedAccountIds.size() == 0) { return; }
		errorsSelectingAccountsForReassignment.clear();
		String baseUrl = 'https://' + ApexPages.currentPage().getHeaders().get('Host') + '/';
		
		List<Account> accounts = [	SELECT 	Id, Name, CustomerShipTo__c, OwnerId, Owner.User_District__c, Owner.ManagerId, Owner.Name, Owner.Title, AcornRolling12MoSales__c
									FROM 	Account
									WHERE 	Id IN :this.searchResultsSelectedAccountIds];
		
		for (Account a :accounts)
		{
			Account_Reassignment__c ar = new Account_Reassignment__c();
			ar.Status__c = 'Pending Approval';
			ar.Account__c = a.Id;
            ar.Current_Owner__c = a.OwnerId;
			ar.Current_Owner_Manager__c = a.Owner.ManagerId;
			ar.New_Owner__c = this.template.New_Owner__c;
			ar.New_Owner_Manager__c = this.newOwner.ManagerId;
			
			//Find Current and New Owner RSD Ids
			CustomDistrict__c currentOwnerDistrictSetting = districtSettings.get(a.Owner.User_District__c);
			CustomDistrict__c newOwnerDistrictSetting = districtSettings.get(this.newOwner.User_District__c);
			Id currentOwnerRsdId = null;
			Id currentOwnerRvpId = null;
			Id newOwnerRsdId = null;
			Id newOwnerRvpId = null;
			
			if (currentOwnerDistrictSetting != null)
			{
				currentOwnerRsdId = rsdRvpPerNrIdMap.get(currentOwnerDistrictSetting.RSD_PerNr__c);
				currentOwnerRvpId = rsdRvpPerNrIdMap.get(currentOwnerDistrictSetting.RVP_PerNr__c);
			}
			if (newOwnerDistrictSetting != null)
			{
				newOwnerRsdId = rsdRvpPerNrIdMap.get(newOwnerDistrictSetting.RSD_PerNr__c);
				newOwnerRvpId = rsdRvpPerNrIdMap.get(newOwnerDistrictSetting.RVP_PerNr__c);
			}
			//End of Find Current and New Owner RSD Ids
			
			Id requestingUserId = UserInfo.getUserId();
			Boolean currentOwnerIsHouseAccountUser = isHouseAccountUser(a.Owner.Name, a.Owner.Title);
			Boolean newOwnerIsHouseAccountUser = isHouseAccountUser(this.newOwner.Name, this.newOwner.Title);
			
			//Validations. Must have Current and New Owner Managers, and Current and New Owner RSDs for Ownership Reassignment Approval Process (excludes House accounts)
			if (a.Owner.ManagerId == null && !currentOwnerIsHouseAccountUser)
			{
				apexpages.addmessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Cannot Reassign Account ' + a.Name + '. No Manager Found for Current Owner : ' + '<a href="' + baseUrl + a.OwnerId + '">' + a.Owner.Name + '</a>'));
				continue;
			}
			if (this.newOwner.ManagerId == null && !newOwnerIsHouseAccountUser)
			{
				apexpages.addmessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Cannot Reassign Account ' + a.Name + '. No Manager Found for New Owner : ' + '<a href="' + baseUrl + this.newOwner.Id + '">' + this.newOwner.Name + '</a>'));
				continue;
			}
			if (currentOwnerRsdId == null && !currentOwnerIsHouseAccountUser)
			{
				apexpages.addmessage(new Apexpages.Message(ApexPages.Severity.ERROR,'Cannot Reassign Account ' + a.Name + '. No RSD Found for Current Owner : ' + '<a href="' + baseUrl + a.OwnerId + '">' + a.Owner.Name + '</a>' + ' - District : ' + ((a.Owner.User_District__c == null) ? '<i>blank</i>' : a.Owner.User_District__c)));
				continue;
			}
			if (newOwnerRsdId == null && !newOwnerIsHouseAccountUser)
			{
				apexpages.addmessage(new Apexpages.Message(ApexPages.Severity.ERROR,'Cannot Reassign Account ' + a.Name + '. No RSD Found for New Owner : ' + '<a href="' + baseUrl + this.newOwner.Id + '">' + this.newOwner.Name + '</a>' + ' - District : ' + ((this.newOwner.User_District__c == null) ? '<i>blank</i>' : this.newOwner.User_District__c)));
				continue;
			}
			//End Validations
			
			//Set RSD and RVP Lookups
			
			if (currentOwnerRsdId != null)  { ar.Current_Owner_RSD__c = currentOwnerRsdId; }
			if (currentOwnerRvpId != null)  { ar.Current_Owner_RVP__c = currentOwnerRvpId; }
			if (newOwnerRsdId != null) 		{ ar.New_Owner_RSD__c = newOwnerRsdId; }
			if (newOwnerRvpId != null) 		{ ar.New_Owner_RVP__c = newOwnerRvpId; }
			
			//Set Auto-Approvals
			if (a.Owner.ManagerId == requestingUserId || currentOwnerIsHouseAccountUser)
			{
				ar.Current_Owner_Manager_Approval__c = 'Approved';
				ar.Current_Owner_Manager_Approved_Date__c = Datetime.now();
			}
			if (currentOwnerRsdId == requestingUserId || currentOwnerRvpId == requestingUserId || currentOwnerIsHouseAccountUser)
			{
				ar.Current_Owner_RSD_Approval__c = 'Approved';
				ar.Current_Owner_RSD_Approved_Date__c = Datetime.now();
			}
			if (this.newOwner.ManagerId == requestingUserId || newOwnerIsHouseAccountUser)
			{
				ar.New_Owner_Manager_Approval__c = 'Approved';
				ar.New_Owner_Manager_Approved_Date__c = Datetime.now();
			}
			if (newOwnerRsdId == requestingUserId || newOwnerRvpId == requestingUserId || newOwnerIsHouseAccountUser)
			{
				ar.New_Owner_RSD_Approval__c = 'Approved';
				ar.New_Owner_RSD_Approved_Date__c = Datetime.now();
			}
			
			this.selectedAccountsForReassignment.add(new SelectedAccountForReassignmentWrapper(ar, a.CustomerShipTo__c, a.AcornRolling12MoSales__c, a.Owner.User_District__c, this.newOwner.User_District__c));
			this.selectedAccountsForReassignmentIds.add(a.Id);
		}
	}
	
	public void removeFromSelectedAccountsForReassignment()
	{
		if (this.selectedAccountsForReassignment == null) { return; }
		
		for (Integer i = this.selectedAccountsForReassignment.size() - 1; i >= 0; i--)
		{
			if (this.selectedAccountsForReassignment[i].selected)
			{
				this.selectedAccountsForReassignmentIds.remove(this.selectedAccountsForReassignment[i].accountReassignment.Account__c);
				this.selectedAccountsForReassignment.remove(i);
			}
		}
	}
	
	
    //need these?
    //public void doSelectItem() { this.searchResultsSelectedAccountIds.add(this.contextItem); }
    //public void doDeselectItem() { this.searchResultsSelectedAccountIds.remove(this.contextItem); }
    
	public Integer getSelectedCount() { return this.searchResultsSelectedAccountIds.size(); }
    
	public void doNext()
	{
		if(this.sscAccounts.getHasNext())
		{
			setSelectedAccountsOnPageChange(this.accountSearchResultsCurrentPage, this.searchResultsSelectedAccountIds);
			this.sscAccounts.next();
			this.accountSearchResultsCurrentPage = constructCurrentPageAccountSearchResultWrapperList();
			headerCheckbox = false;
		}
	}
    public void doPrevious()
	{
		if(this.sscAccounts.getHasPrevious())
		{
			setSelectedAccountsOnPageChange(this.accountSearchResultsCurrentPage, this.searchResultsSelectedAccountIds);
			this.sscAccounts.previous();
			this.accountSearchResultsCurrentPage = constructCurrentPageAccountSearchResultWrapperList();
			headerCheckbox = false;
		}
	}
    public Boolean getHasPrevious() { if (this.sscAccounts == null) { return false; } else { return this.sscAccounts.getHasPrevious(); } }
    public Boolean getHasNext() { if (this.sscAccounts == null) { return false; } else { return this.sscAccounts.getHasNext(); } }
    public Integer getPageNumber() { if (this.sscAccounts == null) { return 0; } else { return this.sscAccounts.getPageNumber(); } }
    public Integer getPageSize() { if (this.sscAccounts == null) { return 0; } else { return this.sscAccounts.getPageSize(); } }
	public Integer getTotalPages() { if (this.sscAccounts == null) { return 0; } else { Decimal totalSize = this.sscAccounts.getResultSize(); Decimal pageSize = this.sscAccounts.getPageSize(); Decimal pages = totalSize/pageSize; return (Integer)pages.round(System.RoundingMode.CEILING); } }
    public Integer getTotalRecordCount() { if (this.sscAccounts == null) { return 0; } else { return this.sscAccounts.getResultSize(); } }
	
	public Integer getPageFirstRecordNumber()
	{
		if (this.sscAccounts == null) { return 0; }
		else if (getPageNumber() == 1) { return 1; }
		else { return ((getPageNumber() - 1) * getPageSize()) + 1; }
	}
	public Integer getPageLastRecordNumber()
	{
		if (this.sscAccounts == null) { return 0; }
		else if (getTotalRecordCount() <= getPageSize())
		{
			return getTotalRecordCount();
		}
		else if (getTotalRecordCount() > (getPageNumber() * getPageSize()))
		{
			return getPageNumber() * getPageSize();
		}
		else
		{
			return 	getTotalRecordCount();
		}
	}
	
	public void setSelectedAccountsOnPageChange(List<AccountSearchResultWrapper> accountsSearchResults, Set<Id> selectedAccountIds)
	{
		if (accountsSearchResults == null) { return; }
		if (selectedAccountIds == null) { selectedAccountIds = new Set<Id>(); }
		
		for (AccountSearchResultWrapper asrw: accountsSearchResults)
		{
			if (asrw.selected) { selectedAccountIds.add(asrw.Account.Id); }
			else { selectedAccountIds.remove(asrw.Account.Id); }
		}
	}
	
	public Boolean isHouseAccountUser(String userFullName, String userTitle)
	{
		if (userFullName == 'HAEAR' || userFullName == 'HAWER' || userFullName == 'HACER' 
			|| (userTitle != null && userTitle.startsWithIgnoreCase('House Accounts'))) { return true; }
		else { return false; }
	}
    
    
    public Map<Id,Account_Reassignment__c> findConflictingInProgressAccountReassignments(List<Account> accounts)
    {
        Set<Id> accountIds = new Set<Id>();
        
        for (Account a: accounts) { accountIds.add(a.Id); }
        
        List<Account_Reassignment__c> conflictingInProgressAccountReassignments = [
			SELECT 	Id, Name, Account__c
            FROM 	Account_Reassignment__c
            WHERE 	Account__c IN :accountIds
			  AND	Status__c IN ('Pending Approval','Approved')];
        
        Map<Id,Account_Reassignment__c> conflictingInProgressAccountReassignmentsMap = new Map<Id,Account_Reassignment__c>();
        for (Account_Reassignment__c ar: conflictingInProgressAccountReassignments)
        {
            conflictingInProgressAccountReassignmentsMap.put(ar.Account__c, ar);
        }
        return conflictingInProgressAccountReassignmentsMap;
    }
    
    //Wrapper Classes
    public class AccountSearchResultWrapper
    {
        public Account account{get; set;}
        public Boolean selected{get; set;}
        public Boolean disabled{get; set;}
        public String hoverText{get; set;}
        public String notificationImageUrl{get; set;}
		public String conflictingAccountReassignmentId{get; set;}
        
        public AccountSearchResultWrapper(Account a)
        {
            this.account = a;
            this.selected = false;
            this.disabled = false;
            this.hoverText = '';
            this.notificationImageUrl = '';
			this.conflictingAccountReassignmentId = '';
        }
        /*
        public AccountSearchResultWrapper(Account a, Boolean dis)
        {
            this.account = a;
            this.selected = false;
            this.disabled = dis;
            this.hoverText = '';
            this.notificationImageUrl = '';
			this.conflictingAccountReassignmentId = '';
        }
        
        public AccountSearchResultWrapper(Account a, Boolean dis, String hoverText)
        {
            this.account = a;
            this.selected = false;
            this.disabled = dis;
            this.hoverText = hoverText;
            this.notificationImageUrl = '';
			this.conflictingAccountReassignmentId = '';
        }*/
    }
    
    public class SelectedAccountForReassignmentWrapper
    {
        public Account_Reassignment__c accountReassignment{get; set;}
        public Boolean selected{get; set;}
		public String customerShipTo{get; set;}
		public Decimal rolling12MonthSales{get; set;}
		public String currentOwnerDistrict{get; set;}
		public String newOwnerDistrict{get; set;}
        
        public SelectedAccountForReassignmentWrapper(Account_Reassignment__c ar)
        {
            this.accountReassignment = ar;
            this.selected = false;
        }
		
		public SelectedAccountForReassignmentWrapper(Account_Reassignment__c ar, String custShipTo, Decimal rolling12MoSales, String coDistrict, String noDistrict)
        {
            this.accountReassignment = ar;
            this.selected = false;
			this.customerShipTo = custShipTo;
			this.rolling12MonthSales = rolling12MoSales;
			this.currentOwnerDistrict = coDistrict;
			this.newOwnerDistrict = noDistrict;
        }
    }
	
	public static List<Account_Reassignment__c> getAccountReassignmentsFromWrapperList(List<SelectedAccountForReassignmentWrapper> wrapperList)
	{
		List<Account_Reassignment__c> accountReassignments = new List<Account_Reassignment__c>();
		
		for (SelectedAccountForReassignmentWrapper wrapper : wrapperList)
		{
			accountReassignments.add(wrapper.accountReassignment);
		}
		
		return accountReassignments;
	}
	
	public static Set<Id> getApproverIdsFromWrapperList(List<SelectedAccountForReassignmentWrapper> wrapperList)
	{
		Set<Id> uniqueApproverIdList = new Set<Id>();
		
		for (SelectedAccountForReassignmentWrapper wrapper : wrapperList)
		{
			if (wrapper.accountReassignment.Current_Owner_Manager__c != null && wrapper.accountReassignment.Current_Owner_Manager_Approval__c != 'Approved') { uniqueApproverIdList.add(wrapper.accountReassignment.Current_Owner_Manager__c); }
			if (wrapper.accountReassignment.Current_Owner_RSD__c != null && wrapper.accountReassignment.Current_Owner_RSD_Approval__c != 'Approved') { uniqueApproverIdList.add(wrapper.accountReassignment.Current_Owner_RSD__c); }
			if (wrapper.accountReassignment.New_Owner_Manager__c != null && wrapper.accountReassignment.New_Owner_Manager_Approval__c != 'Approved') { uniqueApproverIdList.add(wrapper.accountReassignment.New_Owner_Manager__c); }
			if (wrapper.accountReassignment.New_Owner_RSD__c != null && wrapper.accountReassignment.New_Owner_RSD_Approval__c != 'Approved') { uniqueApproverIdList.add(wrapper.accountReassignment.New_Owner_RSD__c); }
		}
		
		return uniqueApproverIdList;
	}
}