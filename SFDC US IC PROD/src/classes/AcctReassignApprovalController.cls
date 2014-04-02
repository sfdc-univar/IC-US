public with sharing class AcctReassignApprovalController 
{
    public List<ReassignWrap> ArWrappers { get; set; }
    public string RejectReason { get; set; }
    public Boolean ShowRejectReason { get; set; }
    public Boolean UpdateSuccess { get; set; }
    
	static final string statusPending = 'Pending Approval';
    static final string statusManagerApproval = 'Pending';
    static final string statusApprove = 'Approved';
    static final string statusReject = 'Rejected';
    
	private string newStatus;

    public AcctReassignApprovalController()
    {
        Id userId = UserInfo.getUserId();
        ArWrappers = new List<ReassignWrap>();
        //ErikH 2014.01.30 - Removed Effective Date from controller and apex page. No longer a needed field.
		//WBR Adding Owner.User_District__c by request from Rachel Kanter
        for (Account_Reassignment__c ar : [Select Account__c, Name, CreatedById, Current_Owner__c, Current_Owner__r.User_District__c
                                                , Current_Owner_Manager__c, Current_Owner_RSD__c, New_Owner__r.User_District__c
                                                , Current_Owner_Manager_Approval__c, Days_in_Pending_Approval_Status__c
                                                , New_Owner__c, New_Owner_Role__c, New_Owner_Manager__c, New_Owner_Manager_Approval__c
                                                , Current_Owner_RVP__c, New_Owner_RVP__c
												, Pending_Approval_Date__c, Status__c, Account__r.CustomerShipTo__c
                                                , Account__r.Name, Account__r.ShippingCity, Account__r.ShippingStateCode, Account__r.ShippingCountryCode
                                                , Account__r.AcornRolling12MoSales__c, Current_Owner_Role__c, New_Owner_RSD__c
												, Account__r.ShipToNumber__c
                                        FROM    Account_Reassignment__c
                                        WHERE   Status__c =: statusPending
                                        AND     ((Current_Owner_Manager_Approval__c =: statusManagerApproval 	AND Current_Owner_Manager__c =: userId)
										 OR		  (Current_Owner_RSD_Approval__c =: statusManagerApproval 		AND (Current_Owner_RSD__c =: userId OR Current_Owner_RVP__c =: userId))
										 OR		  (New_Owner_Manager_Approval__c =: statusManagerApproval 		AND New_Owner_Manager__c =: userId)
										 OR 	  (New_Owner_Manager_Approval__c =: statusManagerApproval		AND (New_Owner_RSD__c =: userId OR New_Owner_RVP__c =: userId)))])
        {
            ReassignWrap rw = new ReassignWrap(ar, false);
            ArWrappers.add(rw);
        }
        UpdateSuccess = false;
    }
    
    public PageReference Reject()
    {
        newStatus = statusReject;
        if (RejectReason == null)
        {
            // show reject reason textbox
            ShowRejectReason = true;
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Please enter a rejection reason below'));
        }
        else
        {
            ShowRejectReason = false;
            processSelected();
        }
        return null;
    }
	
	public PageReference RejectNew()
	{
		/*if (RejectReason == null)
		{
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Please enter a rejection reason below'));
			return null;
		}*/
		if (!hasSelectedNotYetUpdated()) { return null; }
		
		newStatus = statusReject;
		processSelected();
		displayPopup = false;
		return null;
	}
	
	public PageReference CancelReject()
	{
		displayPopup = false;
		return null;
	}

    public PageReference Approve()
    {
        newStatus = statusApprove;
        processSelected();
        return null;
    }
    
    public PageReference redirectToList() 
    {
        Schema.DescribeSObjectResult result = Account_Reassignment__c.SObjectType.getDescribe();
    
        PageReference pageRef = new PageReference('/' + result.getKeyPrefix());
        pageRef.setRedirect(true);
        return pageRef;
    }
	
	private Boolean hasSelectedNotYetUpdated()
	{
		for(ReassignWrap wrap: ArWrappers)
		{
			if (wrap.Selected == true && wrap.Updated == false) { return true; }
		}
		return false;
	}
	
    private void processSelected()
    {
        // create list of ARs to be populated with selected row objects
        List<Account_Reassignment__c> updateARs = new List<Account_Reassignment__c>();
		Id userId = UserInfo.getUserId();
		
        // cycle through list of cContacts and will check to see if the selected property is set to true, if it is we add the Contact to the selectedContacts list
        for(ReassignWrap wrap: ArWrappers) 
        {
            if (wrap.Selected == true && wrap.Updated == false) 
            {
                if (wrap.AcctReassign.Current_Owner_Manager__c == userId)
				{
					wrap.AcctReassign.Current_Owner_Manager_Approval__c = newStatus;
                	wrap.AcctReassign.Current_Owner_Manager_Approved_Date__c = Datetime.now();
				}
				
				if (wrap.AcctReassign.Current_Owner_RSD__c == userId || wrap.AcctReassign.Current_Owner_RVP__c == userId)
				{
					wrap.AcctReassign.Current_Owner_RSD_Approval__c = newStatus;
					wrap.AcctReassign.Current_Owner_RSD_Approved_Date__c = Datetime.now();
				}
				
				if (wrap.AcctReassign.New_Owner_Manager__c == userId)
				{
					wrap.AcctReassign.New_Owner_Manager_Approval__c = newStatus;
					wrap.AcctReassign.New_Owner_Manager_Approved_Date__c = Datetime.now();
				}
				
				if (wrap.AcctReassign.New_Owner_RSD__c == userId || wrap.AcctReassign.New_Owner_RVP__c == userId)
				{
					wrap.AcctReassign.New_Owner_RSD_Approval__c = newStatus;
					wrap.AcctReassign.New_Owner_RSD_Approved_Date__c = Datetime.now();
				}
				
				if (newStatus == statusReject)
				{
					wrap.AcctReassign.Rejection_Reason__c = RejectReason;
				}
				
				wrap.BackgroundColor = newStatus == statusApprove ? '#D6FFAD' : '#FFC2B2';  // ? #light green : #light red
				wrap.Updated = true;
				updateARs.add(wrap.AcctReassign);
            }
        }

        // Now we have our list of selected contacts and can perform any type of logic we want, sending emails, updating a field on the Contact, etc
        System.debug('These are the selected ARs...' + updateARs);
        Database.Saveresult[] saveResults = Database.update(updateARs);
        UpdateSuccess = true;
        for (Database.SaveResult sr: saveResults)
        {
            if (!sr.isSuccess())
            {
                UpdateSuccess = false;
            }
        }
    }

    public class ReassignWrap
    {
        public Account_Reassignment__c AcctReassign { get; set; }
        public Boolean Selected { get; set; }
		public String BackgroundColor { get; Set; }
		public Boolean Updated { get; Set; }
        
        public ReassignWrap(Account_Reassignment__c ar, Boolean sel)
        {
            AcctReassign = ar;
            Selected = sel;
			BackgroundColor = '';
			Updated = false;
        }
    }
	
	public boolean displayPopup {get; set;}     
    
    public void closePopup() {        
        displayPopup = false;    
    }     
    public void showPopup() {        
        if (!hasSelectedNotYetUpdated()) { return; }
		displayPopup = true;    
    }
}