<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Lead_Update_Alt_Country</fullName>
        <field>IntegratedCountry__c</field>
        <formula>Country</formula>
        <name>Lead - Update Alt Country</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Update_Alt_CountryCode</fullName>
        <field>IntegratedCountryCode__c</field>
        <formula>TEXT (CountryCode)</formula>
        <name>Lead - Update Alt Country Code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Update_Alt_State</fullName>
        <field>IntegratedState__c</field>
        <formula>State</formula>
        <name>Lead - Update Alt State</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Update_Alt_StateCode</fullName>
        <field>IntegratedStateCode__c</field>
        <formula>TEXT (StateCode)</formula>
        <name>Lead - Update Alt State Code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ReAssignOwnerofLead</fullName>
        <description>Assign Owner of Lead to Sales Operations if the Lead Source = Innovadex.</description>
        <field>OwnerId</field>
        <lookupValue>MarketDevelopersLeads</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>ReAssignOwnerofLead</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>InnovadexLeadToSalesOps</fullName>
        <actions>
            <name>ReAssignOwnerofLead</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.LeadSource</field>
            <operation>equals</operation>
            <value>Innovadex</value>
        </criteriaItems>
        <description>Send all Leads with Lead Source = Innovadex to Sales Operations.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Lead - Update Alt State and Country Fields</fullName>
        <actions>
            <name>Lead_Update_Alt_Country</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Lead_Update_Alt_CountryCode</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Lead_Update_Alt_State</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Lead_Update_Alt_StateCode</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates hidden fields used in Lead Mapping.</description>
        <formula>ISNEW() ||  ISCHANGED( Country ) || ISCHANGED ( State )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
