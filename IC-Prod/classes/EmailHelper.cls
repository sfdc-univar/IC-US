public class EmailHelper
{
	public static Messaging.SendEmailResult[] sendAccountReassignmentNotificationEmails(Set<Id> usersToNotify, String emailTemplateDeveloperName)
	{
	    	    
	    //Cretes a Map of Users and their Email Addresses
	    List<User> usersEmailAddresses = [SELECT Id, Email FROM User WHERE Id IN :usersToNotify];
	    
	    EmailTemplate template = [SELECT Id FROM EmailTemplate WHERE DeveloperName =: emailTemplateDeveloperName LIMIT 1];
	    
	    List<Messaging.SingleEmailMessage> emailMessages = new List<Messaging.SingleEmailMessage>();
	    for (User user :usersEmailAddresses)
	    {
	        Messaging.SingleEmailMessage emailMessage = new Messaging.SingleEmailMessage();
	        emailMessage.setTemplateId(template.Id);
	        emailMessage.setTargetObjectId(user.Id);
			emailMessage.setToAddresses(new String[] { user.Email });
	        emailMessage.saveAsActivity = false;
			emailMessages.add(emailMessage);
	    }
	    
	    List<Messaging.SingleEmailMessage> transformedEmailMessages = EmailHelper.transformTemplateEmails(emailMessages);
	    
	    Messaging.SendEmailResult[] emailSendResults = Messaging.sendEmail(transformedEmailMessages);
	    return emailSendResults;
	}
  
    public static List<Messaging.SingleEmailMessage> transformTemplateEmails(List<Messaging.SingleEmailMessage> originalEmails)
    {
	    Savepoint sp = Database.setSavepoint();
	    Messaging.sendEmail(originalEmails);
	    Database.rollback(sp);
	    
	    List<Messaging.SingleEmailMessage> transformedEmails = new List<Messaging.SingleEmailMessage>();
	    for(Messaging.SingleEmailMessage originalEmail : originalEmails)
	    {
	      Messaging.SingleEmailMessage transformedEmail = new Messaging.SingleEmailMessage();
	      transformedEmail.setToAddresses(originalEmail.getToAddresses());
	      transformedEmail.setPlainTextBody(originalEmail.getPlainTextBody());
	      transformedEmail.setHTMLBody(originalEmail.getHTMLBody());
	      transformedEmail.setSubject(originalEmail.getSubject());
			transformedEmail.saveAsActivity = false;
	      
	      //TODO: Come up with better method of setting OrgWideEmail. (there is no developer name)
	      //OrgWideEmailAddress orgWideEmailAddress = [SELECT Id FROM OrgWideEmailAddress WHERE DisplayName = 'Univar Salesforce' LIMIT 1][0];
	      //transformedEmail.setOrgWideEmailAddressId(orgWideEmailAddress.Id);
	      transformedEmails.add(transformedEmail);
	    }
	    return transformedEmails;
    }
}