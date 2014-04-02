trigger Opportunity_Trigger on Opportunity bulk (before insert,after insert,before update,after update,before delete,after delete) 
{
	TriggerFactory.CreateHandler();
}