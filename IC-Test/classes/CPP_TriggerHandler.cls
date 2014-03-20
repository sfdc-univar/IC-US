public with sharing class CPP_TriggerHandler extends TriggerFactoryHandlerBase
{
    public override void OnBeforeInsert(List<SObject> newMappings)
    {
        CPP_Utilities.CPPBeforeInsert(newMappings);
    }
    
    public override void OnBeforeUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingNewMap)
    {
        CPP_Utilities.CPPBeforeUpdate(updatedMappings, mappingOldMap);
    }
}