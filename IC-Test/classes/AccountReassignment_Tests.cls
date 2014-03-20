@isTest
public with sharing class AccountReassignment_Tests
{
	public static testmethod void testSetNewOwnerForProspectAccountsOnApproved()
	{
		RecordType accountRecordTypeShipTo = [SELECT Id FROM RecordType WHERE SobjectType = 'Account' AND DeveloperName = 'Prospect' AND IsActive = true LIMIT 1];
		System.assert(accountRecordTypeShipTo != null, 'No Prospect Record Type found.');
		
		List<User> testUsers = [SELECT Id, Name FROM User WHERE IsActive = true LIMIT 2];
		
		Account a = new Account(
			  Name = 'testAccount'
			, RecordTypeId = accountRecordTypeShipTo.Id
			, ShipToNumber__c = '125'
			, OwnerId = testUsers[0].Id
		);
		Database.insert(a);
		
		Account_Reassignment__c ar = new Account_Reassignment__c(
			  Account__c = a.Id
			, Status__c = 'Pending Approval'
			, Current_Owner__c = testUsers[0].Id
			, New_Owner__c = testUsers[1].Id
		);
		Database.insert(ar);
		
		ar.Status__c = 'Approved';
		Database.update(ar);
		
		Account refreshedAccount = [SELECT Id, OwnerId FROM Account WHERE Id = :a.Id LIMIT 1];
		
		System.assertEquals(ar.New_Owner__c, refreshedAccount.OwnerId, 'Owner should have been changed.');
	}
}