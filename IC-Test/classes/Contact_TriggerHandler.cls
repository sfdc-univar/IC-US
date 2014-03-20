public with sharing class Contact_TriggerHandler extends TriggerFactoryHandlerBase
{
	public override void OnBeforeInsert(List<SObject> newMappings)
	{
		Contact_Utilities.ContactBeforeInsert(newMappings);
	}
    
    public override void OnBeforeUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingNewMap)
	{
		Contact_Utilities.ContactBeforeUpdate(updatedMappings, mappingOldMap);
	}
}