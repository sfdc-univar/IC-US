trigger AccountReassignment_Trigger on Account_Reassignment__c bulk (before insert,after insert,before update,after update,before delete,after delete)
{
	TriggerFactory.CreateHandler();
}