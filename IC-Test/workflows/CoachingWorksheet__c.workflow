<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>EmailDRManagerApproved</fullName>
        <description>Email Direct Report - Manager Approved</description>
        <protected>false</protected>
        <recipients>
            <field>DirectReport__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Coaching_FinalApproval</template>
    </alerts>
    <alerts>
        <fullName>EmailDRManagerRejected</fullName>
        <description>Email Direct Report - Manager Rejected</description>
        <protected>false</protected>
        <recipients>
            <field>DirectReport__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Coaching_Rejected</template>
    </alerts>
    <alerts>
        <fullName>EmailDRReady_for_Review</fullName>
        <description>Email Direct Report - Ready for Review</description>
        <protected>false</protected>
        <recipients>
            <field>DirectReport__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Coaching_Ready_for_Review</template>
    </alerts>
    <alerts>
        <fullName>Email_Manager_Feedback_Received</fullName>
        <description>Email Manager - Feedback Received</description>
        <protected>false</protected>
        <recipients>
            <field>Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Coaching_Feedback_Received</template>
    </alerts>
    <alerts>
        <fullName>Email_Manager_Recalled</fullName>
        <description>Email Manager - Recalled</description>
        <protected>false</protected>
        <recipients>
            <field>Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Coaching_Recalled</template>
    </alerts>
    <fieldUpdates>
        <fullName>CoachingFinal_Approval_Date</fullName>
        <description>set final approval date - used only by approval workflow</description>
        <field>FinalApprovalDate__c</field>
        <formula>TODAY()</formula>
        <name>Coaching - Final Approval Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CoachingInstructions</fullName>
        <description>Generic version using CASE statement. This works in regular workflow, but not in steps of the Approval process because there is no guarantee that the Status field update step will have been executed before this step, so the CASE statement is unreliable.</description>
        <field>Instructions__c</field>
        <formula>CASE ( Status__c,
&quot;Draft&quot;,
&quot;&lt;font color=&apos;blue&apos;&apos;&gt; &lt;b&gt;Manager:&lt;/b&gt; When you  are ready for your Direct Report to see the worksheet, change the status to &apos;Direct Report Review&apos; and hit Save. &lt;br&gt;&lt;br&gt;&quot; + 
&quot;&lt;b&gt;Direct Report:&lt;/b&gt; This worksheet is not ready for your review. Please ignore it.&quot;,
 &quot;Direct Report Review&quot;,
&quot;&lt;font color=&apos;blue&apos;&gt;&lt;b&gt; Direct Report:&lt;/b&gt;  Fill in your Next Steps and Action Items, &quot; +
&quot; then click the Submit for Approval button. &lt;br&gt;&lt;br&gt;&quot; +
&quot;&lt;b&gt;Manager:&lt;/b&gt; There is nothing for you to do at this stage. &lt;br&gt;&lt;br&gt;&quot; +
&quot;&lt;b&gt;Notes:&lt;/b&gt; &quot; +
&quot;&lt;li&gt;&lt;font color=&apos;blue&apos;&gt;Only the Direct Report can  submit a worksheet for approval. &quot; +
&quot;&lt;li&gt;&lt;font color=&apos;blue&apos;&gt;If Next Steps &amp; Actions Items are blank, you will not be allowed to submit the worksheet&quot;,
&quot;Feedback Received&quot;,
&quot;&lt;font color=&apos;blue&apos;&apos;&gt; &lt;b&gt;Manager:&lt;/b&gt;  Fill in any additional Next Steps and &quot; +
&quot; Action Items, then Approve or Reject.&lt;br&gt;&quot; + 
LPAD(&quot;(Please ignore the Reassign option.)&quot;,150,&quot;&amp;nbsp;&quot;) + &quot;&lt;br&gt;&lt;br&gt;&quot; +
&quot;&lt;b&gt;Direct Report:&lt;/b&gt; There is nothing for you to do at this stage, unless you decide to &quot; +
&quot; recall your approval request. &lt;br&gt; &quot; + 
LPAD(&quot;You can edit this worksheet by recalling it up until your manager approves it.&quot;,240,&quot;&amp;nbsp;&quot;),
&quot;Manager Approved&quot;,
&quot;&lt;b&gt;&lt;font color=&apos;blue&apos; size=&apos;2&apos;&gt; This worksheet is complete and locked. &quot;,
&quot;&quot;)</formula>
        <name>Coaching Instructions - All</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Coaching_Info</fullName>
        <field>Info__c</field>
        <formula>&quot;&lt;li&gt;&lt;font color=&apos;blue&apos;&gt;&lt;A HREF=&apos;https://na13.salesforce.com/sfc/#version?id=069a0000002T4Ft&apos;&gt;&lt;font color=&apos;blue&apos;&gt;Strength &amp; Weakness Indicators for Sales Competencies&lt;/A&gt;&quot; +
