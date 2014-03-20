public with sharing class Opportunity_RecordType {

public Opportunity_RecordType(ApexPages.StandardController controller) {
        
   
      } 
      public PageReference reDirect(){
      	PageReference reDirect = new PageReference('/setup/ui/recordtypeselect.jsp?ent=Opportunity');
      	return reDirect;
      }
      
}