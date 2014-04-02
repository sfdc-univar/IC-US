<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>InternalISChangeRequestApprovedNotifySFDCApplicationTeam</fullName>
        <description>Internal IS Change Request - Approved - Notify SFDC Application Team</description>
        <protected>false</protected>
        <recipients>
            <recipient>eva.delorio@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>kathy.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/InternalISChgRequestApproved</template>
    </alerts>
    <alerts>
        <fullName>InternalISChangeRequestCompletedNotifyOwner</fullName>
        <ccEmails>idkam@univarusa.com</ccEmails>
        <ccEmails>idsam@univarusa.com</ccEmails>
        <ccEmails>idelg@univarusa.com</ccEmails>
        <description>Internal IS Change Request - Completed - Notify Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/InternalISChgRequestCompleted</template>
    </alerts>
    <alerts>
        <fullName>InternalISChangeRequestNewNotifyApprovers</fullName>
        <ccEmails>idkam@univarusa.com</ccEmails>
        <ccEmails>idsam@univarusa.com</ccEmails>
        <description>Internal IS Change Request - New - Notify Approvers</description>
        <protected>false</protected>
        <recipients>
            <recipient>brian.feldtman@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>eva.delorio@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>signe.einess@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/InternalISChgRequestNew</template>
    </alerts>
    <rules>
        <fullName>Internal IS CR - Approval is Final</fullName>
        <actions>
            <name>InternalISChangeRequestApprovedNotifySFDCApplicationTeam</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Internal_IS_Change_Request__c.Final_Approval_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Internal_IS_Change_Request__c.Assigned_To__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Send email to SFDC Application Team when an Internal IS Change Request has Final Approval Date &amp; it isn&apos;t being assigned at the same time.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Internal IS CR - Completed</fullName>
        <actions>
            <name>InternalISChangeRequestCompletedNotifyOwner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Internal_IS_Change_Request__c.Status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <description>Send email to owner when an Internal IS Change Request has been completed.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Internal IS CR - New and Open</fullName>
        <actions>
            <name>InternalISChangeRequestNewNotifyApprovers</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Internal_IS_Change_Request__c.Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <criteriaItems>
            <field>Internal_IS_Change_Request__c.Final_Approval_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Internal_IS_Change_Request__c.Assigned_To__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Send email to Approvers when an Internal IS Change Request has been created.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
