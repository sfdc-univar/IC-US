trigger Contact_Trigger on Contact bulk (before insert,after insert,before update,after update,before delete,after delete) 
{
	TriggerFactory.CreateHandler();
}