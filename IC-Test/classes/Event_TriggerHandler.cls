public with sharing class Event_TriggerHandler extends TriggerFactoryHandlerBase
{
	public override void OnBeforeInsert(List<SObject> newMappings)
	{
		Event_Utilities.EventBeforeInsert(newMappings);
	}
    
    public override void OnBeforeUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingNewMap)
	{
		Event_Utilities.EventBeforeUpdate(updatedMappings, mappingOldMap);
	}

}