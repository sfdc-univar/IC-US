@isTest(SeeAllData=true)
    public class testFindNearby {
    		
    static testMethod void testFindNearby() {
    @RemoteAction
 	ApexPages.StandardSetController controller;
       PageReference findTest = new PageReference('FindNearbyWarehousesPage');
       
	   Test.setCurrentPage(findTest); 
	   //findTest.getParameters().put('lat', '37.783900');
       //findTest.getParameters().put('lon', '-122.389332');
       String lat = '37.783900';
       String lon = '-122.389332';
       FindNearby.getNearby(lat,lon);
    }
    static testMethod void testFindNearbyNulls(){
    	@RemoteAction
    	PageReference findTest = new PageReference('FindNearbyWarehousesPage');
    	       
	   Test.setCurrentPage(findTest); 
       String lat = '';
       String lon = '';
       FindNearby.getNearby(lat,lon);
    	
    }
}