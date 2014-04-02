public with sharing class User_Utilities
{
    
     public static void UserProcess(List <User >objs, Map <Id, User >oldMap, Boolean bInsert) {
      //2014-01-22 Kathy Miller:
      // - Bulkified the code
      // - Removed error message when Manager is not found by PerNr
      // - Changed to look at UserType on the User record instead of having to look up the profile to find it
      //2014-03-13 K Miller - rebulkified code that had been duplicated during conflicting deployments
 
        //Get Trigger control to determine which parts of code will execute
        Trigger_Controls__c TC = Trigger_Controls__c.getInstance();        
        Map <string , Id >ManagerUserIdsByPerNr;
        Id ManagerId;          
        
         //Create Map of all managers referenced by ManagerPerNr in this batch of users, mapping from the manager's PerNr to their user id
         if (TC.User_s_Manager__c == true) {   
            // first create a Set of all Manager PerNrs from this batch of users
            Set<string> ManagerPerNrs = new Set<string>();
            for (User u : objs)
                 if (u.ManagerPerNr__c != null)
                     ManagerPerNrs.add(u.ManagerPerNr__c);
            // ... and now map these PerNrs to their user id = the user id of the manager
            ManagerUserIdsByPerNr = new Map<string,id>();
            For (User manager : [Select PerNr__c,Id from User where PerNr__c in :ManagerPerNrs])
                 ManagerUserIdsByPerNr.put(manager.PerNr__c, manager.Id);
         }
         
        // Loop through the incoming records
        for (User obj :objs) {
            
            //1. COUNTRY & STATE - GIAM has to update the "Integrated" versions since they use non-standard values. Then this code
            // looks up valid values in Custom Settings
            String oldIntegratedCountry;
            String oldIntegratedState;
            if (!bInsert) {
                oldIntegratedCountry = oldmap.get(obj.id).IntegratedCountry__c;
                oldIntegratedState = oldmap.get(obj.id).IntegratedState__c;
            }
            obj.CountryCode = SharedMethods.getCountry(oldIntegratedCountry, obj.IntegratedCountry__c, obj.CountryCode);
            obj.StateCode = SharedMethods.getState(oldIntegratedState, obj.IntegratedState__c, oldIntegratedCountry, obj.IntegratedCountry__c, obj.CountryCode, obj.StateCode);
            
           //2. A couple permissions that GIAM doesn't update - Offline & Mobile Users            
            if (TC.Giam_Trigger__c == true) {    
                if (obj.UserType == 'Standard') {
                    obj.UserPermissionsOfflineUser = true;
                    obj.UserPermissionsMobileUser = true;
                }
            }
            
            //3. Update User's Manager, from the Manager PerNr sent over from GIAM            
            if (TC.User_s_Manager__c == true)    
                obj.ManagerId = ManagerUserIdsByPerNr.get(obj.ManagerPerNr__c);
        }
    }

    public static void UserAfterProcess(List<User> objs){

        //Get Trigger control to determine which parts of code will execute
        Trigger_Controls__c TC = Trigger_Controls__c.getInstance();
     
        // Loop through the incoming records
        for (User obj : objs)  {

            if (TC.Check_Duplicate_Alias__c == true && objs.size() == 1) {    
                //xxxxx alias created from GIAM is OK to have duplicates. Others are not OK.                
                if(obj.Alias != 'xxxxx'){
                    //If count is greater than 1 there is a duplicate.  After insert includes the current User alias                    
                    Integer i = [ select count() from User where Alias = :obj.Alias];                                       
                    if (i > 1){
                        obj.alias.addError('A User with this Alias already exists!');
                    }   
                }
            }
        }
    }
 
    public static void UserBeforeInsert(List<SObject> users)
    {
        UserProcess((List<User>)users, null, true);
    }

    public static void UserBeforeUpdate(List<SObject> users, Map<Id, SObject> oldMap)
    {
        UserProcess((List<User>)users, (Map<Id, User>)oldMap, false);   
    }

    public static void UserAfterInsert(List<SObject> users)
    {
        UserAfterProcess((List<User>)users);
    }

    public static void UserAfterUpdate(List<SObject> users, Map<Id, SObject> oldMap)
    {
        UserAfterProcess((List<User>)users);   
    }
}