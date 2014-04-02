public with sharing class TriggerFactory {
/**  
  * Class TriggerFactory  
  * Used to instantiate and execute Trigger Handlers associated with sObjects.  
 */ 
 	//If we want to create/update objects in Test classes, we can use this flag to insert the core records without logic running on them, 
 	//then change the flag back
	private static Map<String, Trigger_Overrides__c> triggerOverrides = new Map<String, Trigger_Overrides__c>();
	private static Boolean byPassTrigger = false;
	private static String sObjectName;
 	public static void createHandler()
    {  
		//System.debug('In CreateHander()');
		triggerOverrides = Trigger_Overrides__c.GetAll();
        // Get a handler appropriate to the object being processed  
        ITrigger handler = getHandler(Trigger.old, Trigger.new);  
		//check to see if trigger has been disabled via the custom setting
		Trigger_Overrides__c tAll = triggerOverrides.get('AllTriggers_Enabled');
		byPassTrigger = byPassTrigger ? true : (tAll != null && !tAll.Trigger_Enabled__c);
        if(!byPassTrigger) { 
        	execute(handler);
			System.debug('Executing Handler for object: ' + sObjectName);
        }
		else {
			System.debug('Not executing handler for object: ' + sObjectName);
		}
    }
    
    //private static method to control the execution of the handler  
    private static void execute(ITrigger handler)
    {
        if(Trigger.isBefore)
        {
            // Call the bulk before to handle any caching of data and enable bulkification 
            handler.BulkBefore();
            
            // Call the beforeDelete method of the handler
            if(Trigger.isDelete)
            {
                handler.OnBeforeDelete(Trigger.old, Trigger.oldMap);                
            }
            
            // Call the beforeInsert method of the handler
            if(Trigger.isInsert)
            {               
                handler.OnBeforeInsert(Trigger.new);                
            }
            
            //Call the beforeUpdate method of the handler
            if(Trigger.isUpdate)
            {               
                handler.OnBeforeUpdate(Trigger.old, Trigger.new, Trigger.oldMap, Trigger.newMap);
            }
        }
        else if(Trigger.isAfter)
        {
            // Call the bulk before to handle any caching of data and enable bulkification 
            handler.BulkAfter();
            
            // Call the afterDelete method of the handler
            if(Trigger.isDelete)
            {
                handler.OnAfterDelete(Trigger.old, Trigger.oldMap);             
            }
            
            // Call the afterinsert method of the Handler
            if(Trigger.isInsert)
            {               
                handler.OnAfterInsert(Trigger.new);         
            }
            
            // call the afterUpdate method of the handler
            if(Trigger.isUpdate)
            {
                handler.OnAfterUpdate(Trigger.old, Trigger.new, Trigger.oldMap, Trigger.newMap);        
            }
        }
        else if(Trigger.isUnDelete)
        {
            handler.OnUnDelete(Trigger.new);            
        }
        
        //call the cleaup method
        handler.cleanUp();
    }
    
    @testVisible
	// For this to work on any trigger you create your handler class must be the object name
	// underscores removed with _TriggerHandler appended on the end of the name
	// Example:
	// Object Name: Sample_Request__c
	// Handler class name: SampleRequest_TriggerHandler
    private static ITrigger getHandler(List<sObject> oldList, List<sObject> newList)  
    {  
        
        if(newList!=NULL && newList[0]!=NULL) {
        	sObjectName = newList[0].getSObjectType().getDescribe().getName();
        }
        else {
        	sObjectName = oldList[0].getSObjectType().getDescribe().getName();
        }
        sObjectName = sObjectName.replaceAll('__c', '');
		sObjectName = sObjectName.replaceAll('_', '');
		
		// check to see if this objects trigger is enabled or disabled via the custom setting.
		// Naming convention must be as follows
		// Object name: Sample_Request__c
		// Custom Setting Record Name in Trigger_Overrides__c: SampleRequest_Enabled
		Trigger_Overrides__c tOverride = triggerOverrides.get(sObjectName + '_Enabled');
		byPassTrigger = (tOverride != null && !tOverride.Trigger_Enabled__c);
		System.debug('byPassTrigger: ' + byPassTrigger);
		System.debug('tOverride: ' + tOverride);
		System.debug('sObjectName: ' + sObjectName + '_Enabled');
        
        ITrigger handler = null;
        Type t = Type.forName(sObjectName + '_TriggerHandler');
        if(t==null) {
        	//create instance of the default class
        	t = Type.forName('TriggerFactoryHandlerBase');
        }
        handler = (ITrigger) t.newInstance();
        handler.setParameters(Trigger.isExecuting, Trigger.size);
        return handler;  
    }    
}