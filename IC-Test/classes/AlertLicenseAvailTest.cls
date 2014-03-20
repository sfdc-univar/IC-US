/**
 * This class contains unit tests for validating the behavior of Apex classes
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@istest
private class AlertLicenseAvailTest {

    static testMethod void LicenseAvailRun() {
        AlertLicenseAvail la = new AlertLicenseAvail();
        test.startTest();
         la.rawdata = '>Salesforce</th><td class=" dataCell  ">Active</td><td class=" dataCell  numericalColumn">800';
         la.lic = 800;  
         la.result = '800';

         la.getLicense();
         la.getLicenseAvailable();
         test.stopTest(); 
    }
}