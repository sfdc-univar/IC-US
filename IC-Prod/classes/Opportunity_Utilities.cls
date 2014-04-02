public with sharing class Opportunity_Utilities
{
	public static void OpportunityTagContent(List<Opportunity> updatedMappings, Map<ID, Opportunity> mappingOldMap, Map<ID, Opportunity> mappingMap, Boolean bInsert)
	{
		String tagN;
		String fixTag;
		String prodTagFix;
		String oldTag;
		String prodTag;
		String industryTag;
		for (Opportunity o :updatedMappings ) {
			//Add Stage to Tags List if StageName has changed
			if (bInsert) {
				String StageTag = o.StageName;
				//Add new and fix new StageTag
				Boolean result = StageTag.containsAny('/*()');
				if (result = true) {
					fixTag = StageTag.replace('/', ' ');
					fixTag = StageTag.replace('*', ' ');
					fixTag = StageTag.replace('(', ' ');
					fixTag = StageTag.replace(')', ' ');
					//does this match the old tag(s)?
				}
			}
			else {
				String StageTag = mappingMap.get(o.Id).StageName;
				if (mappingOldMap.get(o.Id).StageName != mappingMap.get(o.Id).StageName) {
					//get old Tag 
					Boolean oldResult = mappingOldMap.get(o.Id).StageName.contains('/');
					if (oldResult = true) {
						oldTag = mappingOldMap.get(o.Id).StageName.replace('/', ' ');
						//remove old stage modified from Opportunity Tags list -
						List <OpportunityTag >delTag = [Select ID, Name, ItemId FROM OpportunityTag WHERE ItemId = : o.Id AND Name = :oldTag ];
						Integer oldSize = delTag.size();
						if (oldSize >0) {
							OpportunityTag deleteTag = delTag [0];
							try {
								delete deleteTag;
								System.debug('******** Record Deleted *********** ');
							}
							catch (DMLException e) {
								//exception
							}
						}
					}
				}
				//Add new and fix new StageTag
				Boolean result = StageTag.contains('/');
				if (result = true) {
					fixTag = StageTag.replace('/', ' ');
					//does this match the old tag(s)?
				}
			}
			//add new OpportunityTag
			OpportunityTag oppStage = new OpportunityTag(ItemId = o.ID, Type = 'Public', Name = fixTag);
			OpportunityTag oppStage2 = new OpportunityTag(ItemId = o.ID, Type = 'Public', Name = 'Learn Identify');
			ID oRecType = o.RecordTypeId;
			RecordType rt = [SELECT Id,Name FROM RecordType WHERE Id = :oRecType LIMIT 1];
			String oppName = rt.Name;
			if (oppName != 'ChemCare Opportunity') {
				prodTag = o.Product__c;
				Product2 prod = [Select Name from Product2 WHERE ID = :prodTag];
				String prodName = prod.Name;
				if (prodTag <>'') {
					//Add new and fix new StageTag
					Boolean result = prodTag.containsAny('/(*)');
					if (result = true) {
						prodTagFix = prodTag.replace('/', ' ');
						prodTagFix = prodTag.replace('*', ' ');
						prodTagFix = prodTag.replace('(', ' ');
						prodTagFix = prodTag.replace(')', ' ');
						//does this match the old tag(s)?
					}
					OpportunityTag oppStage3 = new OpportunityTag(ItemId = o.ID, Type = 'Public', Name = prodTagFix);
					Database.saveResult lsr3 = Database.insert (oppStage3);
				}
			}
			Database.saveResult lsr = Database.insert (oppStage);
			Database.saveResult lsr2 = Database.insert (oppStage2);
			if (!lsr.isSuccess()) {
				Database.Error err = lsr.getErrors()[0];
			}
			//get all tags for this opportunity
			list <OpportunityTag >list_tags = new list <OpportunityTag >();
			for (OpportunityTag ot :[SELECT Id, Name, ItemId, Type FROM OpportunityTag WHERE ItemId = : o.Id ]) {
				if (ot.Type == 'Public') {
					// Create a new wrapper object
					tagN = String.valueOf(ot.Name);
					//now we should have a list of Opportunity Tags to work with
					System.debug('********** TAGN '+ tagN);
					String searchquery = 'FIND\''+ tagN + '\'IN ALL FIELDS RETURNING ContentVersion(Id, ContentDocumentId, Origin WHERE Origin=\'C\')';
					List <List <ContentVersion >>searchList = search.query(searchquery);
					//ContentVersion[] is a list using searchList - first returned item in the searchQuery - id
					ContentVersion []cv = ((List <ContentVersion >)searchList [0]);
					for (ContentVersion convers :cv)//Origin = H it's a Chatter File
					if (convers.Origin <>'H') {
						System.debug('~~~~~~~~~~~~~~ ORIGIN '+ convers.Origin);
						{
							convers.Opportunity__c = o.id;
							try {
								//   update convers;
							}
							catch (DMLException e) {
								//skip this one, probably not accessible or chatter
								continue ;
							}
						}
					}
				}
			}
		}
	}
	
    public static void OpportunityProcess(List<Opportunity> objects, Map<Id, Opportunity> oldMap, Boolean bInsert) {
	
        // Prep for UserLastModified code
		Profile p = [SELECT id, name from profile WHERE id = :UserInfo.getProfileID()];
	    String ThisUser = UserInfo.getUserId();
        
        // Prep for Validate Bid Campaigns code
        List<Related_Account__c> ra = new List<Related_Account__c>();
		Campaign camp;
		Id campId;
		Id account;
		Boolean isRelated = false;
		Id rt = [SELECT Id FROM RecordType WHERE sObjectType='Campaign' AND DeveloperName ='Bid_Campaigns'].Id;
	          
	    // Loop through the incoming records
	    for (Opportunity obj : objects) 
	    {
      		//1. SAVE USER-LAST-MODIFIED INFO (When a non-SysAdmin updates a record)            
	        if (p.name.Contains('Sys'))  {   //SysAdmin
                if(bInsert) { //Blank out the fields in case the insert was caused by a clone, 	 	    	
	 	            obj.UserLastModifiedBy__c = null;
	                obj.UserLastModifiedDate__c = null;
                } else if (obj.UserLastModifiedDate__c <> oldMap.get(obj.id).UserLastModifiedDate__c)  {
                    // If SysAdmin inadvertently updated one of the fields, undo it
	          	    obj.UserLastModifiedBy__c = oldMap.get(obj.id).UserLastModifiedBy__c;
	                obj.UserLastModifiedDate__c = oldMap.get(obj.id).UserLastModifiedDate__c;
	            }            
		          
		      //Non-SysAdmin - always update the fields                                
	        } else {   
	            obj.UserLastModifiedBy__c = ThisUser;
	            obj.UserLastModifiedDate__c = datetime.now();
	        }
            
            //2. VALIDATE BID CAMPAIGNS
            campId = obj.CampaignId;
    		if(campID != null){
    			account = obj.AccountId;
    			//use campaign ID to find related accounts
    			camp = [SELECT Id, RecordTypeId FROM Campaign WHERE id = :campID];
    			if(camp!=null){
    				if(rt == camp.RecordTypeId){
        				//find related accounts equal to Primary Campaign Source
    					List<Related_Account__c> related = [SELECT Id, Account__c, Campaign__c FROM Related_Account__c WHERE Campaign__c =:campId ];
    					for(Related_Account__c c : related){
        					//check here to see if the Opportunity Account matches any of the related accounts on the campaign
        					if(c.Account__c == account){
            					isRelated = true;
        					}
    					}   
        				if(!isRelated){
        					obj.CampaignId.addError('When choosing a Bid Campaign as your Primary Campaign source, you must make sure the account is related to the Bid Campaign.');
        				}
      				}
    			}
   			}
        }
	}
	
	public static void OpportunityBeforeInsert(List<SObject> opportunities)
	{
		USPOTOpportunityProductMatch.matchOpportunityProductBySKU((List<Opportunity>)opportunities, null, false);
		OpportunityProcess((List<Opportunity>)opportunities, null, true);
	}
	
	public static void OpportunityBeforeUpdate(List<SObject> opportunities, Map<Id, SObject> oldMap)
	{
		USPOTOpportunityProductMatch.matchOpportunityProductBySKU((List<Opportunity>)opportunities, (Map<Id, Opportunity>)oldMap, true);
		OpportunityProcess((List<Opportunity>)opportunities, (Map<Id, Opportunity>)oldMap, false);
	}
	
	public static void OpportunityAfterInsert(List<SObject> updatedMappings)
	{
		//OpportunityTagContent((List<Opportunity>)updatedMappings, null, null, true);
	}
	
	public static void OpportunityAfterUpdate(List<SObject> updatedMappings, Map<ID, SObject> mappingOldMap, Map<ID, SObject> mappingMap)
	{
		//OpportunityTagContent((List<Opportunity>)updatedMappings, (Map<Id, Opportunity>)mappingOldMap, (Map<Id, Opportunity>)mappingMap, false);
	}
}