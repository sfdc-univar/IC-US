<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>CPP_Validation_Date</fullName>
        <description>Set to Today()</description>
        <field>Validated__c</field>
        <formula>TODAY()</formula>
        <name>CPP Validation Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Price_Source_Price_Unknown</fullName>
        <description>If $ per UOM is blank Price Source defaults to Price Unknown.</description>
        <field>Source__c</field>
        <literalValue>Price Unknown</literalValue>
        <name>Price Source = Price Unknown</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>%24 Per UOM is blank update Price Source</fullName>
        <actions>
            <name>Price_Source_Price_Unknown</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CPP__c.PriceperUOM__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>notEqual</operation>
            <value>Sales Operations Group</value>
        </criteriaItems>
        <description>If $ per UOM is blank Price Source field dropdown defaults to Price Unknown.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CPP Validation Date</fullName>
        <actions>
            <name>CPP_Validation_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update the CPP Validation date when the CPP is edited and it hasn&apos;t been changed.</description>
        <formula>NOT(ISCHANGED( Validated__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
