public with sharing class ChemCare_TriggerHandler extends TriggerFactoryHandlerBase
{
 	public override void OnBeforeInsert(List<SObject> newMappings)
	{
		ChemCare_Utilities.WasteStreamBeforeInsert(trigger.new);
	}
    
    public override void OnBeforeUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingNewMap)
	{
		ChemCare_Utilities.WasteStreamBeforeUpdate(updatedMappings, mappingOldMap);
	}
}