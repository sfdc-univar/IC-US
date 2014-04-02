trigger SampleRequest_Trigger on SampleRequest__c bulk (before insert,after insert,before update,after update,before delete,after delete) 
{
	TriggerFactory.CreateHandler();
}