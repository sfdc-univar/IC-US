@isTest
public with sharing class TriggerFactory_Test {
	private static testMethod void TriggerFactory_getHandler_ReturnsDefaultHandler() {
		//INSERT
		ITrigger insertHandler = TriggerFactory.getHandler(null, new List<Account>{new Account(Name='Test')});
		System.Assert(insertHandler!=NULL, 'Handler Should not be null');
		//UPDATE
		ITrigger updateHandler = TriggerFactory.getHandler(new List<Account>{new Account(Name='Test')}, new List<Account>{new Account(Name='Test')});
		System.Assert(updateHandler!=NULL, 'Handler Should not be null');
		//DELETE
		ITrigger deleteHandler = TriggerFactory.getHandler(new List<Account>{new Account(Name='Test')}, null);
		System.Assert(deleteHandler!=NULL, 'Handler Should not be null');
	}
	
	private static testmethod void TriggerFactory_testInsertUpdateDelete_Succeeds()
	{
		Account testAccount = new Account(Name = 'Test');
		insert testAccount;
		testAccount = [select Id, Name from Account where Name = 'Test' LIMIT 1];
		system.assert(testAccount != null, 'testAccount should not equal null: ' + testAccount);
		testAccount.Name = 'Testier Account';
		update testAccount;
		testAccount = [select Id, Name from Account where Name = 'Testier Account' LIMIT 1];
		system.assert(testAccount != null, 'testAccount should not equal null: ' + testAccount);
		system.assert(testAccount.Name == 'Testier Account', 'testAccount Name should have been updated: ' + testAccount.name);
		delete testAccount;
		List<Account> accts = [select Id From Account];
		system.assert(accts.size() == 0, 'should not have returned any accounts: ' + accts.size());
	}
}