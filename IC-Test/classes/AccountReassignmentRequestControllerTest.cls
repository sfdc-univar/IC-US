@istest
public class AccountReassignmentRequestControllerTest
{
	public static testmethod void accountReassignmentRequestControllerTest()
	{
		RecordType accountRecordTypeShipTo = [SELECT Id FROM RecordType WHERE SobjectType = 'Account' AND DeveloperName = 'ShipTo' AND IsActive = true LIMIT 1];
		System.assert(accountRecordTypeShipTo != null, 'No ShipTo Record Type found.');
		
		Profile profile = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1];
		System.assert(profile != null, 'Should find a profile');
		
		
		
		/*
		User user1 = UnitTestHelper.createUser('talias', 'testLastName', profile.Id);
		User user2 = UnitTestHelper.createUser('talias2', 'testLastName', profile.Id);
		
		
		user1.PerNr__c = '12345';
		user2.PerNr__c = '5667';
		user1.ManagerId = user2.Id;
		user1.User_District__c = 'D1';
		user2.User_District__c = 'D2';
		
		Database.update(user1);
		Database.update(user2);
		*/


		
		//List<User> testUsers = [SELECT Id, Name FROM User WHERE IsActive = true AND PerNr__c != null AND ManagerId != NULL AND User_District__c != NULL LIMIT 2];
		//System.assertEquals(2,testUsers.size());
		User usr = [Select id from User where Id = :UserInfo.getUserId()];
 		Id subordinateId = null;
		Id managerId = null;
		
		System.RunAs(usr)
		{
			managerId = createTestUser(profile.Id, null, 'amgr', '12345');
			subordinateId = createTestUser(profile.Id, managerId, 'asubord', '67890');
		}
		
		System.RunAs(usr)
		{
			Test.startTest();
			createCustomDistrictSettings('67890');
			Test.stopTest();
		}
		
		/*
		CustomDistrict__c setting1 = new CustomDistrict__c(
			 RSD_PerNr__c = user2.PerNr__c
			,RVP_PerNr__c = user2.PerNr__c
			,Name = 'D1'
		);
		CustomDistrict__c setting2 = new CustomDistrict__c(
			 RSD_PerNr__c = user2.PerNr__c
			,RVP_PerNr__c = user2.PerNr__c
			,Name = 'D2'
		);
		Database.insert(setting1);
		Database.insert(setting2);*/
		
		/*Account testAccount = new Account(
			 Name = 'test'
			,RecordTypeId = accountRecordTypeShipTo.Id
		);*/
		Account a = new Account(
			  Name = 'testAccount'
			, RecordTypeId = accountRecordTypeShipTo.Id
			, ShipToNumber__c = '125'
			, OwnerId = subordinateId
		);
		Database.insert(a);
		//Database.insert(testAccount);
		
		//Account tAcct = UnitTestHelper.createAccount('TestAcct');
    	//system.assert(UnitTestHelper.accountSaveSuccess);
    	
    	AccountReassignmentRequestController controller = new AccountReassignmentRequestController();
    	controller.nameQuery = 'test';
    	System.assertEquals(accountRecordTypeShipTo.Id, controller.selectedAccountSearchByRecordTypes[0]);
    	
    	controller.getAccountSearchByOptions();
    	controller.getAccountSearchByRecordTypes();
    	controller.getRecordsPerPageOptions();
    	
    	controller.searchButtonClick();
    	
    	System.assertEquals(1, controller.sscAccounts.getResultSize(), 'Should get 1 result.');
    	
    	User newOwner = [SELECT Id, Name FROM User WHERE IsActive = true AND ManagerId != NULL AND User_District__c != NULL LIMIT 1];
    	controller.template = new Account_Reassignment__c();
    	controller.template.New_Owner__c = newOwner.Id;
    	controller.newOwnerLookupOnChange();
    	
    	controller.accountSearchResultsCurrentPage[0].Selected = true;
    	
    	controller.addButtonClick();
    	
    	controller.submitForApprovalButtonClick();
    	
    	Boolean isHouseAccount = controller.isHouseAccountUser('HAEAR', 'asdf');
    	Boolean isHouseAccount2 = controller.isHouseAccountUser('notHouse', 'asdf');
    	
    	controller.cancelButtonClick();
	}
	
	private static Id createTestUser(String profileId, Id managerId, String alias, String perNr)
	{
		User user = UnitTestHelper.createUser(alias, 'testLastName', profileId);
		//User user2 = UnitTestHelper.createUser(alias, 'testLastName', profileId);
		
		
		user.PerNr__c = perNr;
		//user2.PerNr__c = '5667';
		//user1.ManagerId = user2.Id;
		//user1.User_District__c = 'D1';
		//user2.User_District__c = 'D2';
		user.ManagerId = managerId;
		user.User_District__c = 'D1';
		
		Database.update(user);
		//Database.update(user2);
		
		return user.Id;
	}
	
	private static void createCustomDistrictSettings(String perNr)
	{
		CustomDistrict__c setting1 = new CustomDistrict__c(
			 RSD_PerNr__c = perNr
			,RVP_PerNr__c = perNr
			,Name = 'D1'
		);
		CustomDistrict__c setting2 = new CustomDistrict__c(
			 RSD_PerNr__c = perNr
			,RVP_PerNr__c = perNr
			,Name = 'D2'
		);
		Database.insert(setting1);
		Database.insert(setting2);
	}
}