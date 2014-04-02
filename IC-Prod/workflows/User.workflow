<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>UpdateMgrDMwMgrPerNr</fullName>
        <description>Update the Manager PerNr field with the truncated PerNr from the Manager DM field.</description>
        <field>ManagerPerNr__c</field>
        <formula>IF(CONTAINS(  ManagerDM__c  , &quot;cn=&quot;), MID( ManagerDM__c , 4, 8), ManagerPerNr__c)</formula>
        <name>UpdateMgrDMwMgrPerNr</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>User_Update_Alt_Country</fullName>
        <field>IntegratedCountry__c</field>
        <formula>Country</formula>
        <name>User - Update Alt Country</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>User_Update_Alt_State</fullName>
        <field>IntegratedState__c</field>
        <formula>State</formula>
        <name>User - Update Alt State</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>StripMgrDMtoPerNr</fullName>
        <actions>
            <name>UpdateMgrDMwMgrPerNr</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Strip the ManagerDM data down to just the Manager&apos;s PerNr (10 digits) and update the &quot;Manager PerNr&quot; field with the 10-digit PerNr.</description>
        <formula>CONTAINS(ManagerDM__c, &quot;cn=&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>User - Update Alt State and Country Fields</fullName>
        <actions>
            <name>User_Update_Alt_Country</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>User_Update_Alt_State</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISNEW() ||  ISCHANGED( Country ) ||  ISCHANGED ( State )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
