public with sharing class AccountReassignment_Utilities
{
	public static void AccountReassignmentAfterUpdate(List<sObject> accountReassignments, Map<Id, sObject> oldMap)
	{
		SetNewOwnerForProspectAccountsOnApproved((List<Account_Reassignment__c>)accountReassignments, (Map<Id, Account_Reassignment__c>)oldMap);
	}
	
	public static void SetNewOwnerForProspectAccountsOnApproved(List<Account_Reassignment__c> accountReassignments, Map<Id, Account_Reassignment__c> oldMap)
	{
		List<Account> accountsToUpdateOwner = new List<Account>();
		
		for (Account_Reassignment__c ar : accountReassignments)
		{
			//Account is Prospect and Status__c changed to Approved
			if (ar.Account_Type__c == 'Prospect' && ar.Status__c == 'Approved' && oldMap.get(ar.Id).Status__c != 'Approved')
			{
				accountsToUpdateOwner.add(new Account(Id = ar.Account__c, OwnerId = ar.New_Owner__c));
			}
		}
		
		if (accountsToUpdateOwner.size() > 0) { Database.update(accountsToUpdateOwner); }
	}
}