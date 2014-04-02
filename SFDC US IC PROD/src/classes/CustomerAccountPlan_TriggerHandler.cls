public with sharing class CustomerAccountPlan_TriggerHandler extends TriggerFactoryHandlerBase
{
	public override void OnBeforeInsert(List<SObject> newMappings)
	{
		CustomerAccountPlan_Utilities.BeforeInsert(newMappings);
	}

	public override void OnBeforeUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingNewMap)
	{
		CustomerAccountPlan_Utilities.BeforeUpdate(oldMappings, updatedMappings);
	}
}