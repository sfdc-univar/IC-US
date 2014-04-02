<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>CAP_Email</fullName>
        <description>Email CAP Sales Manager</description>
        <protected>false</protected>
        <recipients>
            <field>SMLink__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/CAP_Email</template>
    </alerts>
    <rules>
        <fullName>Email CAP Sales Manager</fullName>
        <actions>
            <name>CAP_Email</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Emails the Sales Manager when a CAP is updated</description>
        <formula>AND(SMLink__r.IsActive,   LastModifiedById  &lt;&gt; SMLink__r.Id )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
