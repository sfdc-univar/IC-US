public with sharing class CoachingWorksheet_TriggerHandler extends TriggerFactoryHandlerBase
{
	public override void OnBeforeInsert(List<SObject> newMappings)
	{
		CoachingWorksheet_Utilities.BeforeInsert(newMappings);
	}
	
	public override void OnBeforeUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingNewMap)
	{
		CoachingWorksheet_Utilities.BeforeUpdate(updatedMappings);
	}
    
    public override void OnAfterInsert(List<SObject> newMappings)
	{
		CoachingWorksheet_Utilities.PreventDuplicateCoachingWorksheets(newMappings);
	}
	
    public override void OnAfterUpdate(List<SObject> oldMappings, List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingMap)
	{
		CoachingWorksheet_Utilities.PreventDuplicateCoachingWorksheets(updatedMappings);
	}
}