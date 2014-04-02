public without sharing class Account_TriggerHandler extends TriggerFactoryHandlerBase
{
    public override void OnBeforeInsert(List<SObject> newMappings)
	{
		Account_Utilities.AccountBeforeInsert(trigger.new);
	}
    
    public override void OnBeforeUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingNewMap)
	{
		Account_Utilities.AccountBeforeUpdate(updatedMappings, mappingOldMap);
	}
	
	public override void OnAfterUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingNewMap)
	{
		Account_Utilities.AccountAfterUpdate(updatedMappings, mappingOldMap);
	}
}