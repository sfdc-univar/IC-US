global class AvailableLicenseScheduler implements Schedulable{
	
	
global void execute(SchedulableContext SC){

LicenseAlertConfig__c la = LicenseAlertConfig__c.getInstance();
String laCopyTo = la.CopyTo__c;
String laEmailTemplate = la.EmailTemplate__c;
String laSenderEmail = la.SenderEmail__c;
String laSenderName = la.SenderName__c;
String laSendTo = la.SendTo__c;

User u = [select id, Name from User WHERE IsActive=true AND Email=:laSendTo Limit 1];
//uid is the target object required - so pick an admin
String uid = u.id;

String[] toAddresses = new String[]{laSendTo};
String[] ccAddresses = new String[] {laCopyTo};
	
 EmailTemplate templateId = [Select id from EmailTemplate where DeveloperName =:laEmailTemplate];
        Messaging.reserveSingleEmailCapacity(2);

        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setToAddresses(toAddresses);
        mail.setCcAddresses(ccAddresses);
        mail.setTargetObjectID(uid);
        mail.setTemplateID(templateId.Id);
        mail.setSaveAsActivity(false);
       
        mail.setUseSignature(false);
        mail.setBccSender(false);
        mail.setSenderDisplayName(laSenderName);
        mail.setReplyTo(laSenderEmail);

        System.debug('********* SENDING ************* ' + toAddresses);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
}
}