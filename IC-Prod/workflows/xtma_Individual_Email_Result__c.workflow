<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_to_Contact_Owner_when_Quote_Email_has_Bounced</fullName>
        <ccEmails>idsam@univarusa.com</ccEmails>
        <description>Email to Contact Owner when Quote Email has Bounced</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/TestHTML</template>
    </alerts>
    <rules>
        <fullName>IfIERshowsBounceEmailOwner</fullName>
        <actions>
            <name>Email_to_Contact_Owner_when_Quote_Email_has_Bounced</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>xtma_Individual_Email_Result__c.Date_Bounced__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>If the Individual Email Results shows that an email has bounced, notify the owner.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
