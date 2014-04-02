public with sharing class Lead_TriggerHandler extends TriggerFactoryHandlerBase
{
	public override void OnBeforeInsert(List<SObject> newMappings)
	{
		Lead_Utilities.LeadBeforeInsert(newMappings);
	}
    
    public override void OnBeforeUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingNewMap)
	{
		Lead_Utilities.LeadBeforeUpdate(updatedMappings, mappingOldMap);
	}
}