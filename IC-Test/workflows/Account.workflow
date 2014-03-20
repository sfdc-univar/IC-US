<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>NotifyISNewCA</fullName>
        <description>Notify IS: New CA</description>
        <protected>false</protected>
        <recipients>
            <recipient>kathy.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/CAWorkflowNewCorporateAccount</template>
    </alerts>
    <alerts>
        <fullName>NotifyISReassignedCA</fullName>
        <description>Notify IS: Reassigned CA</description>
        <protected>false</protected>
        <recipients>
            <recipient>kathy.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/CAWorkflowReassignedCorporateAccount</template>
    </alerts>
    <alerts>
        <fullName>NotifyISReassignedShipTowithCA</fullName>
        <description>Notify IS: Reassigned Ship-To with CA#</description>
        <protected>false</protected>
        <recipients>
            <recipient>kathy.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/CAWorkflowReassignedShipTowithCA</template>
    </alerts>
    <alerts>
        <fullName>NotifyISShipTowithChangedCA</fullName>
        <description>Notify IS: Ship-To with Changed CA#</description>
        <protected>false</protected>
        <recipients>
            <recipient>kathy.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/CAWorkflowShipTowithchangedCA</template>
    </alerts>
    <alerts>
        <fullName>NotifyISShipTowithDeletedCA</fullName>
        <description>Notify IS: Ship-To with Deleted CA#</description>
        <protected>false</protected>
        <recipients>
            <recipient>kathy.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/CAWorkflowShipTowithdeletedCA</template>
    </alerts>
    <alerts>
        <fullName>NotifyISShipTowithNewCA</fullName>
        <description>Notify IS: Ship-To with New CA#</description>
        <protected>false</protected>
        <recipients>
            <recipient>kathy.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/CAWorkflowShipTowithnewCA</template>
    </alerts>
    <alerts>
        <fullName>NotifyISofNewShipToHouseAccountshouldntbeany</fullName>
        <description>Notify IS of New Ship-To House Account (shouldn&apos;t be any)</description>
        <protected>false</protected>
        <recipients>
            <recipient>kathy.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/NewShipToHouseAccount</template>
    </alerts>
    <alerts>
        <fullName>NotifyOwnerNewShipToAccount</fullName>
        <description>Notify Owner: New Ship-To Account</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/NewShipToAccount</template>
    </alerts>
    <alerts>
        <fullName>NotifyOwnerReassignedCorporateAccount</fullName>
        <description>Notify Owner: Reassigned Corporate Account</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/AccountReassignmentCorporateAccount</template>
    </alerts>
    <alerts>
        <fullName>NotifyOwnerReassignedProspect</fullName>
        <description>Notify Owner: Reassigned Prospect</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/AccountReassignmentProspect</template>
    </alerts>
    <alerts>
        <fullName>NotifyOwnerReassignedShipTo</fullName>
        <description>Notify Owner: Reassigned Ship-To</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/AccountReassignmentShipTo</template>
    </alerts>
    <alerts>
        <fullName>RemedyCaseNotificationofNewCorporateAccountNOTUSED</fullName>
        <ccEmails>Task_Remedy_Mail@univarusa.com</ccEmails>
        <description>Remedy Case Notification of New Corporate Account - NOT USED</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Administration/RemedyCaseNewCorpAcctNOTUSED</template>
    </alerts>
    <alerts>
        <fullName>RemedyCaseNotificationofnewCAShipToNOTUSEDSeeRonLtoUpdate</fullName>
        <ccEmails>Task_Remedy_Mail@univarusa.com</ccEmails>
        <description>Remedy Case Notification of new CA Ship-To - NOT USED:  See Ron L. to Update.</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Administration/RemedyCaseCorpAcctShipToNOTUSED</template>
    </alerts>
    <alerts>
        <fullName>Send_EM_to_Account_Owner_when_Perf_Imp_Flag_is_not_None</fullName>
        <ccEmails>idsam@univarusa.com</ccEmails>
        <description>Send email to Account Owner when Performance Improvement Flag is not None.</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <recipient>Sales Manager</recipient>
            <type>opportunityTeam</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Account_Perf_Imp_Flagged</template>
    </alerts>
    <fieldUpdates>
        <fullName>Account_Shipping_City</fullName>
        <description>Copies Billing City to Shipping City</description>
        <field>ShippingCity</field>
        <formula>IF(ShippingCity&lt;&gt;&quot;&quot;, ShippingCity, BillingCity)</formula>
        <name>Account Shipping City</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Shipping_Country</fullName>
        <description>Copies value from Billing Country to Shipping Country</description>
        <field>ShippingCountry</field>
        <formula>IF(ShippingCountry&lt;&gt;&quot;&quot;, ShippingCountry, BillingCountry)</formula>
        <name>Account Shipping Country</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Shipping_StateProvince</fullName>
        <description>Copy value from Billing State to Shipping State</description>
        <field>ShippingState</field>
        <formula>IF(ShippingState&lt;&gt;&quot;&quot;, ShippingState, BillingState)</formula>
        <name>Account Shipping StateProvince</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Shipping_Street</fullName>
        <description>Copy value from Billing Street to Shipping Street</description>
        <field>ShippingStreet</field>
        <formula>IF( ShippingStreet&lt;&gt;&quot;&quot;, ShippingStreet, BillingStreet)</formula>
        <name>Account Shipping Street</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Shipping_zip_postal_code</fullName>
        <description>Copy value from Billing Zip Code/postal code to Shipping Zip code/postal code</description>
        <field>ShippingPostalCode</field>
        <formula>IF(ShippingPostalCode&lt;&gt;&quot;&quot;, ShippingPostalCode, BillingPostalCode)</formula>
        <name>Account Shipping zip/postal code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Acct_Update_Alt_Billing_Country</fullName>
        <field>IntegratedBillingCtry__c</field>
        <formula>BillingCountry</formula>
        <name>Acct - Update Alt Billing Country</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Acct_Update_Alt_Billing_CountryCd</fullName>
        <field>IntegratedBillingCtryCd__c</field>
        <formula>TEXT(BillingCountryCode)</formula>
        <name>Acct - Update Alt Billing Country Code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Acct_Update_Alt_Billing_State</fullName>
        <field>IntegratedBillingState__c</field>
        <formula>BillingState</formula>
        <name>Acct - Update Alt Billing State</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Acct_Update_Alt_Billing_State_Code</fullName>
        <field>IntegratedBillingStateCd__c</field>
        <formula>TEXT(BillingStateCode)</formula>
        <name>Acct - Update Alt Billing State Code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Acct_Update_Alt_Shipping_Country</fullName>
        <field>IntegratedShippingCtry__c</field>
        <formula>ShippingCountry</formula>
        <name>Acct - Update Alt Shipping Country</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Acct_Update_Alt_Shipping_Country_Code</fullName>
        <field>IntegratedShippingCtryCd__c</field>
        <formula>text(ShippingCountryCode)</formula>
        <name>Acct - Update Alt Shipping Country Code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Acct_Update_Alt_Shipping_State</fullName>
        <field>IntegratedShippingState__c</field>
        <formula>ShippingState</formula>
        <name>Acct - Update Alt Shipping State</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Acct_Update_Alt_Shipping_State_Code</fullName>
        <field>IntegratedShippingStateCd__c</field>
        <formula>text(ShippingStateCode)</formula>
        <name>Acct - Update Alt Shipping State Code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CAMPACentral</fullName>
        <field>GroupAccountType__c</field>
        <literalValue>Multi-plant Central</literalValue>
        <name>CA/MPA - Central</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CAMPACorporate</fullName>
        <field>GroupAccountType__c</field>
        <literalValue>Corporate</literalValue>
        <name>CA/MPA - Corporate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CAMPAEastern</fullName>
        <field>GroupAccountType__c</field>
        <literalValue>Multi-plant Eastern</literalValue>
        <name>CA/MPA - Eastern</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CAMPANone</fullName>
        <field>GroupAccountType__c</field>
        <name>CA/MPA - None</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CAMPAWestern</fullName>
        <field>GroupAccountType__c</field>
        <literalValue>Multi-plant Western</literalValue>
        <name>CA/MPA - Western</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Chg_PI_to_None</fullName>
        <description>Change the Performance Improvement field to &quot;None&quot; after 6 months (180 days).</description>
        <field>PerformanceImprovement__c</field>
        <name>Chg PI to None</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Location_Latitude</fullName>
        <description>Update the Location_Latitude__s field when the Latitude__c field is updated.</description>
        <field>Location__Latitude__s</field>
        <formula>Latitude__c</formula>
        <name>Location Latitude</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Location_Longitude</fullName>
        <description>Location_Longitude__s populated by the Longitude__c field</description>
        <field>Location__Longitude__s</field>
        <formula>Longitude__c</formula>
        <name>Location Longitude</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PopulateEnterState</fullName>
        <description>Popuate &apos;Shipping State&apos; field with &quot;Enter State!&quot; on Prospects created from Outlook. Then we know if a State has 1 excl pt, it snuck in w/ blank  State from Outlook; if it has 2, it was from the original data cleanup in 2007 or 08.</description>
        <field>ShippingState</field>
        <formula>IF( ISBLANK(  ShippingState ), &quot;Enter State!&quot;, ShippingState)</formula>
        <name>Populate &quot;Enter State&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PopulateShippingCityField</fullName>
        <description>Popuate &apos;Shipping City&apos; field with &quot;Enter City!&quot; on Prospect Accounts when created from Outlook. Then we know if a City has 1 excl pt, it snuck in w/ blank City from Outlook; if it has 2, it was from the original data cleanup in 2007 or 08.</description>
        <field>ShippingCity</field>
        <formula>IF( ISBLANK( ShippingCity ), &quot;Enter City!&quot;, ShippingCity)</formula>
        <name>Populate &quot;Enter City&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_SIC_Code_1</fullName>
        <field>SICCode1__c</field>
        <formula>SIC_Mapping__r.SIC_Code__c</formula>
        <name>Populate SIC Code 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_SIC_Code_4</fullName>
        <field>SICIndustryGroupCode4__c</field>
        <formula>LEFT(TEXT(UIC_Industry_Group__c) , 1)</formula>
        <name>Populate SIC Industry Code 4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_SIC_Industry_Name4</fullName>
        <field>SICIndustryGroupName4__c</field>
        <formula>RIGHT( TEXT( UIC_Industry_Group__c ) ,  LEN(TEXT( UIC_Industry_Group__c ))- 4)</formula>
        <name>Populate SIC Industry Name4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_SIC_Name_1</fullName>
        <field>SICName1__c</field>
        <formula>TEXT(SIC_Mapping__r.Industry__c)</formula>
        <name>Populate SIC Name 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_State_XX</fullName>
        <description>When a US Prospect is saved with blank state, populate it to the XX value.</description>
        <field>ShippingStateCode</field>
        <literalValue>us_xx</literalValue>
        <name>Populate State XX</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctAreaCode</fullName>
        <description>= N/A</description>
        <field>AreaCode__c</field>
        <name>Prospect Hs Acct - Area Code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctAreaName</fullName>
        <description>= N/A</description>
        <field>AreaName__c</field>
        <name>Prospect Hs Acct - Area Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctDistrictCode</fullName>
        <description>= N/A</description>
        <field>DistrictCode__c</field>
        <name>Prospect Hs Acct - District Code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctDistrictName</fullName>
        <description>= N/A</description>
        <field>DistrictName__c</field>
        <name>Prospect Hs Acct - District Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctGMID</fullName>
        <description>= N/A</description>
        <field>GeneralMgrID__c</field>
        <name>Prospect Hs Acct - GM ID</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctGMName</fullName>
        <description>= N/A</description>
        <field>GeneralMgrName__c</field>
        <name>Prospect Hs Acct - GM Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctRVPID</fullName>
        <description>depends on owner</description>
        <field>RegionalMgrID__c</field>
        <formula>CASE(OwnerId 
,&quot;00530000000h71g&quot;,&quot;EP8S&quot;  /*Phil Scafido, Central */
,&quot;00530000000h71W&quot;,&quot;EJPR&quot; /*Joe Ripp, Eastern */
,&quot;00530000000h73N&quot;,&quot;EBFR&quot; /* Brian Rinehart, Western */
,&quot;&quot;)</formula>
        <name>Prospect Hs Acct - RVP ID</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctRVPName</fullName>
        <description>depends on owner</description>
        <field>RegionalMgrName__c</field>
        <formula>CASE(OwnerId
,&quot;00530000000h71g&quot;,&quot;PHIL SCAFIDO&quot; /*Central */
,&quot;00530000000h71W&quot;,&quot;JOE RIPP&quot; /*Eastern */
,&quot;00530000000h73N&quot;,&quot;BRIAN RINEHART&quot; /* Western */
,&quot;&quot;)</formula>
        <name>Prospect Hs Acct - RVP Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctRegionCode</fullName>
        <description>Depends on owner</description>
        <field>RegionCode__c</field>
        <formula>CASE(OwnerId 
,&quot;00530000000h71g&quot;,&quot;R&quot;  /*R - Central */
,&quot;00530000000h71W&quot;,&quot;E&quot; /*E - Eastern */
,&quot;00530000000h73N&quot;,&quot;W&quot; /* W - Western */
,&quot;&quot;)</formula>
        <name>Prospect Hs Acct - Region Code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctRegionName</fullName>
        <description>depends on owner</description>
        <field>RegionName__c</field>
        <formula>CASE(OwnerId 
,&quot;00530000000h71g&quot;,&quot;CENTRAL REGION&quot; 
,&quot;00530000000h71W&quot;,&quot;EASTERN REGION&quot;
,&quot;00530000000h73N&quot;,&quot;WESTERN REGION&quot;
,&quot;&quot;)</formula>
        <name>Prospect Hs Acct - Region Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctSMID</fullName>
        <description>= N/A</description>
        <field>SalesMgrID__c</field>
        <name>Prospect Hs Acct - SM ID</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctSMName</fullName>
        <description>= N/A</description>
        <field>SalesMgrName__c</field>
        <name>Prospect Hs Acct - SM Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctSlsrepTypeDesc</fullName>
        <description>= N/A</description>
        <field>TerritoryTypeName__c</field>
        <formula>&quot;UNASSIGNED UNIVAR&quot;</formula>
        <name>Prospect Hs Acct - Slsrep Type Desc</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProspectHsAcctSlsrepTypeID</fullName>
        <description>= U</description>
        <field>TerritoryTypeCode__c</field>
        <formula>&quot;U&quot;</formula>
        <name>Prospect Hs Acct - Slsrep Type ID</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Prospect_Status_Ignored</fullName>
        <description>After 24 months of inactivity, set Prospect Status to Ignored.</description>
        <field>Prospect_Status__c</field>
        <literalValue>Ignored</literalValue>
        <name>Prospect Status Ignored</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Prospect_Status_Ignored_Description</fullName>
        <description>Add Comment to account description as to why the Prospect Status was set to Ignored.</description>
        <field>Description</field>
        <formula>Description + &quot; : Account flagged as Ignored on &quot; + Text(Today()) + &quot; due to age and lack of activity.&quot;</formula>
        <name>Prospect Status Ignored Description</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SIC_IG_Code_2_blank_out</fullName>
        <field>SICIndustryGroupCode2__c</field>
        <name>SIC IG Code 2 - blank out</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SIC_IG_Code_3_blank_out</fullName>
        <field>SICIndustryGroupCode3__c</field>
        <name>SIC IG Code 3 - blank out</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SIC_IG_Code_4_blank_out</fullName>
        <field>SICIndustryGroupCode4__c</field>
        <name>SIC IG Code 4 - blank out</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SIC_IG_Name_2_blank_out</fullName>
        <field>SICIndustryGroupName2__c</field>
        <name>SIC IG Name 2 - blank out</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SIC_IG_Name_3_blank_out</fullName>
        <field>SICIndustryGroupName3__c</field>
        <name>SIC IG Name 3 - blank out</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SIC_IG_Name_4_blank_out</fullName>
        <field>SICIndustryGroupName4__c</field>
        <name>SIC IG Name 4 - blank out</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SIC_Name_2_blank_out</fullName>
        <field>SICName2__c</field>
        <name>SIC Name 2 - blank out</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SIC_Name_3_blank_out</fullName>
        <field>SICName3__c</field>
        <name>SIC Name 3 - blank out</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SIC_Name_4_blank_out</fullName>
        <field>SICName4__c</field>
        <name>SIC Name 4 - blank out</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sales_as_of_HTML</fullName>
        <field>SalesAsOf__c</field>
        <formula>CASE(SalesAsOfHidden__c, 
&quot;&quot;, &quot;&quot;,  
NULL,&quot;&quot;,
&quot;N/A&quot;,&quot;N/A&quot;,
&quot;&lt;b&gt;&lt;font color=&apos;blue&apos; size=&apos;3&apos;&gt; *** &quot; &amp;  SalesAsOfHidden__c  &amp; &quot; ***&lt;/font&gt;&lt;/b&gt;&quot;)</formula>
        <name>Sales as of HTML</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_F2S_ID_to_Lost</fullName>
        <field>MarketingSegment__c</field>
        <literalValue>Lost</literalValue>
        <name>Update F2S ID to Lost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_F2S_ID_to_None</fullName>
        <description>Blanks out F2S Id if a record type was changed from Prospect or Ship To</description>
        <field>MarketingSegment__c</field>
        <name>Update F2S ID to None</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_F2S_ID_to_Prospect</fullName>
        <field>MarketingSegment__c</field>
        <literalValue>Prospect</literalValue>
        <name>Update F2S ID to Prospect</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_F2S_ID_to_SoW</fullName>
        <field>MarketingSegment__c</field>
        <literalValue>SOW</literalValue>
        <name>Update F2S ID to SoW</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_F2S_ID_to_Wounded</fullName>
        <field>MarketingSegment__c</field>
        <literalValue>Wounded</literalValue>
        <name>Update F2S ID to Wounded</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_owner_to_Muni_CER</fullName>
        <field>OwnerId</field>
        <lookupValue>muni.cer@univarusa.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Update owner to Muni CER</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Account - Copy Address to Shipping Address</fullName>
        <actions>
            <name>Account_Shipping_City</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Account_Shipping_Country</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Account_Shipping_StateProvince</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Account_Shipping_Street</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Account_Shipping_zip_postal_code</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <description>Populate shipping address with billing address if the prospect account is created. Do not copy if shipping address fields are filled out.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Account - Update Alt State and Country fields</fullName>
        <actions>
            <name>Acct_Update_Alt_Billing_Country</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Acct_Update_Alt_Billing_CountryCd</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Acct_Update_Alt_Billing_State</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Acct_Update_Alt_Billing_State_Code</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Acct_Update_Alt_Shipping_Country</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Acct_Update_Alt_Shipping_Country_Code</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Acct_Update_Alt_Shipping_State</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Acct_Update_Alt_Shipping_State_Code</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the &quot;Integrated&quot; fields when state or country changes - this allows integration &amp; other API change logic to still work, even if a state or country was changed in the UI</description>
        <formula>ISNEW() ||  ISCHANGED( ShippingCountry ) ||  ISCHANGED ( ShippingState ) ||  ISCHANGED( BillingCountry ) ||  ISCHANGED ( BillingState )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Account Reassignment Notification - Corporate Account</fullName>
        <actions>
            <name>NotifyISReassignedCA</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>NotifyOwnerReassignedCorporateAccount</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Send email to Account Owner when a CA/MPA account has been reassigned.  Then send one to IS, as part of CA Workflow.</description>
        <formula>AND (  $RecordType.Name =  &quot;Corporate&quot;  ,ISCHANGED(OwnerId )   ,OwnerId &lt;&gt; &quot;00530000000h71g&quot;   /* Central */  ,OwnerId  &lt;&gt; &quot;00530000000h71W&quot;  /* Eastern */  ,OwnerId &lt;&gt; &quot;00530000000h73N&quot;  /* Western */ )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Account Reassignment Notification - Prospect</fullName>
        <actions>
            <name>NotifyOwnerReassignedProspect</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Send email to Account Owner when a Prospect account has been reassigned.</description>
        <formula>AND ( $RecordType.Name = &quot;Prospect&quot; ,ISCHANGED(OwnerId ) ,OwnerId &lt;&gt; &quot;00530000000h71g&quot; /* Central */ ,OwnerId &lt;&gt; &quot;00530000000h71W&quot; /* Eastern */ ,OwnerId &lt;&gt; &quot;00530000000h73N&quot; /* Western */ )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Account Reassignment Notification - Ship-To</fullName>
        <actions>
            <name>NotifyOwnerReassignedShipTo</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Send email to Account Owner when a Ship-To account has been reassigned.</description>
        <formula>AND (  $RecordType.Name =  &quot;Ship To&quot;  ,ISCHANGED(OwnerId )   ,OwnerId &lt;&gt; &quot;00530000000h71g&quot;   /* Central */  ,OwnerId  &lt;&gt; &quot;00530000000h71W&quot;  /* Eastern */  ,OwnerId &lt;&gt; &quot;00530000000h73N&quot;  /* Western */ )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CER Muni Accounts</fullName>
        <actions>
            <name>Update_owner_to_Muni_CER</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.SalesRepName__c</field>
            <operation>equals</operation>
            <value>CER MUNI TEAM</value>
        </criteriaItems>
        <description>If the Sales Rep Name = CER MUNI TEAM, then assign the owner to &quot;Muni-CER&quot; user.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Corp Acct - New Ship-To with Corp Acct</fullName>
        <actions>
            <name>RemedyCaseNotificationofnewCAShipToNOTUSEDSeeRonLtoUpdate</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Ship To</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.GroupAccountNumber__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.ParentId</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Remedy case is created and assigned to Data Security, when a Ship-To gets associated with a Corp Acct (new or existing ship-to)  NOTE:  7/14/08:  Remedy version upgrade to 7.0 which has new table design.  If we want to reactivate, contact Ron Legters.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>F2S ID Field Population for Lost</fullName>
        <actions>
            <name>Update_F2S_ID_to_Lost</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>RecordType.Name  = &quot;Ship To&quot;   &amp;&amp; AcornRolling12MoSalesPY__c  &gt; 0    &amp;&amp; AcornRolling12MoSales__c  = 0</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>F2S ID Field Population for Other Account Types</fullName>
        <actions>
            <name>Update_F2S_ID_to_None</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>notEqual</operation>
            <value>Ship To,Prospect,Consultant/Marketing</value>
        </criteriaItems>
        <description>For record types that don&apos;t use the F2S Id field</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>F2S ID Field Population for Prospect</fullName>
        <actions>
            <name>Update_F2S_ID_to_Prospect</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <description>F2S ID field population for the value of &quot;Prospect&quot;</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>F2S ID Field Population for SoW</fullName>
        <actions>
            <name>Update_F2S_ID_to_SoW</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>RecordType.Name  = &quot;Ship To&quot;  &amp;&amp;  NOT(     (AcornRolling12MoSalesPY__c   &gt; 0            &amp;&amp; AcornRolling12MoSales__c = 0)    || (AcornRolling12MoSales__c  &gt;  0           &amp;&amp; AcornRolling12MoSales__c                  &lt;  AcornRolling12MoSalesPY__c  / 2) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>F2S ID Field Population for Wounded</fullName>
        <actions>
            <name>Update_F2S_ID_to_Wounded</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>RecordType.Name = &quot;Ship To&quot;   &amp;&amp; AcornRolling12MoSales__c  &gt;  0   &amp;&amp;  AcornRolling12MoSales__c         &lt;  AcornRolling12MoSalesPY__c  / 2</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>IS - New Corp Acct - Email IS</fullName>
        <actions>
            <name>NotifyISNewCA</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Corporate</value>
        </criteriaItems>
        <description>Previously created a Remedy case; now just emails IS because we will do the semi-automated CAM maintenance</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>IS - Reassigned Corp Acct - Email IS</fullName>
        <actions>
            <name>NotifyISReassignedCA</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Emails an IS person when a Corporate Account is reassigned.  Integration also sends status emails for these. This is for double-checking, and tracking when users themselves make these changes.</description>
        <formula>AND( $RecordType.Name = &quot;Corporate&quot;  ,  ISCHANGED(OwnerId ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>IS - Reassigned Ship-To with CA %23 - Email IS</fullName>
        <actions>
            <name>NotifyISReassignedShipTowithCA</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Emails an IS person when the CA# is changed on a Ship-To, and both old &amp; new value are non-blank.  This is temporarily in place of the Remedy emails, which are being turned off during LCC rollout.</description>
        <formula>AND(CustomerNumber__c  &lt;&gt; &quot;&quot;,  PRIORVALUE(GroupAccountNumber__c ) &lt;&gt; &quot;0&quot;,PRIORVALUE(GroupAccountNumber__c ) &lt;&gt; &quot;&quot;,  ISCHANGED(OwnerId ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>IS - Ship-To - New - House Account Owner</fullName>
        <actions>
            <name>NotifyISofNewShipToHouseAccountshouldntbeany</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Ship To</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.OwnerId</field>
            <operation>equals</operation>
            <value>HAEAR,HACER,HAWER</value>
        </criteriaItems>
        <description>Emails IS when a new ship-to House Account is created (could be via integration or other backend tool).  This should not happen, so if it does, IS needs to troubleshoot how this account made it through integration.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>IS - Ship-To with Changed CA %23 - Email IS</fullName>
        <actions>
            <name>NotifyISShipTowithChangedCA</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Emails an IS person when the CA# is changed on a Ship-To, and both old &amp; new value are non-blank.  This is temporarily in place of the Remedy emails, which are being turned off during LCC rollout.</description>
        <formula>AND(CustomerNumber__c  &lt;&gt; &quot;&quot;,  GroupAccountNumber__c &lt;&gt; &quot;&quot;,  GroupAccountNumber__c &lt;&gt; &quot;0&quot;,  PRIORVALUE(GroupAccountNumber__c ) &lt;&gt; &quot;&quot;, PRIORVALUE(GroupAccountNumber__c ) &lt;&gt; &quot;0&quot;, ISCHANGED( GroupAccountNumber__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>IS - Ship-To with Deleted CA %23 - Email IS</fullName>
        <actions>
            <name>NotifyISShipTowithDeletedCA</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Emails an IS person when the CA# is deleted on a Ship-To.  This is temporarily in place of the Remedy emails, which are being turned off during LCC rollout.</description>
        <formula>AND(CustomerNumber__c  &lt;&gt; &quot;&quot;,  OR(GroupAccountNumber__c = &quot;&quot;,GroupAccountNumber__c = &quot;0&quot;),  ISCHANGED( GroupAccountNumber__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>IS - Ship-To with New CA %23 - Email IS</fullName>
        <actions>
            <name>NotifyISShipTowithNewCA</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Ship To</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.GroupAccountNumber__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <description>Emails an IS person when a new CA ship-to is created, or CA# is added to a Ship-To that previously did not have one.  This is temporarily in place of the Remedy emails, which are being turned off during LCC rollout.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LatLon_Update</fullName>
        <actions>
            <name>Location_Latitude</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Location_Longitude</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.OwnerLink__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update the Latitude and Longitude in the __s fields.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Performance Improvement 6 months %28185 days%29 of no change</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Account.PerformanceImprovement__c</field>
            <operation>equals</operation>
            <value>SFDC ECM Kickoff,Account Improvement,Product Improvement</value>
        </criteriaItems>
        <description>Performance Improvement field set to None after 185 days (=6 months) of no change.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Chg_PI_to_None</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>185</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Performance Improvement 6 months of no change</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.PerformanceImprovement__c</field>
            <operation>equals</operation>
            <value>SFDC ECM Kickoff,Account Improvement,Product Improvement</value>
        </criteriaItems>
        <description>Performance Improvement field set to None after 6 months of no change.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Chg_PI_to_None</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>180</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Performance Improvement Email Send</fullName>
        <actions>
            <name>Send_EM_to_Account_Owner_when_Perf_Imp_Flag_is_not_None</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Send email to Account Owner when the Performance Improvement value is not = to &quot;None&quot;.</description>
        <formula>AND(ISCHANGED( PerformanceImprovement__c ) ,   
OR
(ISPICKVAL(PerformanceImprovement__c, &quot;Product Improvement&quot;), 
ISPICKVAL(PerformanceImprovement__c, &quot;Account Improvement&quot;),
ISPICKVAL(PerformanceImprovement__c, &quot;SFDC ECM Kickoff&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Populate CA%2FMPA Type - Blank Out</fullName>
        <actions>
            <name>CAMPANone</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Removes CA/MPA Type when account no longer has a CA#</description>
        <formula>AND(OR( $RecordType.Name = &quot;Ship To&quot;, $RecordType.Name = &quot;Prospect&quot;), OR(GroupAccountNumber__c = &quot;0&quot;,GroupAccountNumber__c = &quot;&quot;, ISNULL(GroupAccountNumber__c) ), NOT(ISPICKVAL(GroupAccountType__c,&quot;&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Populate CA%2FMPA Type - Central</fullName>
        <actions>
            <name>CAMPACentral</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Populates CA/MPA Type based on CA/MPA number.</description>
        <formula>AND( OR( $RecordType.Name = &quot;Ship To&quot;, $RecordType.Name = &quot;Prospect&quot;),  OR( AND(VALUE(GroupAccountNumber__c ) &gt;= 1000, VALUE(GroupAccountNumber__c) &lt;= 1199),  AND(VALUE(GroupAccountNumber__c ) &gt;= 1400, VALUE(GroupAccountNumber__c) &lt;= 1599)), NOT(ISPICKVAL(GroupAccountType__c,&quot;Multi-plant Central&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Populate CA%2FMPA Type - Corporate</fullName>
        <actions>
            <name>CAMPACorporate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Populates CA/MPA Type based on CA/MPA number.</description>
        <formula>AND(OR( $RecordType.Name = &quot;Ship To&quot;, $RecordType.Name = &quot;Prospect&quot;), VALUE(GroupAccountNumber__c ) &gt;= 2000, NOT(ISPICKVAL(GroupAccountType__c,&quot;Corporate&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Populate CA%2FMPA Type - Eastern</fullName>
        <actions>
            <name>CAMPAEastern</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Populates CA/MPA Type based on CA/MPA number.</description>
        <formula>AND( OR( $RecordType.Name = &quot;Ship To&quot;, $RecordType.Name = &quot;Prospect&quot;),  OR( AND(VALUE(GroupAccountNumber__c ) &gt;= 1200, VALUE(GroupAccountNumber__c) &lt;= 1399),  AND(VALUE(GroupAccountNumber__c ) &gt;= 1600, VALUE(GroupAccountNumber__c) &lt;= 1799)), NOT(ISPICKVAL(GroupAccountType__c,&quot;Multi-plant Eastern&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Populate CA%2FMPA Type - Western</fullName>
        <actions>
            <name>CAMPAWestern</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Populates CA/MPA Type based on CA/MPA number.</description>
        <formula>AND(OR( $RecordType.Name = &quot;Ship To&quot;, $RecordType.Name = &quot;Prospect&quot;), VALUE(GroupAccountNumber__c ) &gt;= 1800, VALUE(GroupAccountNumber__c) &lt;= 1999, NOT(ISPICKVAL(GroupAccountType__c,&quot;Western&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Populate Prospect Industry</fullName>
        <actions>
            <name>Populate_SIC_Code_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Populate_SIC_Industry_Name4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.UIC_Industry_Group__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Populate SIC Group 4 code and name from drop down.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Populate SIC Code Name and Industry</fullName>
        <actions>
            <name>Populate_SIC_Code_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Populate_SIC_Name_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Prospect - Blank City</fullName>
        <actions>
            <name>PopulateShippingCityField</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.ShippingCity</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <description>Populate &quot;Enter City!&quot; in &quot;Shipping City&quot; field on auto generated Prospect Accounts</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Prospect - House Account - Rule %231</fullName>
        <actions>
            <name>ProspectHsAcctRVPID</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ProspectHsAcctRVPName</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ProspectHsAcctRegionCode</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ProspectHsAcctRegionName</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.OwnerId</field>
            <operation>equals</operation>
            <value>HAEAR,HAWER,HACER</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <description>Set regional fields to default values on prospect house accounts</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Prospect - House Account - Rule %232</fullName>
        <actions>
            <name>ProspectHsAcctAreaCode</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ProspectHsAcctAreaName</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ProspectHsAcctDistrictCode</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ProspectHsAcctDistrictName</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ProspectHsAcctGMID</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ProspectHsAcctGMName</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ProspectHsAcctSMID</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ProspectHsAcctSMName</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ProspectHsAcctSlsrepTypeDesc</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>ProspectHsAcctSlsrepTypeID</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.OwnerId</field>
            <operation>equals</operation>
            <value>HAEAR,HAWER,HACER</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <description>Blank out all but the regional values on prospect house accounts</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Prospect Status Ignored</fullName>
        <active>false</active>
        <description>Set prospect status to ignored if;
 1. create date is over 24 months 
2. last activity is over 24 months 
3. user last modified is over 24 months</description>
        <formula>RecordType.DeveloperName = &quot;Prospect&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Prospect_Status_Ignored</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Prospect_Status_Ignored_Description</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Account.Last_Activity_Date__c</offsetFromField>
            <timeLength>730</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Prospect_Status_Ignored</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Prospect_Status_Ignored_Description</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Account.LastModifiedDate</offsetFromField>
            <timeLength>730</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Prospect_Status_Ignored</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Prospect_Status_Ignored_Description</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Account.UserLastModifiedDate__c</offsetFromField>
            <timeLength>730</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>SIC Code 2 is empty</fullName>
        <actions>
            <name>SIC_IG_Code_2_blank_out</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SIC_IG_Name_2_blank_out</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SIC_Name_2_blank_out</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 and (2 or 3 or 4)</booleanFilter>
        <criteriaItems>
            <field>Account.SICCode2__c</field>
            <operation>equals</operation>
            <value>,0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.SICName2__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.SICIndustryGroupCode2__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.SICIndustryGroupName2__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Blank out all values associated with SIC Code 2</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SIC Code 3 is empty</fullName>
        <actions>
            <name>SIC_IG_Code_3_blank_out</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SIC_IG_Name_3_blank_out</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SIC_Name_3_blank_out</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 and (2 or 3 or 4)</booleanFilter>
        <criteriaItems>
            <field>Account.SICCode3__c</field>
            <operation>equals</operation>
            <value>,0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.SICName3__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.SICIndustryGroupCode3__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.SICIndustryGroupName3__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Blank out all values associated with SIC Code 3</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SIC Code 4 is empty</fullName>
        <actions>
            <name>SIC_IG_Code_4_blank_out</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SIC_IG_Name_4_blank_out</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SIC_Name_4_blank_out</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 and (2 or 3 or 4)</booleanFilter>
        <criteriaItems>
            <field>Account.SICCode4__c</field>
            <operation>equals</operation>
            <value>,0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.SICName4__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.SICIndustryGroupCode4__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.SICIndustryGroupName4__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Blank out all values associated with SIC Code 4</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales As Of HTML</fullName>
        <actions>
            <name>Sales_as_of_HTML</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>set html for Sales As Of field</description>
        <formula>ISCHANGED( SalesAsOfHidden__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Ship-To - New - Human Owner</fullName>
        <actions>
            <name>NotifyOwnerNewShipToAccount</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Ship To</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.OwnerId</field>
            <operation>notEqual</operation>
            <value>HACER,HAEAR,HAWER</value>
        </criteriaItems>
        <description>Emails account owner when a new ship-to is created (via integration - field users can&apos;t create ship-tos manually).  Purpose: Ensure prospects are merged with the new ship-to&apos;s.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
