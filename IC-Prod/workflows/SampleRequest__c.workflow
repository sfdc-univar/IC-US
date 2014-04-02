<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>SampleRequest_SendemailtoAccountOwnerwhenSampleRequestCreatedDateisnotequaltonul</fullName>
        <description>Sample Request:  Send email to Account Owner when Sample Request &quot;Created Date&quot; is not equal to null.</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/SampleRequestSendemailnotificationofNewSampleRequesttoAccountOwner</template>
    </alerts>
    <fieldUpdates>
        <fullName>AdddatetoApprovedPicklistModDate</fullName>
        <description>When the &quot;Approved?&quot; field is changed, populate the &quot;Approved Picklist Mod Date&quot; field.</description>
        <field>Approved_Picklist_Mod_Date__c</field>
        <formula>Today()</formula>
        <name>Add date to Approved Picklist Mod Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_SR_Stage_to_Bench_Sample</fullName>
        <description>Change the SR Stage to &quot;Bench Sample&quot; if the &quot;Bench Sample&quot; checkbox is checked.</description>
        <field>Stage__c</field>
        <literalValue>Bench Sample</literalValue>
        <name>Change SR Stage to Bench Sample</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StageFieldtoApproved</fullName>
        <description>Change Stage field to &quot;Approved&quot; if the Received Date and Test Dates are not blank and the &quot;Approved?&quot; field is set to Yes.</description>
        <field>Stage__c</field>
        <literalValue>Approved</literalValue>
        <name>Stage Field to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StageFieldtoReceived</fullName>
        <description>If the Rec&apos;d date is not blank, change Stage to Received.</description>
        <field>Stage__c</field>
        <literalValue>Received</literalValue>
        <name>Stage Field to Received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_Field_Request</fullName>
        <description>Change Stage field to &quot;Request&quot; if the  &quot;Dead?&quot; field is NOT checked (False).</description>
        <field>Stage__c</field>
        <literalValue>Request</literalValue>
        <name>Stage Field Request</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StagechangedtoPurchased</fullName>
        <description>Change Stage field to &quot;Purchased&quot; if the Rec&apos;d date and Test Date are not blank, the Approved? field is Yes and the Actual Purchase Date is not blank.</description>
        <field>Stage__c</field>
        <literalValue>Purchased</literalValue>
        <name>Stage changed to Purchased</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StagefieldtoCommitmenttoPurchase</fullName>
        <description>Set Stage field to &quot;Commitment to Purchase&quot; if condition is met.</description>
        <field>Stage__c</field>
        <literalValue>Commitment to Purchase</literalValue>
        <name>Stage field to &quot;Commitment to Purchase&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StagefieldtoDelayed</fullName>
        <description>Change Stage field to &quot;Delayed&quot; if the Approved? field was changed over 60 days from today&apos;s date and the Est. Purchase Date is blank.</description>
        <field>Stage__c</field>
        <literalValue>Delayed</literalValue>
        <name>Stage field to Delayed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StagetoDead</fullName>
        <description>Change Stage field to &quot;Dead&quot; if the Rec&apos;d date and Test Date are not blank, the &quot;Approved?&quot; is set to Yes and the &quot;Dead?&quot; field is checked (True).</description>
        <field>Stage__c</field>
        <literalValue>Dead</literalValue>
        <name>Stage to Dead</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StagetoNotApproved</fullName>
        <description>Change Stage field to &quot;Not Approved&quot; if Received Date and Test Date are not blanks and &quot;Approved?&quot; field is set to No.</description>
        <field>Stage__c</field>
        <literalValue>Not Approved</literalValue>
        <name>Stage to Not Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StagetoTested</fullName>
        <description>Change Stage field to &quot;Testing&quot; if Received Date and Testing Started Date are not blank values.</description>
        <field>Stage__c</field>
        <literalValue>Testing</literalValue>
        <name>Stage to Testing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Approved%3F field changed%2C populate Approved Date field</fullName>
        <actions>
            <name>AdddatetoApprovedPicklistModDate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When the &quot;Approved?&quot; field is changed, at all, populate the &quot;Approved Picklist Mod Date&quot; field with that day&apos;s date.</description>
        <formula>ISCHANGED(Approved__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Sample Request%3A  Send email to Account Owner when Sample Request is created%2E</fullName>
        <actions>
            <name>SampleRequest_SendemailtoAccountOwnerwhenSampleRequestCreatedDateisnotequaltonul</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SampleRequest__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.OwnerId</field>
            <operation>notEqual</operation>
            <value>HAMOZ,HASER,HANER,HANCR,HASCR,HAWER,HACER,HAEAR</value>
        </criteriaItems>
        <description>Send an email to the Account Owner on the Account when a Sample Request is created.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Stage Field Population 1</fullName>
        <actions>
            <name>StageFieldtoReceived</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>SampleRequest__c.Received_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.IfNoWhenWillTestOccur__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Approved__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Actual_Purchase_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Dead__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Bench_Sample__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Change Stage field to &quot;Received&quot; if the Received Date value is not blank, the Testing Started Date IS blank, the Approved? field is blank, the Actual Purchase Date is blank and the Dead? field is unchecked (False) and &quot;Bench Sample&quot; is not checked.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stage Field Population 2</fullName>
        <actions>
            <name>StagetoTested</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5</booleanFilter>
        <criteriaItems>
            <field>SampleRequest__c.IfNoWhenWillTestOccur__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Approved__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Actual_Purchase_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Dead__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Bench_Sample__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Change Stage Field to &quot;Testing&quot; if Testing Started Date is not blank, Approved? field IS blank, Actual Purchase Date is blank and Dead? is unchecked (False) and &quot;Bench Sample&quot; is not checked.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stage Field Population 3</fullName>
        <actions>
            <name>StageFieldtoApproved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5</booleanFilter>
        <criteriaItems>
            <field>SampleRequest__c.Approved__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Actual_Purchase_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Dead__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.EstimatedPurchasingDate__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Bench_Sample__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Change Stage Field to &quot;Approved&quot; if the Approved? field = Yes, and the  Actual and Estimated Purchase Dates are blank and the Dead? field is unchecked (False) and &quot;Bench Sample&quot; is not checked.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stage Field Population 4</fullName>
        <actions>
            <name>StagetoNotApproved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5</booleanFilter>
        <criteriaItems>
            <field>SampleRequest__c.Approved__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Actual_Purchase_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Dead__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.EstimatedPurchasingDate__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Bench_Sample__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Change Stage Field to &quot;Not Approved&quot; if the Approved? field = No, and the Actual and Estimated Purchase Dates are blank and the Dead? field is unchecked (False) and &quot;Bench Sample&quot; is not checked.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stage Field Population 5</fullName>
        <actions>
            <name>StagefieldtoCommitmenttoPurchase</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SampleRequest__c.EstimatedPurchasingDate__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Actual_Purchase_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Approved__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Dead__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Bench_Sample__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Change Stage Field to &quot;Commitment to Purchase&quot; if the Est. Purchase Date IS NOT blank, the Actual Purchase Date is blank, the Approved? field is either Yes or No (not null) and the Dead? field is unchecked (False) and &quot;Bench Sample&quot; is not checked.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stage Field Population 6</fullName>
        <actions>
            <name>StagechangedtoPurchased</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SampleRequest__c.Actual_Purchase_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Dead__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Bench_Sample__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Change Stage Field to &quot;Purchased&quot; if the Actual Purchase Date IS NOT blank and the Dead? field is unchecked (False)and &quot;Bench Sample&quot; is not checked.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stage Field Population 7</fullName>
        <actions>
            <name>StagefieldtoDelayed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Change Stage Field to &quot;Delayed&quot; if Approved? field was changed over 60 days from today&apos;s date AND the Est. and Actual Purchase Dates are blank and &quot;Bench Sample&quot; is not checked.</description>
        <formula>AND(TODAY() - Approved_Picklist_Mod_Date__c &gt;= 60, ISNULL(EstimatedPurchasingDate__c), ISNULL ( Actual_Purchase_Date__c),  Bench_Sample__c &lt;&gt; TRUE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stage Field Population 8</fullName>
        <actions>
            <name>StagetoDead</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>SampleRequest__c.Dead__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Change Stage Field to &quot;Dead&quot; if the Dead? field is checked (True).</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stage Field Population 9</fullName>
        <actions>
            <name>Change_SR_Stage_to_Bench_Sample</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SampleRequest__c.Bench_Sample__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>SampleRequest__c.Dead__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Change Stage Field to &quot;Bench Sample&quot; if the &quot;Bench Sample&quot; checkbox field is checked (True).</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stage Field Request</fullName>
        <actions>
            <name>Stage_Field_Request</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>SampleRequest__c.Dead__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Change Stage Field to &quot;Received&quot; if the Dead? field is not checked (false).</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
