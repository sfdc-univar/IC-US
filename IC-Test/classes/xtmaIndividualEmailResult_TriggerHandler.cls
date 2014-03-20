public with sharing class xtmaIndividualEmailResult_TriggerHandler extends TriggerFactoryHandlerBase
{
	public override void OnAfterInsert(List<SObject> newMappings)
	{
		xtmaIndividualEmailResult_Utilities.AfterInsert(newMappings);
	}
    
    public override void OnAfterUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingMap)
	{
		xtmaIndividualEmailResult_Utilities.AfterUpdate(updatedMappings);
	}

}