public with sharing class CoachingWorksheet_Utilities
{
	public static void PreventDuplicateCoachingWorksheets(List<SObject> objects)
	{
		//Check for duplicates - can only have one Session Date per Direct Report
		//If count is greater than 1 there is a duplicate.  Need to use "After" insert so it will include the current record.

		//2012-09-04 K Miller - created

		// Loop through the incoming records
		for (CoachingWorksheet__c c : (List<CoachingWorksheet__c>)objects) {

			system.debug('DR firstName: ' + c.DirectReportNm__c);

			Integer i = [ select count() from CoachingWorksheet__c where SessionDate__c = :c.SessionDate__c
		            and DirectReport__c = :c.DirectReport__c ];
			if (i > 1) {
				c.SessionDate__c.addError('' + c.DirectReportNm__c + ' already has a worksheet for this Session Date.');
			}
		}
	}
	
	private static void UpdateCoachingWorksheet(List<SObject> objects, Boolean bInsert)
	{
		//2012-08-29 K Miller - created

	    // Loop through the incoming records
	    for (CoachingWorksheet__c c : (List<CoachingWorksheet__c>)objects	) {
	    
	        // New record - we assume the manager is the owner
	        if (bInsert) {
	               c.Manager__c = c.OwnerID;
	        }
	        
	        // After draft, ownership moves to the Direct Report
	        if (c.Status__c != 'Draft') {
	              c.OwnerID = c.DirectReport__c;
	        }
	        
	        // Has Owner changed?  If so update the link
	        if (c.OwnerID != c.OwnerLink__c) {
	         c.OwnerLink__c = c.OwnerId;
	        }
	    }
	}
	
	public static void BeforeInsert(List<SObject> objects)
	{
		UpdateCoachingWorksheet(objects, true);
	}
	
	public static void BeforeUpdate(List<SObject> objects)
	{
		UpdateCoachingWorksheet(objects, false);
	}
	
}