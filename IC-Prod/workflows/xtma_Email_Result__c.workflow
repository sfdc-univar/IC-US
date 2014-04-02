<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_ER_Status_to_Ready</fullName>
        <description>Updates Email Results aggregation status to Ready when ADC process changes it to Failed</description>
        <field>AggregationStatus__c</field>
        <literalValue>Ready</literalValue>
        <name>Update ER Status to Ready</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Set Failed Email back to Ready</fullName>
        <actions>
            <name>Update_ER_Status_to_Ready</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>xtma_Email_Result__c.AggregationStatus__c</field>
            <operation>equals</operation>
            <value>Failed</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.Alias</field>
            <operation>equals</operation>
            <value>SFDCET</value>
        </criteriaItems>
        <description>in preparation for automatic re-run on ADC email aggregration process</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
