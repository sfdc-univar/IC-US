trigger Chemcare_Trigger on ChemCare__c bulk (before insert,after insert,before update,after update,before delete,after delete) 
{
    TriggerFactory.CreateHandler();
}