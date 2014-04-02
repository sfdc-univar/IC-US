public with sharing class User_TriggerHandler extends TriggerFactoryHandlerBase
{
    public override void BulkBefore(){
        
    }   


    public override void OnBeforeInsert(List<SObject> newMappings)
    {
        User_Utilities.UserBeforeInsert(newMappings);
    }
    
    public override void OnBeforeUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingNewMap)
    {
        User_Utilities.UserBeforeUpdate(updatedMappings, mappingOldMap);
    }

    public override void OnAfterInsert(List<SObject> newMappings)
    {
        User_Utilities.UserAfterInsert(newMappings);
    }
    
    public override void OnAfterUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingMap)
    {
        User_Utilities.UserAfterUpdate(updatedMappings, mappingOldMap);
    }
}