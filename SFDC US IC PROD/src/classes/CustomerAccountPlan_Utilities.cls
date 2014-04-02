public with sharing class CustomerAccountPlan_Utilities
{
	public static void BeforeInsert(List<SObject> updatedMappings)
	{
		CAPGetSalesManager((List<Customer_Account_Plan__c>)updatedMappings);
	}
	
	public static void BeforeUpdate(List<SObject> oldMappings, List<SObject> updatedMappings)
	{
		CAPGetSalesManager((List<Customer_Account_Plan__c>)updatedMappings);
		CloneCAP((List<Customer_Account_Plan__c>)oldMappings);
	}
	
	public static void CAPGetSalesManager(List<Customer_Account_Plan__c> updatedMappings)
	{
		//2013-06-05 K Miller - created

	    // Loop through the incoming records    
	    for (Customer_Account_Plan__c cap : updatedMappings) {
	            
	        string SMId = cap.Sales_Manager_Id__c;
	        
	        if (string.isBlank(SMId) ) {
	           cap.SMLink__c = null;
	           cap.SMName__c = '';        
	        } 
	        else {
	            
	            SMId = 'i' + cap.Sales_Manager_Id__c;                        
	            try {
	                List <User> SM = [select id, name from User where alias = :SMId];  
	                if (SM.isempty()) {
	                    cap.SMLink__c = null; 
	                    cap.SMName__c = cap.Sales_Manager__c + ' (' + SMId + ') - alias not in SFDC';
	                    //cap.SMName__c = cap.Sales_Manager__c;
	                } 
	                else {
	                    cap.SMLink__c = SM[0].Id; 
	                    cap.SMName__c = SM[0].Name;
	                }
	           // } catch (DMLException e){
	            } finally {
	                  //exception
	            }
	        }     
	    }	
	}
	
	public static void CloneCAP(List<Customer_Account_Plan__c> oldMappings)
	{
		Map <String , Schema.SObjectField >capFieldMap = Schema.SObjectType.Customer_Account_Plan__c.fields.getMap();
		Map <String , Schema.SObjectField >historyFieldMap = Schema.SObjectType.Customer_Account_Plan_History__c.fields.getMap();
		Customer_Account_Plan_History__c []clonedCapList = new Customer_Account_Plan_History__c []{};
		for (Customer_Account_Plan__c oldCap : oldMappings) 
		{
			Integer rh = [SELECT COUNT() FROM Customer_Account_Plan_History__c WHERE Customer_Account_Plan__c = :oldCap.Id];
			String rev = String.valueOf(rh + 1);
			Customer_Account_Plan_History__c clonedCap = new Customer_Account_Plan_History__c();
			clonedCap.Name = 'Revision: '+ rev;
			clonedCap.Customer_Account_Plan__c = oldCap.Id;
			clonedCap.Owner_Name__c = oldCap.Owner_Name__c;
			clonedCap.Net_Readiness__c = oldCap.Net_Readiness_Score__c;
			for (String capFieldName :capFieldMap.keySet()) 
			{
				for (String historyFieldName :historyFieldMap.keySet()) 
				{
					String strHist = historyFieldName.substringBeforeLast('__');
					if (capFieldName.startsWith(strHist)&&capFieldName != 'Id'&&capFieldName != 'Name') 
					{
						//System.debug('****** MATCH!!!   HISTORY: ' + historyFieldName + ' ~~~~~~~~~~~~~~ CAPFIELD: ' + capFieldName);
						// Check if history field is actually writeable (controlled by field security)   
						Schema.SObjectField field = historyFieldMap.get(historyFieldName);
						Schema.DescribeFieldResult fieldResult = field.getDescribe();
						if (fieldResult.isUpdateable()) {
							//system.debug('***** UPDATEABLE FIELD!! *****');
							clonedCap.put(historyFieldName, oldCap.get(capFieldName));
						}
						//else system.debug(' **** NOT updateable **** ');
					}
				}
			}
			clonedCapList.add(clonedCap);
		}
		insert clonedCapList;
	}
}