&quot;&lt;b&gt;&quot; +
&quot;&lt;li&gt;How do the Opportunities and Strengths above align to your development goals?&quot; +
&quot;&lt;li&gt;What can you do to begin improvements against opportunities?&quot; + 
&quot;&lt;li&gt;How can I support you in your in improvement efforts? &quot; +
&quot;&lt;li&gt;What other support resources (people, tools) can I provide you? &quot; +
&quot;&lt;br&gt;&lt;br&gt;&quot; +
&quot;Note your agreed-upon next steps in your action plan and follow up communication.&quot;</formula>
        <name>Coaching Info</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Coaching_Instr_Feedback_Received</fullName>
        <description>Populate Instructions for FBR status. Used in approval workflow instead of the generic &quot;Populate_Info&quot; version using &quot;CASE&quot; - because when submitting for approval, the status field won&apos;t be &quot;FBR&quot; yet so the CASE version won&apos;t work.</description>
        <field>Instructions__c</field>
        <formula>&quot;&lt;font color=&apos;blue&apos;&apos;&gt; &lt;b&gt;Manager:&lt;/b&gt;  Fill in any additional Next Steps and &quot; +
&quot; Action Items, then Approve or Reject.&lt;br&gt;&quot; + 
LPAD(&quot;(Please ignore the Reassign option.)&quot;,150,&quot;&amp;nbsp;&quot;) + &quot;&lt;br&gt;&lt;br&gt;&quot; +
&quot;&lt;b&gt;Direct Report:&lt;/b&gt; There is nothing for you to do at this stage, unless you decide to &quot; +
&quot; recall your approval request. &lt;br&gt; &quot; + 
LPAD(&quot;You can edit this worksheet by recalling it up until your manager approves it.&quot;,240,&quot;&amp;nbsp;&quot;)</formula>
        <name>Coaching Instr - Feedback Received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Coaching_Instr_Manager_Approved</fullName>
        <description>Populate Instructions for Manager Approved status. Used in approval workflow instead of the generic &quot;Populate_Info&quot; version using &quot;CASE&quot; - because when submitting for approval, the status field won&apos;t have been set yet so the CASE version won&apos;t work.</description>
        <field>Instructions__c</field>
        <formula>&quot;&lt;b&gt;&lt;font color=&apos;blue&apos; size=&apos;2&apos;&gt; This worksheet is complete and locked. &quot;</formula>
        <name>Coaching Instr - Manager Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Coaching_instr_DRR</fullName>
        <description>Populate Instructions for DRR status.  Used in approval workflow instead of the generic &quot;Populate_Info&quot; version using &quot;CASE&quot; - because when recalling or rejecting, the status field won&apos;t be &quot;DRR&quot; yet so the CASE version won&apos;t work.</description>
        <field>Instructions__c</field>
        <formula>&quot;&lt;font color=&apos;blue&apos;&gt;&lt;b&gt; Direct Report:&lt;/b&gt;  Fill in your Next Steps and Action Items, &quot; +
&quot; then click the &apos;Submit for Approval&apos; button. &lt;br&gt;&lt;br&gt;&quot; +
&quot;&lt;b&gt;Manager:&lt;/b&gt; There is nothing for you to do at this stage. &lt;br&gt;&lt;br&gt;&quot; +
&quot;&lt;b&gt;Notes:&lt;/b&gt; &quot; +
&quot;&lt;li&gt;&lt;font color=&apos;blue&apos;&gt;Only the Direct Report can  submit a worksheet for approval. &quot; +
&quot;&lt;li&gt;&lt;font color=&apos;blue&apos;&gt;If Next Steps &amp; Actions Items are blank, you will not be allowed to submit the worksheet.&quot;</formula>
        <name>Coaching Instr - Direct Report Review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RecordType_to_Feedback_Received</fullName>
        <field>RecordTypeId</field>
        <lookupValue>FeedbackReceived</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>RecordType to Feedback Received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RecordType_to_Manager_Approved</fullName>
        <field>RecordTypeId</field>
        <lookupValue>ManagerApproved</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>RecordType to Manager Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RecordType_to_Review</fullName>
        <field>RecordTypeId</field>
        <lookupValue>DirectReportReview</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>RecordType to Review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StatusFeedback_Received</fullName>
        <field>Status__c</field>
        <literalValue>Feedback Received</literalValue>
        <name>Status To Feedback Received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_Manager_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Manager Approved</literalValue>
        <name>Status to Manager Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_Review</fullName>
        <field>Status__c</field>
        <literalValue>Direct Report Review</literalValue>
        <name>Status to Review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Populate Info</fullName>
        <actions>
            <name>Coaching_Info</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CoachingWorksheet__c.Status__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Repopulate whenever saved, just to ensure &apos;Helpful Info&apos; has the right value.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Populate Instructions - Generic</fullName>
        <actions>
            <name>CoachingInstructions</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CoachingWorksheet__c.Status__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Repopulate whenever saved.  Not triggered by approval workflow though, so we also need separate versions of the field update to update instructions for one status at a time.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Release For Review</fullName>
        <actions>
            <name>EmailDRReady_for_Review</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>CoachingInstructions</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>RecordType_to_Review</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Activated when a Manager first releases Coaching Worksheet to a Direct Report by changing the Status dropdown to &quot;Direct Report Review&quot;.  NOT activated by the Approval Workflow process when worksheet is rejected or recalled.</description>
        <formula>AND(ISPICKVAL(Status__c,&quot;Direct Report Review&quot;),OR(ISCHANGED(Status__c),ISNEW()))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
