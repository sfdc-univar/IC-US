<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>ChangeBCSUnivarStatustoExpired</fullName>
        <description>Change the BCS/UNIVAR STATUS field to EXPIRED.</description>
        <field>BCS_Univar_Status__c</field>
        <literalValue>Expired</literalValue>
        <name>Change BCS/Univar Status to Expired</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>OwnerExpDate60Days</fullName>
        <description>Set Owner Expiration Notice to 60 Days if the BCS/Univar Status is NOT Cancelled or Expired.</description>
        <field>OwnerExpirationNotice</field>
        <literalValue>60</literalValue>
        <name>OwnerExpDate60Days</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateStatustoExpired</fullName>
        <description>Update the Status to EXPIRED if the formula is true:  The BCS/Univar Status field is not EXPIRED and the Contract End Date is in the past.</description>
        <field>BCS_Univar_Status__c</field>
        <literalValue>Expired</literalValue>
        <name>Update Status to Expired</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Owner_Exp_Notice</fullName>
        <description>Update the Owner Expiration Notice field to &quot;None&quot; if the BCS/Univar Status = Expired or Cancelled.</description>
        <field>OwnerExpirationNotice</field>
        <name>Update Owner Exp Notice</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>DefaultOwnExpis60Days</fullName>
        <actions>
            <name>OwnerExpDate60Days</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contract.BCS_Univar_Status__c</field>
            <operation>equals</operation>
            <value>Pending Signature,NDA Signed,Executed</value>
        </criteriaItems>
        <description>If the &quot;BCS/Univar Status = Executed, Pending Signature, or NDA Signed, then Owner Expiration Notice shall be 60 Days.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>IfContractExpiredorCancelled</fullName>
        <actions>
            <name>Update_Owner_Exp_Notice</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contract.BCS_Univar_Status__c</field>
            <operation>equals</operation>
            <value>Cancelled,Expired</value>
        </criteriaItems>
        <description>If the Contract is Expired or Cancelled, then the Owner Expiration Notice should be &quot;none&quot;.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SetStatusToExpiredIfEndDatePastToday</fullName>
        <active>true</active>
        <description>If the Contract End Date is greater than TODAY, then set the BCS/Univar Status to &quot;Expired&quot;.</description>
        <formula>AND
( EndDate  &lt; TODAY(),  OR(
ISPICKVAL(BCS_Univar_Status__c, &quot;Executed&quot;),
ISPICKVAL(BCS_Univar_Status__c, &quot;Cancelled&quot; ),
ISPICKVAL(BCS_Univar_Status__c, &quot;Pending Signature&quot;),
ISPICKVAL(BCS_Univar_Status__c, &quot;NDA Signed&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>ChangeBCSUnivarStatustoExpired</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
