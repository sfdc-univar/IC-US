global with sharing class AccountReassignmentBatch implements Database.Batchable<sObject>
{
   global String query { get; set; }
  
   global AccountReassignmentBatch()
   {
        this.query = 'Select a.Status__c, a.OwnerId, a.New_Owner_RSD__c, a.New_Owner_RSD_Approval__c, '
                        + 'a.New_Owner_Manager__c, a.New_Owner_Manager_Approval__c, '
                        + 'a.Current_Owner_RSD__c, a.Current_Owner_RSD_Approval__c, '
                        + 'a.Current_Owner_Manager__c, a.Current_Owner_Manager_Approval__c '
                        + 'FROM Account_Reassignment__c a WHERE Status__c = \'Pending Approval\'';
   }

   global Database.QueryLocator start(Database.BatchableContext BC)
   {
      return Database.getQueryLocator(query);
   }

   global void execute(Database.BatchableContext BC, 
                       List<Account_Reassignment__c> accountReassignments)
   {
      Set<Id> usersToNotify = new Set<Id>();
      for(Account_Reassignment__c accountReassignment : accountReassignments)
      {
            if(accountReassignment.New_Owner_RSD_Approval__c == 'Pending')
            {
            	usersToNotify.add(accountReassignment.New_Owner_RSD__c);
            }
            if(accountReassignment.New_Owner_Manager_Approval__c == 'Pending')
            {
                usersToNotify.add(accountReassignment.New_Owner_Manager__c);
            }
            if(accountReassignment.Current_Owner_RSD_Approval__c == 'Pending')
            {
                usersToNotify.add(accountReassignment.Current_Owner_RSD__c);
            }
            if(accountReassignment.Current_Owner_Manager_Approval__c == 'Pending')
            {
                usersToNotify.add(accountReassignment.Current_Owner_Manager__c);
            }                        
      }
      String emailTemplateName = 'Account_Reassignments_Awaiting_Approval';       
      EmailHelper.sendAccountReassignmentNotificationEmails(usersToNotify, emailTemplateName);
   }

   global void finish(Database.BatchableContext BC)
   {

   }
   
   global static void runBatch() 
   {
        AccountReassignmentBatch batch = new AccountReassignmentBatch();
        Database.executeBatch(batch, 100);
    }
}