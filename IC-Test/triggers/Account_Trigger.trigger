trigger Account_Trigger on Account bulk (before insert,after insert,before update,after update,before delete,after delete) 
{
	TriggerFactory.CreateHandler();
}