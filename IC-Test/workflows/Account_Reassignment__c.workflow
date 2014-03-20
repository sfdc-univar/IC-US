<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Account_Reassignment_Request_Approval_Notification</fullName>
        <description>Account Reassignment Request Approval Notification</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Account_Reassignment/Account_Reassignment_Approval_Notification</template>
    </alerts>
    <alerts>
        <fullName>Account_Reassignment_Request_Rejection_Notification</fullName>
        <description>Account Reassignment Request Rejection Notification</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Account_Reassignment/Account_Reassignment_Rejection_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>ARR_Rejected_Record_Rejected_Date</fullName>
        <description>When an ARR is rejected, record the reject date in Rejected Date</description>
        <field>Rejected_Date__c</field>
        <formula>NOW()</formula>
        <name>ARR Rejected, Record Rejected Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>If_Approved_Change_Status_to_Approved</fullName>
        <description>If all approvers have approved a Account Reassignment Request, change the status to Approved</description>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>If Approved, Change Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>If_Rejected_Change_Status_to_Rejected</fullName>
        <description>If any manager rejects an Account Reassignment Request, flip the status to Rejected.</description>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>If Rejected, Change Status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approved_Date</fullName>
        <description>When ARR Status = Approved, Record date in Approved Date field</description>
        <field>Approved_Date__c</field>
        <formula>NOW()</formula>
        <name>Update Approved Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>If Approved%2C Change Status to Approved</fullName>
        <actions>
            <name>If_Approved_Change_Status_to_Approved</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Approved_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 AND 2 AND 3 AND 4)</booleanFilter>
        <criteriaItems>
            <field>Account_Reassignment__c.Current_Owner_Manager_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account_Reassignment__c.Current_Owner_RSD_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account_Reassignment__c.New_Owner_Manager_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account_Reassignment__c.New_Owner_RSD_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <description>If all managers have Approved the Account Reassignment Request, flip the status to &quot;Approved&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>If Approved%2C Send Notification</fullName>
        <actions>
            <name>Account_Reassignment_Request_Approval_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 AND 2 AND 3 AND 4)</booleanFilter>
        <criteriaItems>
            <field>Account_Reassignment__c.Current_Owner_Manager_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account_Reassignment__c.Current_Owner_RSD_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account_Reassignment__c.New_Owner_Manager_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account_Reassignment__c.New_Owner_RSD_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <description>If an Account Reassignment is Approved, send a notification to the Requestor</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>If Rejected%2C Change Status to Rejected</fullName>
        <actions>
            <name>ARR_Rejected_Record_Rejected_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>If_Rejected_Change_Status_to_Rejected</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3 OR 4</booleanFilter>
        <criteriaItems>
            <field>Account_Reassignment__c.Current_Owner_Manager_Approval__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account_Reassignment__c.Current_Owner_RSD_Approval__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account_Reassignment__c.New_Owner_Manager_Approval__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account_Reassignment__c.New_Owner_RSD_Approval__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <description>If ANY of the managers have rejected the Account Reassignment Request, flip the status to &quot;Rejected&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>If Rejected%2C Send Notification</fullName>
        <actions>
            <name>Account_Reassignment_Request_Rejection_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3 OR 4</booleanFilter>
        <criteriaItems>
            <field>Account_Reassignment__c.Current_Owner_Manager_Approval__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account_Reassignment__c.Current_Owner_RSD_Approval__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account_Reassignment__c.New_Owner_Manager_Approval__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account_Reassignment__c.New_Owner_RSD_Approval__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <description>If an Account Reassignment is Rejected, send a notification to the Requestor</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
