<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>SupportRequest_SendEmailtoOwnerwhenSupportRequestApprovedDateisnolongerblank</fullName>
        <description>Support Request:  Send email to Owner when Support Request Approved Date is no longer blank.</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Support_Request_Owner</template>
    </alerts>
    <alerts>
        <fullName>SupportRequest_SendemailtodesignatedapproverwhenRequestIsCreated</fullName>
        <ccEmails>idsam@univarusa.com</ccEmails>
        <description>Support Request:  Send email to designated approver when Request is created.</description>
        <protected>false</protected>
        <recipients>
            <field>Approver__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Support_Request_Approver</template>
    </alerts>
    <alerts>
        <fullName>Support_Req_Send_email_to_AccountOwner_when_Expiration_Date_is_within_15_Days_Em</fullName>
        <ccEmails>idsam@univarusa.com</ccEmails>
        <description>Support Req: Send email to Account Owner when Expiration Date is within 15 Days Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Support_Request_Owner_15_Day_Expiration_Date</template>
    </alerts>
    <alerts>
        <fullName>Support_Req_Send_email_to_Account_Owner_when_Expiration_Date_is_within_30_Days</fullName>
        <ccEmails>idsam@univarusa.com</ccEmails>
        <description>Support Req: Send email to Account Owner when Expiration Date is within 30 Days EM Alert</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Support_Request_Owner_30_Day_Expiration_Date</template>
    </alerts>
    <alerts>
        <fullName>Support_Req_Send_email_to_Account_Owner_when_Expiration_Date_is_within_30_Days_E</fullName>
        <ccEmails>idsam@univarusa.com</ccEmails>
        <description>Support Req: Send email to Account Owner when Expiration Date is within 30 Days Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Support_Request_Owner_30_Day_Expiration_Date</template>
    </alerts>
    <alerts>
        <fullName>Support_Request_Send_email_to_Approver_when_Approver_has_Changed</fullName>
        <ccEmails>idsam@univarusa.com</ccEmails>
        <description>Support Request: Send email to Approver when Approver has Changed.</description>
        <protected>false</protected>
        <recipients>
            <field>Approver__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Support_Request_Approver</template>
    </alerts>
    <rules>
        <fullName>Support Request%3A  Send EM to Account Owner when Approved</fullName>
        <actions>
            <name>SupportRequest_SendEmailtoOwnerwhenSupportRequestApprovedDateisnolongerblank</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Support_Request__c.Approval_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Send email to Account Owner when Support Request Approved Date is populated.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Support Request%3A  Send EM to Approver when Approver is changed%2E</fullName>
        <actions>
            <name>Support_Request_Send_email_to_Approver_when_Approver_has_Changed</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send email to the designated Approver when the Approver is changed.</description>
        <formula>(ISCHANGED( Approver__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Support Request%3A  Send EM to Approver when created</fullName>
        <actions>
            <name>SupportRequest_SendemailtodesignatedapproverwhenRequestIsCreated</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send email to the designated Approver when record is created.</description>
        <formula>NOT(ISBLANK(Approver__c ))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Support Request%3A Send EM to Account Owner when Expiration Date is within 15 days</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Support_Request__c.Expiration_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Send email to Account Owner when Expiration Date is within 15 days.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Support_Req_Send_email_to_AccountOwner_when_Expiration_Date_is_within_15_Days_Em</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Support_Request__c.Expiration_Date__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Support Request%3A Send EM to Account Owner when Expiration Date is within 30 days</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Support_Request__c.Expiration_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Send email to Account Owner when Expiration Date is within 30 days.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>Support_Request__c.Expiration_Date__c</offsetFromField>
            <timeLength>-30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
