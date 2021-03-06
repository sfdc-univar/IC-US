/**
 * This class contains unit tests for validating the behavior of the scheduled class for AvailableLicenses
 */
@istest(SeeAllData=true)

private class AvailableLicenseSchedulerTest {

    static testMethod void availLicenseSchedule() {
      User u = [select id, name from User WHERE IsActive=true Limit 1];
      String CRON_EXP = '0 0 0 3 9 ? 2022';
     // Schedule the test job
        String jobId = System.schedule('testBasicScheduledApex', CRON_EXP, new AvailableLicenseScheduler());
       
        // Get the information from the CronTrigger API object
        CronTrigger ct = [SELECT Id, CronExpression, TimesTriggered, NextFireTime FROM CronTrigger WHERE id = :jobId];
   
       // Verify the expressions are the same    
       System.assertEquals(CRON_EXP, ct.CronExpression);
   
       // Verify the job has not run   
       System.assertEquals(0, ct.TimesTriggered);
   
       // Verify the next time the job will run
       System.assertEquals('2022-09-03 00:00:00', String.valueOf(ct.NextFireTime));
 
    }
    

}