<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_Assigned_Date</fullName>
        <field>AssignedDate__c</field>
        <formula>IF(ISCHANGED(OwnerId) || ISNEW(), TODAY(), AssignedDate__c)</formula>
        <name>Set Assigned Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Completed_Date</fullName>
        <field>CompletedDate__c</field>
        <formula>IF(ISCHANGED(Status)|| ISNEW(),IF(ISPICKVAL(Status,&quot;Completed&quot;),TODAY(),Null),CompletedDate__c)</formula>
        <name>Set Completed Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Task_Not_Equal_to_Null</fullName>
        <description>A field update to help filter custom report types.</description>
        <field>Task_Type__c</field>
        <formula>TEXT( Type )</formula>
        <name>Task Not Equal to Null</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>F2S Task Not Equal to Null</fullName>
        <actions>
            <name>Task_Not_Equal_to_Null</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>A workflow to help custom report filtering</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Task Dates</fullName>
        <actions>
            <name>Set_Assigned_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Completed_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update Assigned and/or Completed Dates on a Task</description>
        <formula>ISNEW() || ISCHANGED( OwnerId ) || ISCHANGED( Status )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
