<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>CR_SendemailnotificationtotheAssignedToforChangeRequest</fullName>
        <description>Change Request:  Send email notification to the &quot;Assigned To&quot; for Change Request</description>
        <protected>false</protected>
        <recipients>
            <recipient>kathy.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/ChangeRequestAssignmentNotification</template>
    </alerts>
    <alerts>
        <fullName>ChangeRequestApprovedNotifySFDCApplicationTeam</fullName>
        <ccEmails>Jennifer.Steinman@univarusa.com</ccEmails>
        <description>Change Request - Approved - Notify SFDC Application Team</description>
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
        <recipients>
            <recipient>signe.einess@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/ChangeRequestReadyforIS</template>
    </alerts>
    <alerts>
        <fullName>ChangeRequestCompletedNotifyOwner</fullName>
        <ccEmails>kathy.miller@univarusa.com</ccEmails>
        <ccEmails>sheila.mcevoy@univarusa.com</ccEmails>
        <ccEmails>eva.delorio@univarusa.com</ccEmails>
        <description>Change Request - Completed - Notify Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/ChangeRequestCompleted</template>
    </alerts>
    <alerts>
        <fullName>ChangeRequestNewNotifyApprovers</fullName>
        <ccEmails>kathy.miller@univarusa.com</ccEmails>
        <ccEmails>Jennifer.Steinman@univarusa.com</ccEmails>
        <ccEmails>signe.einess@univarusa.com</ccEmails>
        <ccEmails>eva.delorio@univarusa.com</ccEmails>
        <description>Change Request - New - Notify Approvers</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Administration/ChangeRequestNew</template>
    </alerts>
    <fieldUpdates>
        <fullName>CRAssignedUpdateStatus</fullName>
        <field>Change_Request_Status__c</field>
        <literalValue>Assigned</literalValue>
        <name>CR - Assigned - Update Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CRDefaultFinalApprovalDate</fullName>
        <description>If project sponsor forgot to enter final approval date, default it to today</description>
        <field>Final_Approval__c</field>
        <formula>TODAY()</formula>
        <name>CR - Default Final Approval Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CR - Approval is Final</fullName>
        <actions>
            <name>ChangeRequestApprovedNotifySFDCApplicationTeam</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send email to SFDC Application Team when a new Change Request receives final approval from Project Sponsors and is ready to be worked on.</description>
        <formula>AND

(AND(ISPICKVAL(Approval_Project_Sponsors__c , &quot;Approve&quot;), 
   OR(ISCHANGED( Approval_Project_Sponsors__c),  ISNEW() )), 

ISPICKVAL(  Assigned_To__c ,&quot;&quot;), ISBLANK( Deployment__c ), NOT(ISPICKVAL( Change_Request_Status__c ,&quot;Cancelled&quot;)), NOT(ISPICKVAL( Change_Request_Status__c ,&quot;Completed&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CR - Approved Without Date</fullName>
        <actions>
            <name>CRDefaultFinalApprovalDate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Change_Request__c.Approval_Project_Sponsors__c</field>
            <operation>equals</operation>
            <value>Approve</value>
        </criteriaItems>
        <criteriaItems>
            <field>Change_Request__c.Final_Approval__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Default to today&apos;s approval date if project sponsor approves it and forgets to enter the date</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR - Assigned needs status update</fullName>
        <actions>
            <name>CRAssignedUpdateStatus</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Change_Request__c.Assigned_To__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Change_Request__c.Change_Request_Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <description>If somebody assigns this CR and forgets to update the status from Open to &apos;Assigned&apos;, automatically change status to Assigned.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR - Assigned%3A  Notify Assignee</fullName>
        <actions>
            <name>CR_SendemailnotificationtotheAssignedToforChangeRequest</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Change_Request__c.Assigned_To__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Change_Request__c.Change_Request_Status__c</field>
            <operation>notEqual</operation>
            <value>Completed,Cancelled</value>
        </criteriaItems>
        <description>Notify Assignee of assignment of Change Request.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR - Completed</fullName>
        <actions>
            <name>ChangeRequestCompletedNotifyOwner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Change_Request__c.Change_Request_Status__c</field>
            <operation>contains</operation>
            <value>Completed</value>
        </criteriaItems>
        <description>Send email to owner when the status of the Change Request displays &quot;Complete&quot;.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR - New and Open</fullName>
        <actions>
            <name>ChangeRequestNewNotifyApprovers</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Change_Request__c.Change_Request_Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <description>Send email to all approvers when a new Change Request is first created</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
