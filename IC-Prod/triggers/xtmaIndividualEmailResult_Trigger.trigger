trigger xtmaIndividualEmailResult_Trigger on xtma_Individual_Email_Result__c bulk (before insert,after insert,before update,after update,before delete,after delete) 
{
	TriggerFactory.CreateHandler();
}