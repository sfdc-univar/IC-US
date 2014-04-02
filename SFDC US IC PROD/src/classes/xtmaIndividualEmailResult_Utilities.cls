public with sharing class xtmaIndividualEmailResult_Utilities
{
	private static void UpdateEmailResultSummaryTotals(List<xtma_Individual_Email_Result__c> objects, Boolean bInsert)
	{
			// Add IER records to ERS records
	    if( bInsert ) {
			Set<Id> ids = new Set<Id>();
			for(xtma_Individual_Email_Result__c x : objects)
				ids.add(x.Id);
	                        
	        EmailSummaryController.updateEmailResultSummaryRecord( ids );
	        
	    }
	    
	    // Create set of unique ERS records to update
	    Set<Id> ersIds = new Set<Id>();
	    for( xtma_Individual_Email_Result__c emailResult : objects ) {
	        
	        if( emailResult.emailResultSummary__c != null ) ersIds.add( emailResult.emailResultSummary__c );
	        
	    }
	    
	    if( ersIds.size() > 0 ) {
	        
	        List<Id> ids = new List<Id>();
	        for( Id ersId : ersIds ) {
	            ids.add( ersId );
	        }
	        
	        EmailSummaryController.updateEmailResultSummaryTotals( ids );
	        
	    }
	}
	
	public static void AfterInsert(List<SObject> objects)
	{
		UpdateEmailResultSummaryTotals((List<xtma_Individual_Email_Result__c>)objects, true);
	}
	
	public static void AfterUpdate(List<SObject> objects)
	{
		UpdateEmailResultSummaryTotals((List<xtma_Individual_Email_Result__c>)objects, false);
	}
}