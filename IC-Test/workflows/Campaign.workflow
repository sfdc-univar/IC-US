<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Campaign_is_Active</fullName>
        <description>Check the Active box.</description>
        <field>IsActive</field>
        <literalValue>1</literalValue>
        <name>Campaign is Active</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Bid Campaign Active</fullName>
        <actions>
            <name>Campaign_is_Active</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.RecordTypeId</field>
            <operation>equals</operation>
            <value>Bid Campaigns,Bid Master</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
