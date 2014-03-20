trigger Task_Trigger on Task bulk (before insert,after insert,before update,after update,before delete,after delete) 
{
	TriggerFactory.CreateHandler();
}