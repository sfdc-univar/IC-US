public with sharing class SampleRequest_TriggerHandler extends TriggerFactoryHandlerBase
{
	public override void OnBeforeInsert(List<SObject> newMappings)
	{
		SampleRequest_Utilities.SampleRequestBeforeInsert(newMappings);
	}
    
    public override void OnBeforeUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingNewMap)
	{
		SampleRequest_Utilities.SampleRequestBeforeUpdate(updatedMappings, mappingOldMap);
	}
}