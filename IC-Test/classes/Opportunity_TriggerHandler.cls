public with sharing class Opportunity_TriggerHandler extends TriggerFactoryHandlerBase
{
	public override void OnBeforeInsert(List<SObject> newMappings)
	{
		Opportunity_Utilities.OpportunityBeforeInsert(newMappings);
	}
    
    public override void OnBeforeUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingNewMap)
	{
		Opportunity_Utilities.OpportunityBeforeUpdate(updatedMappings, mappingOldMap);
	}

	public override void OnAfterInsert(List<SObject> newMappings)
	{
		Opportunity_Utilities.OpportunityAfterInsert(newMappings);
	}
    
    public override void OnAfterUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingMap)
	{
		Opportunity_Utilities.OpportunityAfterUpdate(updatedMappings, mappingOldMap, mappingMap);
	}
}