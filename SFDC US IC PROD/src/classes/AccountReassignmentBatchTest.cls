/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class AccountReassignmentBatchTest 
{

    static testMethod void test1() 
    {
        Account a = new Account(Name = 'Test Account');
        insert a;

        Test.startTest();
        
        AccountReassignmentBatch batch = new AccountReassignmentBatch();
        //EH Commented out. Attribute does not exist in AccountReassignmentBatch class
		//batch.ageInDays = 0;
        batch.query += ' And Id = \'' + a.Id + '\'';
        Database.executeBatch(batch, 1);
        
        Test.stopTest();

        a = [Select Name From Account Where Id = :a.Id];
        System.assertEquals('Test Account', a.Name);
    }

    static testMethod void testSch() 
    {
        ScheduleAccountReassignmentBatch sch = new ScheduleAccountReassignmentBatch();
        sch.run();
    }
    
    static testMethod void testExecuteMethod() 
    {
        test.startTest();
        ScheduleAccountReassignmentBatch sch = new ScheduleAccountReassignmentBatch();
        String schedule = '0 0 23 * * ?';
        system.schedule('Nightly Update', schedule, sch);
        test.stopTest();
    }
}