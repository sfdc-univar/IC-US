global with sharing class FindNearby {

    public FindNearby(ApexPages.StandardSetController controller) { }

    @RemoteAction
    // Find accounts nearest a geolocation
    global static List<Account> getNearby(String lat, String lon) {

        // If geolocation isn't set, use San Francisco
        if(lat == null || lon == null || lat.equals('') || lon.equals('')) {
            lat = '37.77493';
            lon = '-122.419416';
        }

        // SOQL query to get the nearest warehouses
        String queryString =
            'SELECT Id, Name, Location__Longitude__s, Location__Latitude__s, SalesOfficeName__c, Industry, LastActivityDate, ' +
            	'NumberofOpportunities__c, AcornRolling12MoSales__c, SICIndustryGroupName4__c,' +
                'ShippingStreet , ShippingPhone__c, ShippingCity, RecordType.DeveloperName, OwnerLink__r.Id , OwnerLink__r.Name ' +
            'FROM Account ' +
            'WHERE DISTANCE(Location__c, GEOLOCATION('+lat+','+lon+'), \'mi\') < 200 ' +
            'ORDER BY DISTANCE(Location__c, GEOLOCATION('+lat+','+lon+'), \'mi\') ' +
            'LIMIT 400';

        // Run and return the query results
   
        return(database.Query(queryString));
    }
}