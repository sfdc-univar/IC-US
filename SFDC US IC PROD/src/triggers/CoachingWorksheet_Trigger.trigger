trigger CoachingWorksheet_Trigger on CoachingWorksheet__c bulk (before insert,after insert,before update,after update,before delete,after delete) 
{
	TriggerFactory.CreateHandler();
}