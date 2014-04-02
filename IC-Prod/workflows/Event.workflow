<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Event_Not_Equal_to_Null</fullName>
        <description>A field update to help custom report filtering.</description>
        <field>Task_Type__c</field>
        <formula>TEXT( Type )</formula>
        <name>Event Not Equal to Null</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>F2S Event Not Equal to Null</fullName>
        <actions>
            <name>Event_Not_Equal_to_Null</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Event.Type</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>A workflow to help custom report filtering.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
