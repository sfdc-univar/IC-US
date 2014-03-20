@isTest
private class AcctReassignApprovalControllerTest 
{
    static testMethod void TestAcctReassignApprovalController()
    {
    	Account tAcct = UnitTestHelper.createAccount('TestAcct');
    	system.assert(UnitTestHelper.accountSaveSuccess);
    	
    	Account_Reassignment__c tAR = UnitTestHelper.createAR(tAcct);
    	system.assert(UnitTestHelper.arSaveSuccess);
    	
    	AcctReassignApprovalController controller = new AcctReassignApprovalController();

        controller.ArWrappers = new List<AcctReassignApprovalController.ReassignWrap>();
        controller.ArWrappers.add(new AcctReassignApprovalController.ReassignWrap(tAr, true));

        PageReference pageRef = Page.AccountReassignmentApproval;
        Test.setCurrentPage(pageRef);
        Schema.DescribeSObjectResult result = Account_Reassignment__c.SObjectType.getDescribe();
        PageReference arPageRef = new PageReference('/' + result.getKeyPrefix());

    	test.startTest();

    	controller.Approve();
    	system.assertEquals('Pending Approval', tAR.Status__c);

    	controller.Reject();
        system.assert(ApexPages.getMessages().size() > 0);
        controller.RejectReason = 'Not ready for approval';
        controller.Reject();

        controller.redirectToList();

    	test.stopTest();
    }
}