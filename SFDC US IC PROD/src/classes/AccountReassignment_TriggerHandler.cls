public with sharing class AccountReassignment_TriggerHandler extends TriggerFactoryHandlerBase
{
	public override void OnAfterUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingNewMap)
	{
		AccountReassignment_Utilities.AccountReassignmentAfterUpdate(updatedMappings, mappingOldMap);
	}
}