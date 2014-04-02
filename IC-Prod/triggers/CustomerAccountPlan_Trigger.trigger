trigger CustomerAccountPlan_Trigger on Customer_Account_Plan__c bulk (before insert,after insert,before update,after update,before delete,after delete) 
{
	TriggerFactory.CreateHandler();
}