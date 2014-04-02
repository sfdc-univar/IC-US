<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>BDA_ALL_Brian_and_Jane_receive_email_for_Opps_over_1M_that_are_NEW</fullName>
        <description>BDA:  All Brian and Jane receive email for Opps over $1M that are NEW</description>
        <protected>false</protected>
        <recipients>
            <recipient>brian.feldtman@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jane.wells@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_ALL_over_500k_and_in_Closed_Won_Stage</fullName>
        <description>BDA:  All over $500k and in Closed WON Stage</description>
        <protected>false</protected>
        <recipients>
            <recipient>bennett.ortiz@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>brian.feldtman@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>dave.strizzi@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jane.wells@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>shirley.schumacher@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>terry.hill@univarcorp.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_Eastern_over_250k_and_in_Closed_Won_Stage</fullName>
        <description>BDA:  Eastern for over $250k and in Closed WON Stage.</description>
        <protected>false</protected>
        <recipients>
            <recipient>debra.bailey@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>joe.ripp@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_GM_Bob_Crandall_New_over_500k</fullName>
        <description>BDA: GM:Bob Crandall - New over $500k</description>
        <protected>false</protected>
        <recipients>
            <recipient>WE1GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_IMs_for_CASE_250k_for_WON</fullName>
        <description>BDA:  IMs for CASE &gt;$250k for WON</description>
        <protected>false</protected>
        <recipients>
            <recipient>dave.johnson@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>stephen.hollman@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_IMs_for_CASE_500k_for_NEW</fullName>
        <description>BDA:  IMs for CASE &gt;$500k for NEW</description>
        <protected>false</protected>
        <recipients>
            <recipient>dave.johnson@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>stephen.hollman@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_IMs_for_ChemCare_250k_for_WON</fullName>
        <description>BDA:  IMs for ChemCare &gt;$250k for WON</description>
        <protected>false</protected>
        <recipients>
            <recipient>steve.macdonell@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_IMs_for_ChemCare_500k_for_NEW</fullName>
        <description>BDA:  IMs for ChemCare &gt;$500k for NEW</description>
        <protected>false</protected>
        <recipients>
            <recipient>steve.macdonell@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_IMs_for_Energy_250k_for_WON</fullName>
        <description>BDA:  IMs for Energy &gt;$250k for WON</description>
        <protected>false</protected>
        <recipients>
            <recipient>jason.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_IMs_for_Energy_500k_for_NEW</fullName>
        <description>BDA:  IMs for Energy &gt;$500k for NEW</description>
        <protected>false</protected>
        <recipients>
            <recipient>jason.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_IMs_for_HIC_250k_for_WON</fullName>
        <description>BDA:  IMs for HIC &gt;$250k for WON</description>
        <protected>false</protected>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_IMs_for_HIC_500k_for_NEW</fullName>
        <description>BDA:  IMs for HIC &gt;$500k for NEW</description>
        <protected>false</protected>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_IMs_for_OilField_250k_for_WON</fullName>
        <description>BDA:  IMs for Oil Field &gt;$250k for WON</description>
        <protected>false</protected>
        <recipients>
            <recipient>jason.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_IMs_for_OilField_500k_for_NEW</fullName>
        <description>BDA:  IMs for Oil Field &gt;$500k for NEW</description>
        <protected>false</protected>
        <recipients>
            <recipient>john.dinsenbacher@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_IMs_for_Personal_Care_250k_for_WON</fullName>
        <description>BDA:  IMs for Personal Care &gt;$250k for WON</description>
        <protected>false</protected>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_IMs_for_Personal_Care_500k_for_NEW</fullName>
        <description>BDA:  IMs for Personal Care &gt;$500k for NEW</description>
        <protected>false</protected>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_IMs_for_Pharma_250k_for_WON</fullName>
        <description>BDA:  IMs for Pharma &gt;$250k for WON</description>
        <protected>false</protected>
        <recipients>
            <recipient>tom.nist@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_NCR_Opps_500k_and_not_Closed</fullName>
        <description>BDA:  NCR Opps &gt;=$500k and not in Closed Won or Closed Lost Stage</description>
        <protected>false</protected>
        <recipients>
            <recipient>phil.scafido@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>scott.obermeier@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_NER_over_500k_and_NEW</fullName>
        <description>BDA:  NER over $500k and NEW.</description>
        <protected>false</protected>
        <recipients>
            <recipient>debra.bailey@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>joe.ripp@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_PM_Judy_Jones_500k_or_250k_for_NEW</fullName>
        <description>BDA: PM Judy Jones &gt;500k# or &gt;$250k for NEW</description>
        <protected>false</protected>
        <recipients>
            <recipient>judy.jones@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_PM_Judy_Jones_500k_or_250k_for_WON</fullName>
        <description>BDA: PM Judy Jones &gt;500k# or &gt;$250k for WON</description>
        <protected>false</protected>
        <recipients>
            <recipient>judy.jones@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_PM_Steve_Weigel_EG_and_DEG_200k_and_NEW_Email_Alert</fullName>
        <description>BDA: PM Steve Weigel EG and DEG &gt;=$200k and NEW Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_PM_Steve_Weigel_EG_and_DEG_200k_for_WON_Opportunities_Email_Alert</fullName>
        <description>BDA: PM Steve Weigel EG and DEG &gt;=$200k for WON Opportunities Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_PM_Steve_Weigel_PG_400k_and_NEW_Email_Alert</fullName>
        <description>BDA: PM Steve Weigel PG &gt;=$400k and NEW Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_PM_Steve_Weigel_PG_400k_for_WON_Opps_Email_Alert</fullName>
        <description>BDA: PM Steve Weigel PG &gt;=$400k for WON Opps Email Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>sheila.mcevoy@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_PM_for_500k_LBS_for_Glycol_Ether_EB_IPA_MEK_Acetone_Toluene_Xylene</fullName>
        <description>BDA: PM for &gt; 500k LBS for Glycol Ether EB, IPA, MEK, Acetone, Toluene, Xylene</description>
        <protected>false</protected>
        <recipients>
            <recipient>mark.rost@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_PM_for_500k_LBS_or_250k_for_NEW_for_Glycol_EtherEB_IPA_MEK_Acetone_Toluene_X</fullName>
        <description>BDA: PM for &gt;500k LBS or &gt;$250k for NEW for Glycol Ether EB, IPA, MEK, Acetone, Toluene, Xylene</description>
        <protected>false</protected>
        <recipients>
            <recipient>brian.feldtman@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mark.rost@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_PMs_for_500k_lbs_or_250k_for_WON</fullName>
        <description>BDA: PMs for &gt;500,000 lbs or &gt;$250k for WON</description>
        <protected>false</protected>
        <recipients>
            <recipient>brian.feldtman@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mark.rost@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_SCR_RVPs_and_RDMS_for_500k_NEW</fullName>
        <description>BDA:  SCR RVPs and RDMS for &gt;$500k NEW</description>
        <protected>false</protected>
        <recipients>
            <recipient>jason.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>robert.bennett@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_SCR_over_250k_and_in_Closed_Won_Stage</fullName>
        <description>BDA:  SCR over $250k and in Closed WON Stage.</description>
        <protected>false</protected>
        <recipients>
            <recipient>jason.miller@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_SER_over_250k_and_in_Closed_Won_Stage</fullName>
        <description>BDA:  SER over $250k and in Closed WON Stage.</description>
        <protected>false</protected>
        <recipients>
            <recipient>thomas.wolk@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_SER_over_500k_and_NEW</fullName>
        <description>BDA:  SER over $500k and NEW.</description>
        <protected>false</protected>
        <recipients>
            <recipient>sarah.dixon@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>thomas.wolk@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_Steve_MacDonell_receives_email_for_Opps_over_500k_that_are_NEW_and_are_for_C</fullName>
        <description>BDA: Steve MacDonell receives email for Opps over $500k that are NEW and are for CASE, ChemCare or Energy Industry.</description>
        <protected>false</protected>
        <recipients>
            <recipient>steve.macdonell@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_Tom_McLelland_receives_email_for_Opps_over_500k_that_are_WON_and_are_for_CAS</fullName>
        <description>BDA: Tom McLelland receives email for Opps over $500k that are WON and are for CASE, ChemCare or Energy Industry.</description>
        <protected>false</protected>
        <recipients>
            <recipient>steve.macdonell@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_WER_over_250k_and_in_Closed_Won_Stage</fullName>
        <description>BDA:  WER over $250k and in Closed WON Stage.</description>
        <protected>false</protected>
        <recipients>
            <recipient>brian.rinehart@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>james.molica@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>BDA_WER_over_500k_and_NEW</fullName>
        <description>BDA:  WER over $500k and NEW.</description>
        <protected>false</protected>
        <recipients>
            <recipient>brian.jurcak@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>brian.rinehart@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>BDA_over_250k_and_in_Closed_Won_Stage</fullName>
        <description>BDA:  Central RVP for over $250k and in Closed Won Stage.</description>
        <protected>false</protected>
        <recipients>
            <recipient>phil.scafido@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>scott.obermeier@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>GM_Bob_Crandall_Won_over_250k</fullName>
        <description>GM:Bob Crandall - Won over $250k</description>
        <protected>false</protected>
        <recipients>
            <recipient>WE1GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_WON</template>
    </alerts>
    <alerts>
        <fullName>IMs_for_Pharma_500k_for_NEW</fullName>
        <description>BDA:  IMs for Pharma &gt;$500k for NEW</description>
        <protected>false</protected>
        <recipients>
            <recipient>tom.nist@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/Big_Deal_Alert_TEXT_for_NEW</template>
    </alerts>
    <alerts>
        <fullName>OPP_Driver_Initiated_Opportunity_Alert_Email</fullName>
        <description>OPP:  Driver Initiated Opportunity Alert Email</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/OPP_with_Driver_as_Lead_Source</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_Central_RSD_and_Sales_Ops_for_LOST_ops_no_limit</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <ccEmails>Phil.Scafido@univarusa.com</ccEmails>
        <ccEmails>Lis.Murphy@univarusa.com</ccEmails>
        <ccEmails>Sheila.McEvoy@univarusa.com</ccEmails>
        <description>Send Email to Central RSD and Sales Ops for LOST ops no limit</description>
        <protected>false</protected>
        <recipients>
            <recipient>CentralRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC14NCDSalesManagerChicago</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC14NCWSalesManagerStPaulMlwkee</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC1GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC24NCESalesManagerBROmaha</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC24NCFSalesManagerStLouisSF_KC</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC2GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC34CSBSalesManagerSanAntonioOD</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC34SCWSalesManagerDallas</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC3_General_Manager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC44SCKSalesManagerOklahomaCity</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC4GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC54SCGSalesManagerLafayette</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC54SCRSalesManagerHouston</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC5GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC74CNASalesManagerIndianapolis</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC74CNBSalesManagerDetroitToledo</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC7GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_LOST_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_Central_RSD_and_Sales_Ops_for_LOST_ops_no_limit_2</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <description>Send Email to Central RSD and Sales Ops for LOST ops no limit -2</description>
        <protected>false</protected>
        <recipients>
            <recipient>CentralRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_LOST_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_Central_RSD_and_Sales_Ops_for_NEW_ops_no_limit</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <ccEmails>Phil.Scafido@univarusa.com</ccEmails>
        <ccEmails>Lis.Murphy@univarusa.com</ccEmails>
        <ccEmails>Sheila.McEvoy@univarusa.com</ccEmails>
        <description>Send Email to Central RSD and Sales Ops for NEW ops no limit</description>
        <protected>false</protected>
        <recipients>
            <recipient>CentralRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC14NCDSalesManagerChicago</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC14NCWSalesManagerStPaulMlwkee</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC1GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC24NCESalesManagerBROmaha</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC24NCFSalesManagerStLouisSF_KC</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC2GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC34CSBSalesManagerSanAntonioOD</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC34SCWSalesManagerDallas</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC3_General_Manager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC44SCKSalesManagerOklahomaCity</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC4GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC54SCGSalesManagerLafayette</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC54SCRSalesManagerHouston</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC5GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC74CNASalesManagerIndianapolis</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC74CNBSalesManagerDetroitToledo</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC7GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_NEW_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_Central_RSD_and_Sales_Ops_for_NEW_ops_no_limit_2</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <description>Send Email to Central RSD and Sales Ops for NEW ops no limit -2</description>
        <protected>false</protected>
        <recipients>
            <recipient>CentralRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_NEW_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_Central_RSD_and_Sales_Ops_for_WON_ops_no_limit</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <ccEmails>Phil.Scafido@univarusa.com</ccEmails>
        <ccEmails>Lis.Murphy@univarusa.com</ccEmails>
        <ccEmails>Sheila.McEvoy@univarusa.com</ccEmails>
        <description>Send Email to Central RSD and Sales Ops for WON ops no limit</description>
        <protected>false</protected>
        <recipients>
            <recipient>CentralRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC14NCDSalesManagerChicago</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC14NCWSalesManagerStPaulMlwkee</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC1GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC24NCESalesManagerBROmaha</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC24NCFSalesManagerStLouisSF_KC</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC2GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC34CSBSalesManagerSanAntonioOD</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC34SCWSalesManagerDallas</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC3_General_Manager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC44SCKSalesManagerOklahomaCity</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC4GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC54SCGSalesManagerLafayette</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC54SCRSalesManagerHouston</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC5GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC74CNASalesManagerIndianapolis</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC74CNBSalesManagerDetroitToledo</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NC7GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_WON_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_Central_RSD_and_Sales_Ops_for_WON_ops_no_limit_2</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <description>Send Email to Central RSD and Sales Ops for WON ops no limit -2</description>
        <protected>false</protected>
        <recipients>
            <recipient>CentralRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_WON_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_East_RSD_and_Sales_Ops_for_LOST_ops_no_limit</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <ccEmails>Phil.Scafido@univarusa.com</ccEmails>
        <ccEmails>Lis.Murphy@univarusa.com</ccEmails>
        <ccEmails>Sheila.McEvoy@univarusa.com</ccEmails>
        <description>Send Email to East RSD and Sales Ops for LOST ops no limit</description>
        <protected>false</protected>
        <recipients>
            <recipient>EasternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE14NEUSalesManagerProvidence</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE1GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE24NEASalesManagerMorrisville</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE24NECSalesManagerMorrisville</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE24NEHSalesManagerHarrisburg</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE24NETSalesManagerAltoona</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE2GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE34ENCSalesManager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE34NCOSalesManagerLouisville</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE34NCSSalesManagerCincinnati</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE34NEWSalesManagerCleveland</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE3GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE44SENSalesManager_Spartanburg</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE44SEXSalesManager_Richmond</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE4GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SEASalesManagerAtlanta</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SEJSalesManagerNashville</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SESSalesManagerPuertoRico</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SEWSalesManagerAtlanta</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SEZSalesManagerFlorida</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE5GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_LOST_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_East_RSD_and_Sales_Ops_for_LOST_ops_no_limit_2</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <description>Send Email to East RSD and Sales Ops for LOST ops no limit -2</description>
        <protected>false</protected>
        <recipients>
            <recipient>EasternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_LOST_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_East_RSD_and_Sales_Ops_for_NEW_ops_no_limit</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <ccEmails>Phil.Scafido@univarusa.com</ccEmails>
        <ccEmails>Lis.Murphy@univarusa.com</ccEmails>
        <ccEmails>Sheila.McEvoy@univarusa.com</ccEmails>
        <description>Send Email to East RSD and Sales Ops for NEW ops no limit</description>
        <protected>false</protected>
        <recipients>
            <recipient>EasternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE14NEUSalesManagerProvidence</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE1GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE24NEASalesManagerMorrisville</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE24NECSalesManagerMorrisville</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE24NEHSalesManagerHarrisburg</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE24NETSalesManagerAltoona</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE2GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE34ENCSalesManager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE34NCOSalesManagerLouisville</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE34NCSSalesManagerCincinnati</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE34NEWSalesManagerCleveland</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE3GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE44SENSalesManager_Spartanburg</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE44SEXSalesManager_Richmond</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE4GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SEASalesManagerAtlanta</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SEJSalesManagerNashville</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SESSalesManagerPuertoRico</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SEWSalesManagerAtlanta</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SEZSalesManagerFlorida</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE5GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_NEW_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_East_RSD_and_Sales_Ops_for_NEW_ops_no_limit_2</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <description>Send Email to East RSD and Sales Ops for NEW ops no limit -2</description>
        <protected>false</protected>
        <recipients>
            <recipient>EasternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_NEW_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_East_RSD_and_Sales_Ops_for_WON_ops_no_limit</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <ccEmails>Phil.Scafido@univarusa.com</ccEmails>
        <ccEmails>Lis.Murphy@univarusa.com</ccEmails>
        <ccEmails>Sheila.McEvoy@univarusa.com</ccEmails>
        <description>Send Email to East RSD and Sales Ops for WON ops no limit</description>
        <protected>false</protected>
        <recipients>
            <recipient>EasternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE14NEUSalesManagerProvidence</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE1GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE24NEASalesManagerMorrisville</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE24NECSalesManagerMorrisville</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE24NEHSalesManagerHarrisburg</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE24NETSalesManagerAltoona</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE2GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE34ENCSalesManager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE34NCOSalesManagerLouisville</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE34NCSSalesManagerCincinnati</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE34NEWSalesManagerCleveland</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE3GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE44SENSalesManager_Spartanburg</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE44SEXSalesManager_Richmond</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE4GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SEASalesManagerAtlanta</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SEJSalesManagerNashville</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SESSalesManagerPuertoRico</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SEWSalesManagerAtlanta</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE54SEZSalesManagerFlorida</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>NE5GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_WON_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_East_RSD_and_Sales_Ops_for_WON_ops_no_limit_2</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <description>Send Email to East RSD and Sales Ops for WON ops no limit -2</description>
        <protected>false</protected>
        <recipients>
            <recipient>EasternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_WON_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_RSD_and_Sales_Ops_for_LOST_opps_over_250k_Central</fullName>
        <ccEmails>bennett.ortiz@univarusa.com</ccEmails>
        <description>Send Email to RSD and Sales Ops for LOST opps over $250k - Central</description>
        <protected>false</protected>
        <recipients>
            <recipient>CentralRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_LOST_in_HTML</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_RSD_and_Sales_Ops_for_LOST_opps_over_250k_Eastern</fullName>
        <ccEmails>bennett.ortiz@univarusa.com</ccEmails>
        <description>Send Email to RSD and Sales Ops for LOST opps over $250k - Eastern</description>
        <protected>false</protected>
        <recipients>
            <recipient>EasternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_LOST_in_HTML</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_RSD_and_Sales_Ops_for_LOST_opps_over_250k_Western</fullName>
        <ccEmails>bennett.ortiz@univarusa.com</ccEmails>
        <description>Send Email to RSD and Sales Ops for LOST opps over $250k - Western</description>
        <protected>false</protected>
        <recipients>
            <recipient>WesternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>james.molica@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_LOST_in_HTML</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_RSD_and_Sales_Ops_for_NEW_opps_over_250kEastern</fullName>
        <ccEmails>bennett.ortiz@univarusa.com</ccEmails>
        <description>Send Email to RSD and Sales Ops for NEW opps over $250k - Eastern</description>
        <protected>false</protected>
        <recipients>
            <recipient>EasternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_NEW_in_HTML</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_RSD_and_Sales_Ops_for_NEW_opps_over_250k_Central</fullName>
        <ccEmails>bennett.ortiz@univarusa.com</ccEmails>
        <description>Send Email to RSD and Sales Ops for NEW opps over $250k - Central</description>
        <protected>false</protected>
        <recipients>
            <recipient>CentralRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_NEW_in_HTML</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_RSD_and_Sales_Ops_for_NEW_opps_over_250k_Western</fullName>
        <ccEmails>bennett.ortiz@univarusa.com</ccEmails>
        <description>Send Email to RSD and Sales Ops for NEW opps over $250k - Western</description>
        <protected>false</protected>
        <recipients>
            <recipient>WesternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>james.molica@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_NEW_in_HTML</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_RSD_and_Sales_Ops_for_WON_opps_over_250kEastern</fullName>
        <ccEmails>bennett.ortiz@univarusa.com</ccEmails>
        <description>Send Email to RSD and Sales Ops for WON opps over $250k - Eastern</description>
        <protected>false</protected>
        <recipients>
            <recipient>EasternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_WON_in_HTML</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_RSD_and_Sales_Ops_for_WON_opps_over_250k_Central</fullName>
        <ccEmails>bennett.ortiz@univarusa.com</ccEmails>
        <description>Send Email to RSD and Sales Ops for WON opps over $250k - Central</description>
        <protected>false</protected>
        <recipients>
            <recipient>CentralRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_WON_in_HTML</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_RSD_and_Sales_Ops_for_WON_opps_over_250k_Western</fullName>
        <ccEmails>bennett.ortiz@univarusa.com</ccEmails>
        <description>Send Email to RSD and Sales Ops for WON opps over $250k - Western</description>
        <protected>false</protected>
        <recipients>
            <recipient>WesternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>james.molica@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_WON_in_HTML</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_West_RSD_and_Sales_Ops_for_LOST_ops_no_limit</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <ccEmails>Phil.Scafido@univarusa.com</ccEmails>
        <ccEmails>Lis.Murphy@univarusa.com</ccEmails>
        <ccEmails>Sheila.McEvoy@univarusa.com</ccEmails>
        <description>Send Email to West RSD and Sales Ops for LOST ops no limit</description>
        <protected>false</protected>
        <recipients>
            <recipient>WE14WEISalesManagerSanJose</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE1GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE24WECSalesManagerSLCDenver</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE2GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE34WEDSalesManagerPhoenix</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE3GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE44WEFSalesManagerLosAngeles</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE44WEGSalesManagerSanDiego</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE4GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE5GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WesternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_LOST_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_West_RSD_and_Sales_Ops_for_LOST_ops_no_limit_2</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <description>Send Email to West RSD and Sales Ops for LOST ops no limit -2</description>
        <protected>false</protected>
        <recipients>
            <recipient>WesternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>james.molica@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_LOST_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_West_RSD_and_Sales_Ops_for_NEW_ops_no_limit</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <ccEmails>Phil.Scafido@univarusa.com</ccEmails>
        <ccEmails>Lis.Murphy@univarusa.com</ccEmails>
        <ccEmails>Sheila.McEvoy@univarusa.com</ccEmails>
        <description>Send Email to West RSD and Sales Ops for NEW ops no limit</description>
        <protected>false</protected>
        <recipients>
            <recipient>WE14WEISalesManagerSanJose</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE1GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE24WECSalesManagerSLCDenver</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE2GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE34WEDSalesManagerPhoenix</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE3GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE44WEFSalesManagerLosAngeles</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE44WEGSalesManagerSanDiego</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE4GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE54WEJSalesManager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE54WELSalesManagerPortland</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE5GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WesternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_NEW_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_West_RSD_and_Sales_Ops_for_NEW_ops_no_limit_2</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <description>Send Email to West RSD and Sales Ops for NEW ops no limit -2</description>
        <protected>false</protected>
        <recipients>
            <recipient>WesternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>james.molica@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_NEW_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_West_RSD_and_Sales_Ops_for_WON_ops_no_limit</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <ccEmails>Phil.Scafido@univarusa.com</ccEmails>
        <ccEmails>Lis.Murphy@univarusa.com</ccEmails>
        <ccEmails>Sheila.McEvoy@univarusa.com</ccEmails>
        <description>Send Email to West RSD and Sales Ops for WON ops no limit</description>
        <protected>false</protected>
        <recipients>
            <recipient>WE14WEISalesManagerSanJose</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE1GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE24WECSalesManagerSLCDenver</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE2GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE34WEDSalesManagerPhoenix</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE3GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE44WEFSalesManagerLosAngeles</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE44WEGSalesManagerSanDiego</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE4GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE54WEJSalesManager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE54WELSalesManagerPortland</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WE5GeneralManagers</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>WesternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_WON_in_HTML_no_limit</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_West_RSD_and_Sales_Ops_for_WON_ops_no_limit_2</fullName>
        <ccEmails>Bennett.Ortiz@univarusa.com</ccEmails>
        <description>Send Email to West RSD and Sales Ops for WON ops no limit -2</description>
        <protected>false</protected>
        <recipients>
            <recipient>WesternRegionalSalesDirector</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>james.molica@univarusa.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Administration/BDA_for_WON_in_HTML_no_limit</template>
    </alerts>
    <fieldUpdates>
        <fullName>Blank_out_Industry</fullName>
        <description>Used to blank out Industry field on non-IC Oppty&apos;s, in case Opp type has been changed. Otherwise reporting will have the old Industry &amp; be invalid.</description>
        <field>Opportunity_Industry__c</field>
        <name>Blank out Industry</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Blank_out_Industry_Stage</fullName>
        <description>In case of changing IC Oppty to a different type.</description>
        <field>Industry_Stage__c</field>
        <name>Blank out Industry Stage</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>IND_STAGE_to_Closed_Lost</fullName>
        <field>Industry_Stage__c</field>
        <literalValue>Closed Lost</literalValue>
        <name>IND STAGE to Closed Lost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>IND_Stage_to_Closed_Won</fullName>
        <field>Industry_Stage__c</field>
        <literalValue>Closed Won</literalValue>
        <name>IND Stage to Closed Won</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>STAGEtoBuild</fullName>
        <description>If INDUSTRY STAGE is &quot;Specification or Literature Request&quot;, &quot;Sample Requested by Customer&quot; or &quot;Sample Tested and Approved&quot;, then set STAGE to &quot;Build&quot;.  (previously to &quot;Needs/Value Analysis&quot;; chgd 2013-03-15)</description>
        <field>StageName</field>
        <literalValue>Build</literalValue>
        <name>STAGE to Build</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>STAGEtoClosedLost</fullName>
        <description>If the Industry Stage is Closed Lost, Make the Stage field the same as Closed Lost.</description>
        <field>StageName</field>
        <literalValue>Closed Lost</literalValue>
        <name>STAGE to Closed Lost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>STAGEtoClosedWon</fullName>
        <description>If the Industry Stage is Closed Won, Stage will be changed to Closed Won.</description>
        <field>StageName</field>
        <literalValue>Closed Won</literalValue>
        <name>STAGE to Closed Won</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>STAGEtoNegotiate</fullName>
        <description>If INDUSTRY STAGE is &quot;Required Technical Support&quot;, &quot;Sample Testing in Progress&quot; or &quot;Scale up Batch or Production Trial&quot;, then set STAGE to &quot;Negotiate&quot;  (previously to &quot;Negotiate/Review&quot;; chgd 2013-03-15)</description>
        <field>StageName</field>
        <literalValue>Negotiate</literalValue>
        <name>STAGE to Negotiate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>STAGEtoQualify</fullName>
        <description>Update Stage to &quot;Qualify&quot; based on Industry &amp; Industry Stage (previously to &quot;Proposal/Price Quote&quot;; chgd 2013-03-15)</description>
        <field>StageName</field>
        <literalValue>Qualify</literalValue>
        <name>STAGE to Qualify</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Opp_Type_to_Developmental</fullName>
        <field>Opportunity_Type__c</field>
        <literalValue>Developmental</literalValue>
        <name>Set Opp Type to Developmental</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Opp_Type_to_Null</fullName>
        <field>Opportunity_Type__c</field>
        <name>Set Opp Type to Null</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Opp_Type_to_VC_MCB</fullName>
        <field>Opportunity_Type__c</field>
        <literalValue>Volume Churn:Maintain Current Business</literalValue>
        <name>Set Opp Type to VC - MCB</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Opp_Type_to_VG_CCB</fullName>
        <field>Opportunity_Type__c</field>
        <literalValue>Volume Growth:Competitor Current Business</literalValue>
        <name>Set Opp Type to VG - CCB</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Opp_Type_to_VG_UEB</fullName>
        <field>Opportunity_Type__c</field>
        <literalValue>Volume Growth:Univar Existing Business</literalValue>
        <name>Set Opp Type to VG - UEB</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_AmountEstSales_w_SellingTotalAmt</fullName>
        <description>If the Selling Total Amount is not zero, populate that value into the Amount (Est. Sales) field.  Only for GS&amp;E Opportunities.</description>
        <field>Amount</field>
        <formula>Selling_Total_Amount__c</formula>
        <name>Update_AmountEstSales_w_SellingTotalAmt</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>BDA%3A  Executives Dave%2C Jane%2C Brian%2C Terry%2C Shirley %26 Ben Ortiz for %3E%24500k WON</fullName>
        <actions>
            <name>BDA_ALL_over_500k_and_in_Closed_Won_Stage</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <description>Big Deal Alert - Global Executives receive email for Opps over $500,000 that are Closed WON</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A  Executives-Brian and Jane for %3E%241M NEW</fullName>
        <actions>
            <name>BDA_ALL_Brian_and_Jane_receive_email_for_Opps_over_1M_that_are_NEW</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>1000000</value>
        </criteriaItems>
        <description>Big Deal Alert - Jane Wells and Brian Feldtman receive email for Opps over $1M that are NEW</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A EAST RSD and Sales Ops for NEW - no limit</fullName>
        <actions>
            <name>Send_Email_to_East_RSD_and_Sales_Ops_for_NEW_ops_no_limit</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>East</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Closed Won,Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Lost,Wounded</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), General Manager(GM), Sales Manager (SM) when a new opportunity is created - no limit.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A EAST RSD and Sales Ops for NEW - no limit -2</fullName>
        <actions>
            <name>Send_Email_to_East_RSD_and_Sales_Ops_for_NEW_ops_no_limit_2</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>East</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Closed Won,Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Wounded,Lost</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), when a new opportunity is created - no limit -2.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A GM%3ABob Crandall%3A New over %24500k</fullName>
        <actions>
            <name>BDA_GM_Bob_Crandall_New_over_500k</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.GeneralMgrName__c</field>
            <operation>equals</operation>
            <value>Bob Crandall</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <description>Big Deal Alert - GM, Bob Crandall, for Opps over $500,000 that are NEW.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A GM%3ABob Crandall%3A Won over %24250k</fullName>
        <actions>
            <name>GM_Bob_Crandall_Won_over_250k</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.GeneralMgrName__c</field>
            <operation>equals</operation>
            <value>Bob Crandall</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <description>Big Deal Alert - GM, Bob Crandall, for Opps over $250,000 that are Closed WON</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs VP Mktg%2FEnergy %3E%24500k for NEW</fullName>
        <actions>
            <name>BDA_Steve_MacDonell_receives_email_for_Opps_over_500k_that_are_NEW_and_are_for_C</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>ChemCare,Energy,CASE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <description>Big Deal Alert - Steve MacDonell receives email for Opps over $500k that have and Industry = CASE or ChemCare or Energy and are NEW.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs VP Mktg%2FEnergy %3E%24500k for WON</fullName>
        <actions>
            <name>BDA_Tom_McLelland_receives_email_for_Opps_over_500k_that_are_WON_and_are_for_CAS</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>ChemCare,Energy,CASE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Big Deal Alert - Steve MacDonell receives email for Opps over $500k that have and Industry = CASE or ChemCare or Energy and are Closed Won.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for CASE %3E%24250k for WON</fullName>
        <actions>
            <name>BDA_IMs_for_CASE_250k_for_WON</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>CASE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Big Deal Alert - Dave Johnson &amp; Steve Hollman receive email for Opps over $250k that have and Industry = CASE and are WON.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for CASE %3E%24500k for NEW</fullName>
        <actions>
            <name>BDA_IMs_for_CASE_500k_for_NEW</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>CASE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <description>Big Deal Alert - Dave Johnson &amp; Steve Hollman receive email for Opps over $500k that have and Industry = CASE and are NEW.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for ChemCare %3E%24250k for WON</fullName>
        <actions>
            <name>BDA_IMs_for_ChemCare_250k_for_WON</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>ChemCare</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Big Deal Alert - Steve MacDonnell to receive email for Opps over $250k that have and Industry = ChemCare and are WON.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for ChemCare %3E%24500k for NEW</fullName>
        <actions>
            <name>BDA_IMs_for_ChemCare_500k_for_NEW</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>ChemCare</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <description>Big Deal Alert - Steve MacDonnell to receive email for Opps over $500k that have and Industry = ChemCare and are NEW.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for Energy %3E%24250k for WON</fullName>
        <actions>
            <name>BDA_IMs_for_Energy_250k_for_WON</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Energy</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Big Deal Alert - Jason Miller to receive email for Opps over $250k that have and Industry = Energy and are WON.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for Energy %3E%24500k for NEW</fullName>
        <actions>
            <name>BDA_IMs_for_Energy_500k_for_NEW</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Energy</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <description>Big Deal Alert - Jason Miller to receive email for Opps over $500k that have and Industry = Energy and are NEW.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for Food %3E%24250k for WON</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Food</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Big Deal Alert - Beth Warren to receive email for Opps over $250k that have and Industry = Food and are WON.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for Food %3E%24500k for NEW</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Food</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <description>Big Deal Alert - Beth Warren to receive email for Opps over $500k that have and Industry = Food and are NEW.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for HIC %3E%24250k for WON</fullName>
        <actions>
            <name>BDA_IMs_for_HIC_250k_for_WON</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>HIC</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Big Deal Alert - Paul Cyr to receive email for Opps over $250k that have and Industry = HIC and are WON.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for HIC %3E%24500k for NEW</fullName>
        <actions>
            <name>BDA_IMs_for_HIC_500k_for_NEW</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>HIC</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <description>Big Deal Alert - Paul Cyr to receive email for Opps over $500k that have and Industry = HIC and are NEW.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for Oil Field %3E%24250k for WON</fullName>
        <actions>
            <name>BDA_IMs_for_OilField_250k_for_WON</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Oil Field</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Big Deal Alert -Dru Bishop to receive email for Opps over $250k that have and Industry = Oil Field and are WON.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for Oil Field %3E%24500k for NEW</fullName>
        <actions>
            <name>BDA_IMs_for_OilField_500k_for_NEW</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Oil Field</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <description>Big Deal Alert - Fred Chandler to receive email for Opps over $500k that have and Industry = Oil Field and are NEW.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for Personal Care %3E%24250k for WON</fullName>
        <actions>
            <name>BDA_IMs_for_Personal_Care_250k_for_WON</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Personal Care</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Big Deal Alert - Paul Cyr to receive email for Opps over $250k that have and Industry = Personal Care and are WON.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for Personal Care %3E%24500k for NEW</fullName>
        <actions>
            <name>BDA_IMs_for_Personal_Care_500k_for_NEW</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Personal Care</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <description>Big Deal Alert - Paul Cyr to receive email for Opps over $500k that have and Industry = Personal Care and are NEW.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for Pharma %3E%24250k for WON</fullName>
        <actions>
            <name>BDA_IMs_for_Pharma_250k_for_WON</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Pharma</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Big Deal Alert - Tom Nist to receive email for Opps over $250k that have and Industry = Pharma and are WON.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A IMs for Pharma %3E%24500k for NEW</fullName>
        <actions>
            <name>IMs_for_Pharma_500k_for_NEW</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Pharma</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <description>Big Deal Alert - Tom Nist to receive email for Opps over $500k that have and Industry = Pharma and are NEW.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A PM Judy Jones %3E500k%23 or %3E%24250k for NEW</fullName>
        <actions>
            <name>BDA_PM_Judy_Jones_500k_or_250k_for_NEW</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Big Deal Alert - Judy Jones to get email when OPP is over 500,000 lbs or over $250k and NEW and Product Name or Product Description Contains &quot;Silicone&quot;.</description>
        <formula>AND (OR(CONTAINS(Product__r.Name,&quot;Silicone&quot; ), CONTAINS(Product_Description__c, &quot;Silicone&quot;)), 
OR(Annual_LBs__c &gt;= 500000, Amount &gt;= 250000 ), 
NOT(ISPICKVAL( StageName , &quot;Closed Won&quot;)), 
NOT(ISPICKVAL( StageName , &quot;Closed Lost&quot;)))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A PM Judy Jones %3E500k%23 or %3E%24250k for WON</fullName>
        <actions>
            <name>BDA_PM_Judy_Jones_500k_or_250k_for_WON</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Big Deal Alert - Judy Jones to get email when OPP is over 500,000 lbs or over $250k and WON and Product Name or Product Description containes &quot;Silicone&quot;.</description>
        <formula>AND(OR(CONTAINS(Product__r.Name,&quot;Silicone&quot; ), CONTAINS(Product_Description__c, &quot;Silicone&quot;)), 
OR(Annual_LBs__c &gt;= 500000, Amount &gt;= 250000 ), 
ISPICKVAL( StageName , &quot;Closed Won&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A PM Mark Rost %3E500k%23 or %3E%24250k for NEW</fullName>
        <actions>
            <name>BDA_PM_for_500k_LBS_or_250k_for_NEW_for_Glycol_EtherEB_IPA_MEK_Acetone_Toluene_X</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Big Deal Alert - Mark Rost to get email when OPP is over 500,000 lbs or over $250k and NEW and Product Name or Product Description = Glycol Ether EB, Isopropyl Alcohol, IPA, Methyl Ethyl Ketone, MEK, Acetone, Toluene, or Xylene.</description>
        <formula>AND 
(OR(Product__r.Name = &quot;Glycol Ether EB&quot;,Product__r.Name = &quot;Isopropyl Alcohol&quot;,Product__r.Name = &quot;Methyl Ethyl Ketone&quot;,Product__r.Name = &quot;Acetone&quot;,Product__r.Name = &quot;Toluene&quot;, Product__r.Name = &quot;Xylene&quot;, 
CONTAINS(Product_Description__c, &quot;Glycol Ether EB&quot;), 
CONTAINS(Product_Description__c, &quot;IPA&quot;), 
CONTAINS(Product_Description__c, &quot;Isopropyl Alcohol&quot;), 
CONTAINS(Product_Description__c, &quot;MEK&quot;), 
CONTAINS(Product_Description__c, &quot;Methyl Ethyl Ketone&quot;), 
CONTAINS(Product_Description__c, &quot;Acetone&quot;), 
CONTAINS(Product_Description__c, &quot;Toluene&quot;), 
CONTAINS(Product_Description__c, &quot;Xylene&quot;)), 
OR(Annual_LBs__c &gt;= 500000, Amount &gt;= 250000 ), 
NOT(ISPICKVAL( StageName , &quot;Closed Won&quot;)), 
NOT(ISPICKVAL( StageName , &quot;Closed Lost&quot;)))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A PM Mark Rost %3E500k%23 or %3E%24250k for WON</fullName>
        <actions>
            <name>BDA_PMs_for_500k_lbs_or_250k_for_WON</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Big Deal Alert - Mark Rost to get email when OPP is over 500,000 lbs or over $250k and WON and Product Name or Product Description = Glycol Ether EB, Isopropyl Alcohol, IPA, Methyl Ethyl Ketone, MEK, Acetone, Toluene, or Xylene.</description>
        <formula>AND
(OR(Product__r.Name  = &quot;Glycol Ether EB&quot;,Product__r.Name  = &quot;Isopropyl Alcohol&quot;,Product__r.Name  = &quot;Methyl Ethyl Ketone&quot;,Product__r.Name  = &quot;Acetone&quot;,Product__r.Name  = &quot;Toluene&quot;, Product__r.Name  = &quot;Xylene&quot;, 
CONTAINS(Product_Description__c, &quot;Glycol Ether EB&quot;),
CONTAINS(Product_Description__c, &quot;IPA&quot;),
CONTAINS(Product_Description__c, &quot;Isopropyl Alcohol&quot;),
CONTAINS(Product_Description__c, &quot;MEK&quot;),
CONTAINS(Product_Description__c, &quot;Methyl Ethyl Ketone&quot;),
CONTAINS(Product_Description__c, &quot;Acetone&quot;),
CONTAINS(Product_Description__c, &quot;Toluene&quot;), 
CONTAINS(Product_Description__c, &quot;Xylene&quot;)),
NOT( CONTAINS(Product_Description__c, &quot;DIPA&quot;)), 
NOT( CONTAINS(Product_Description__c, &quot;MIPA&quot;)), 
OR(Annual_LBs__c  &gt;= 500000, Amount  &gt;= 250000 ),  
(ISPICKVAL( StageName, &quot;Closed Won&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A PM Steve Weigel EG and DEG %3E%3D%24200k and NEW</fullName>
        <actions>
            <name>BDA_PM_Steve_Weigel_EG_and_DEG_200k_and_NEW_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Big Deal Alert - Steve Weigel to get email when OPP is over $200,000 and NEW and Product Name = Ethylene Glycol or Diethylene Glycol OR Product Description = Ethylene Glycol, Diethylene Glycol, or DEG.</description>
        <formula>AND 
(OR(Product__r.Name = &quot;Ethylene Glycol&quot;,Product__r.Name = &quot;Diethylene Glycol&quot;, 
CONTAINS(Product_Description__c, &quot;Ethylene Glycol&quot;), 
CONTAINS(Product_Description__c, &quot;Diethylene Glycol&quot;), 
CONTAINS(Product_Description__c, &quot;DEG&quot;)), 
Amount &gt;= 200000, 
NOT(ISPICKVAL( StageName , &quot;Closed Won&quot;)), 
NOT(ISPICKVAL( StageName , &quot;Closed Lost&quot;)))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A PM Steve Weigel EG and DEG %3E%3D%24200k and WON</fullName>
        <actions>
            <name>BDA_PM_Steve_Weigel_EG_and_DEG_200k_for_WON_Opportunities_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Big Deal Alert - Steve Weigel to get email when OPP is over $200,000 and WON and Product Name = Ethylene Glycol or Diethylene Glycol OR Product Description = Ethylene Glycol, Diethylene Glycol, or DEG.</description>
        <formula>AND 
(OR(Product__r.Name = &quot;Ethylene Glycol&quot;,Product__r.Name = &quot;Diethylene Glycol&quot;, 
CONTAINS(Product_Description__c, &quot;Ethylene Glycol&quot;), 
CONTAINS(Product_Description__c, &quot;Diethylene Glycol&quot;), 
CONTAINS(Product_Description__c, &quot;DEG&quot;)), 
Amount &gt;= 200000, 
ISPICKVAL( StageName , &quot;Closed Won&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A PM Steve Weigel PG %3E%3D%24400k and NEW</fullName>
        <actions>
            <name>BDA_PM_Steve_Weigel_PG_400k_and_NEW_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Big Deal Alert - Steve Weigel to get email when OPP is over $400,000 and NEW and Product Name = Proplyene Glycol-USP or Propylene Glycol-Indust OR Product Description = Proplyene Glycol, PG, PGUSP, or PGI.</description>
        <formula>AND 
(OR(Product__r.Name = &quot;Propylene Glycol-USP&quot;,Product__r.Name = &quot;Propylene Glycol-Indust&quot;, 
CONTAINS(Product_Description__c, &quot;Propylene Glycol&quot;), 
CONTAINS(Product_Description__c, &quot;PG&quot;), 
CONTAINS(Product_Description__c, &quot;PGUSP&quot;), 
CONTAINS(Product_Description__c, &quot;PGI&quot;)), 
Amount &gt;= 400000, 
NOT(ISPICKVAL( StageName , &quot;Closed Won&quot;)), 
NOT(ISPICKVAL( StageName , &quot;Closed Lost&quot;)))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A PM Steve Weigel PG %3E%3D%24400k and WON</fullName>
        <actions>
            <name>BDA_PM_Steve_Weigel_PG_400k_for_WON_Opps_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Big Deal Alert - Steve Weigel to get email when OPP is over $400,000 and WON and Product Name = Proplyene Glycol-USP or Propylene Glycol-Indust OR Product Description = Proplyene Glycol, PG, PGUSP, or PGI.</description>
        <formula>AND 
(OR(Product__r.Name = &quot;Propylene Glycol-USP&quot;,Product__r.Name = &quot;Propylene Glycol-Indust&quot;, 
CONTAINS(Product_Description__c, &quot;Propylene Glycol&quot;), 
CONTAINS(Product_Description__c, &quot;PG&quot;), 
CONTAINS(Product_Description__c, &quot;PGUSP&quot;), 
CONTAINS(Product_Description__c, &quot;PGI&quot;)), 
Amount &gt;= 400000, 
ISPICKVAL( StageName , &quot;Closed Won&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A WEST RSD and Sales Ops for NEW - no limit</fullName>
        <actions>
            <name>Send_Email_to_West_RSD_and_Sales_Ops_for_NEW_ops_no_limit</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>West</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Closed Won,Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>equals</operation>
            <value>Prospect,SOW,Lost,Wounded</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), General Manager(GM), Sales Manager (SM) when a new opportunity is created - no limit.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3A WEST RSD and Sales Ops for NEW - no limit -2</fullName>
        <actions>
            <name>Send_Email_to_West_RSD_and_Sales_Ops_for_NEW_ops_no_limit_2</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>West</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Closed Won,Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>equals</operation>
            <value>Prospect,SOW,Wounded,Lost</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM) when a new opportunity is created - no limit -2.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ACentral RSD and Sales Ops for LOST - no limit</fullName>
        <actions>
            <name>Send_Email_to_Central_RSD_and_Sales_Ops_for_LOST_ops_no_limit</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Central</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Lost,Wounded</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), General Manager(GM), Sales Manager (SM) when a new opportunity is created - no limit.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ACentral RSD and Sales Ops for LOST - no limit -2</fullName>
        <actions>
            <name>Send_Email_to_Central_RSD_and_Sales_Ops_for_LOST_ops_no_limit_2</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Central</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Lost,Wounded</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), when a new opportunity is created or updated - no limit -2.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ACentral RSD and Sales Ops for LOST Central</fullName>
        <actions>
            <name>Send_Email_to_RSD_and_Sales_Ops_for_LOST_opps_over_250k_Central</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Central</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send Email to Central RSD role and Ben Ortiz when a LOST opportunity, over $250k, is saved.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ACentral RSD and Sales Ops for NEW - no limit</fullName>
        <actions>
            <name>Send_Email_to_Central_RSD_and_Sales_Ops_for_NEW_ops_no_limit</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Central</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Closed Won,Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Lost,Wounded</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), General Manager(GM), Sales Manager (SM) when a new opportunity is created - no limit.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ACentral RSD and Sales Ops for NEW - no limit -2</fullName>
        <actions>
            <name>Send_Email_to_Central_RSD_and_Sales_Ops_for_NEW_ops_no_limit_2</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Central</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Closed Won,Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Lost,Wounded</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), when a new opportunity is created - no limit -2.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ACentral RSD and Sales Ops for NEW Central</fullName>
        <actions>
            <name>Send_Email_to_RSD_and_Sales_Ops_for_NEW_opps_over_250k_Central</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Central</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Closed Won,Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send Email to Regional Sales Director &amp; Ben Ortiz when a new opportunity, over $250k, is created.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ACentral RSD and Sales Ops for WON - no limit</fullName>
        <actions>
            <name>Send_Email_to_Central_RSD_and_Sales_Ops_for_WON_ops_no_limit</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Central</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Wounded,Lost</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), General Manager(GM), Sales Manager (SM) when a new opportunity is created - no limit.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ACentral RSD and Sales Ops for WON - no limit -2</fullName>
        <actions>
            <name>Send_Email_to_Central_RSD_and_Sales_Ops_for_WON_ops_no_limit_2</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Central</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Wounded,Lost</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), when a new opportunity is created or updated - no limit -2.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ACentral RSD and Sales Ops for WON Central</fullName>
        <actions>
            <name>Send_Email_to_RSD_and_Sales_Ops_for_WON_opps_over_250k_Central</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Central</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send Email to Regional Sales Director &amp; Ben Ortiz when a WON opportunity, over $250k, is saved.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AEast RSD and Sales Ops for LOST - no limit</fullName>
        <actions>
            <name>Send_Email_to_East_RSD_and_Sales_Ops_for_LOST_ops_no_limit</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>East</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Lost,Wounded</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), General Manager(GM), Sales Manager (SM) when a new opportunity is created - no limit.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AEast RSD and Sales Ops for LOST - no limit -2</fullName>
        <actions>
            <name>Send_Email_to_East_RSD_and_Sales_Ops_for_LOST_ops_no_limit_2</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>East</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Wounded,Lost</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM) when a new opportunity is created or updated - no limit -2.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AEast RSD and Sales Ops for WON - no limit</fullName>
        <actions>
            <name>Send_Email_to_East_RSD_and_Sales_Ops_for_WON_ops_no_limit</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>East</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Lost,Wounded</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), General Manager(GM), Sales Manager (SM) when a new opportunity is created - no limit.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AEast RSD and Sales Ops for WON - no limit -2</fullName>
        <actions>
            <name>Send_Email_to_East_RSD_and_Sales_Ops_for_WON_ops_no_limit_2</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>East</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Lost,Wounded</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), when a new opportunity is created or updated - no limit -2.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AEastern RSD and Sales Ops for LOST Eastern</fullName>
        <actions>
            <name>Send_Email_to_RSD_and_Sales_Ops_for_LOST_opps_over_250k_Eastern</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Eastern</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send Email to Regional Sales Director &amp; Ben Ortiz when a LOST opportunity, over $250k, is saved.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AEastern RSD and Sales Ops for NEW Eastern</fullName>
        <actions>
            <name>Send_Email_to_RSD_and_Sales_Ops_for_NEW_opps_over_250kEastern</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Eastern</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Closed Won,Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send Email to Regional Sales Director &amp; Ben Ortiz when a new opportunity, over $250k, is created.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AEastern RSD and Sales Ops for WON Eastern</fullName>
        <actions>
            <name>Send_Email_to_RSD_and_Sales_Ops_for_WON_opps_over_250kEastern</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Eastern</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send Email to Regional Sales Director &amp; Ben Ortiz when a WON opportunity, over $250k, is saved.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ARVP and RDMS%3ANCR for %3E%24500k NEW</fullName>
        <actions>
            <name>BDA_NCR_Opps_500k_and_not_Closed</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>equals</operation>
            <value>North Central Region</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <description>Big Deal Alert - NCR RVPs and RDMS for Opps over $500,000 that are NEW.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ARVP and RDMS%3ANER for %3E%24500k NEW</fullName>
        <actions>
            <name>BDA_NER_over_500k_and_NEW</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>equals</operation>
            <value>Northeast Region</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <description>Big Deal Alert - NER RVPs and RDMS for Opps over $500,000 that are NEW</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ARVP and RDMS%3ASCR for %3E%24250k WON</fullName>
        <actions>
            <name>BDA_SCR_over_250k_and_in_Closed_Won_Stage</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>equals</operation>
            <value>Central Region</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>249000</value>
        </criteriaItems>
        <description>Big Deal Alert - Central RVPs and RDMS for Opps over $250,000 that are Closed WON</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ARVP and RDMS%3ASCR for %3E%24500k and NEW</fullName>
        <actions>
            <name>BDA_SCR_RVPs_and_RDMS_for_500k_NEW</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>equals</operation>
            <value>South Central Region</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <description>Big Deal Alert - SCR RVPs and RDMS for Opps over $500,000 that are NEW</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ARVP and RDMS%3ASER for %3E%24250k WON</fullName>
        <actions>
            <name>BDA_SER_over_250k_and_in_Closed_Won_Stage</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>equals</operation>
            <value>Eastern Region</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>249000</value>
        </criteriaItems>
        <description>Big Deal Alert - Eastern RVPs and RDMS for Opps over $250,000 that are Closed WON</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ARVP and RDMS%3ASER for %3E%24500k and NEW</fullName>
        <actions>
            <name>BDA_SER_over_500k_and_NEW</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>equals</operation>
            <value>Southeast Region</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <description>Big Deal Alert - SER RVPs and RDMS for Opps over $500,000 that are NEW</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ARVP and RDMS%3AWER for %3E%24500k and NEW</fullName>
        <actions>
            <name>BDA_WER_over_500k_and_NEW</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>equals</operation>
            <value>Western Region</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Needs/Value Analysis,Negotiation/Review,Proposal/Price Quote</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <description>Big Deal Alert - WER RVPs and RDMS for Opps over $500,000 that are NEW</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ARVP and RSD%3ACentral for %3E%24250k WON</fullName>
        <actions>
            <name>BDA_over_250k_and_in_Closed_Won_Stage</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>equals</operation>
            <value>Central Region</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>249000</value>
        </criteriaItems>
        <description>Big Deal Alert - Central RVPs and RSD for Opps over $250,000 that are Closed WON</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ARVP and RSD%3AEastern for %3E%24250k WON</fullName>
        <actions>
            <name>BDA_Eastern_over_250k_and_in_Closed_Won_Stage</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>equals</operation>
            <value>Eastern Region</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>249000</value>
        </criteriaItems>
        <description>Big Deal Alert - Eastern RVP and RDS for Opps over $250,000 that are Closed WON</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3ARVP and RSD%3AWestern for %3E%24250k WON</fullName>
        <actions>
            <name>BDA_WER_over_250k_and_in_Closed_Won_Stage</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>equals</operation>
            <value>Western Region</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <description>Big Deal Alert - Western RVPs and RSD for Opps over $250,000 that are Closed WON</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AWest RSD and Sales Ops for LOST - no limit</fullName>
        <actions>
            <name>Send_Email_to_West_RSD_and_Sales_Ops_for_LOST_ops_no_limit</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>West</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Wounded,Lost</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), General Manager(GM), Sales Manager (SM) when a new opportunity is created - no limit.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AWest RSD and Sales Ops for LOST - no limit -2</fullName>
        <actions>
            <name>Send_Email_to_West_RSD_and_Sales_Ops_for_LOST_ops_no_limit_2</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>West</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Wounded,Lost</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), when a new opportunity is created or updated - no limit.-2</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AWest RSD and Sales Ops for WON - no limit</fullName>
        <actions>
            <name>Send_Email_to_West_RSD_and_Sales_Ops_for_WON_ops_no_limit</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>West</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Wounded,Lost</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz, Phil Scafido,  Regional Sales Directors (RGM), General Manager(GM), Sales Manager (SM) when a new opportunity is created - no limit.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AWest RSD and Sales Ops for WON - no limit -2</fullName>
        <actions>
            <name>Send_Email_to_West_RSD_and_Sales_Ops_for_WON_ops_no_limit_2</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>West</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.MarketingSegment__c</field>
            <operation>contains</operation>
            <value>Prospect,SOW,Wounded,Lost</value>
        </criteriaItems>
        <description>Send Email to Ben Ortiz and Regional Sales Director,  when a new opportunity is created or updated - no limit -2.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AWestern RSD and Sales Ops for LOST Western</fullName>
        <actions>
            <name>Send_Email_to_RSD_and_Sales_Ops_for_LOST_opps_over_250k_Western</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Western</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send Email to Regional Sales Director &amp; Ben Ortiz when a LOST opportunity, over $250k, is saved.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AWestern RSD and Sales Ops for NEW Western</fullName>
        <actions>
            <name>Send_Email_to_RSD_and_Sales_Ops_for_NEW_opps_over_250k_Western</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Western</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Closed Won,Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send Email to Regional Sales Director &amp; Ben Ortiz when a new opportunity, over $250k, is created.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>BDA%3AWestern RSD and Sales Ops for WON Western</fullName>
        <actions>
            <name>Send_Email_to_RSD_and_Sales_Ops_for_WON_opps_over_250k_Western</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RegionName__c</field>
            <operation>contains</operation>
            <value>Western</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>250000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.TargetAccount__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send Email to Regional Sales Director &amp; Ben Ortiz when a WON opportunity, over $250k, is saved.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Blank out Industry State on open non-IC Opportunities</fullName>
        <actions>
            <name>Blank_out_Industry_Stage</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>ChemCare Opportunity,Mini-Bulk Opportunity</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notContain</operation>
            <value>Closed</value>
        </criteriaItems>
        <description>If an open IC Oppty has an Industry, and is then changed to a ChemCare or Mini-Bulk Oppty, blank out Industry Info to avoid data integrity issues affecting reporting. Keep if Closed, since this is the mechanism to prevent reopening.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Blank out Industry on non-IC Opportunities</fullName>
        <actions>
            <name>Blank_out_Industry</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>ChemCare Opportunity,Mini-Bulk Opportunity</value>
        </criteriaItems>
        <description>If an IC Oppty has an Industry, and is then changed to a ChemCare or Mini-Bulk Oppty, blank out Industry Info to avoid data integrity issues affecting reporting.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Food%3A  If Industry Stage is Formulation Tool or Spec Lit Request</fullName>
        <actions>
            <name>STAGEtoBuild</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Industry_Stage__c</field>
            <operation>equals</operation>
            <value>Formulation Tool Request,Specification or Literature Request</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notContain</operation>
            <value>Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Food</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>IC Opportunity</value>
        </criteriaItems>
        <description>On Open Oppty: If Industry is Food and INDUSTRY STAGE is &quot;Formulation Tool Request &quot; or &quot;Specification or Literature Request&quot;, and STAGE is not Closed , then set STAGE to &quot;Build&quot;.(previously to &quot;Needs/Value Analysis&quot;; chgd 2013-03-15)</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Food%3A  If Industry Stage is Req Tech Support%2C Sample Testing or Scale up</fullName>
        <actions>
            <name>STAGEtoNegotiate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Industry_Stage__c</field>
            <operation>equals</operation>
            <value>Requested Technical Support,Scale Up Production,Sample Testing In Progress</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notContain</operation>
            <value>Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Food</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>IC Opportunity</value>
        </criteriaItems>
        <description>On Open Oppty: If Industry is Food and INDUSTRY STAGE is &quot;Requested Technical Support, Sample Testing in Progress or Scale up Production&quot; , and STAGE is not Closed, then set STAGE to &quot;Negotiate&quot; (previously to &quot;Negotiate/Review&quot;; chgd 2013-03-15)</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Food%3A  If Industry Stage is Sample Requested</fullName>
        <actions>
            <name>STAGEtoQualify</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Industry_Stage__c</field>
            <operation>equals</operation>
            <value>Sample Requested</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notContain</operation>
            <value>Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Food</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>IC Opportunity</value>
        </criteriaItems>
        <description>On Open Oppty: If Industry is Food and INDUSTRY STAGE is &quot;Sample Requested&quot;, and STAGE is not Closed, then set STAGE to &quot;Qualify&quot; (previously to &quot;Proposal/Price Quote&quot;; chgd 2013-03-15)</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>If Ind Stage is Closed Lost-Stage is Same</fullName>
        <actions>
            <name>STAGEtoClosedLost</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Industry_Stage__c</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <description>If INDUSTRY STAGE is set to Closed Lost, STAGE is set to same.  This prevents a Closed Opp from being reopened. Ind Stg is used for all Opp types as a mechanism preventing reopening. Validation rule w/b preferable and would allow Cloning of closed opps.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>If Ind Stage is Closed Won-Stage is Same</fullName>
        <actions>
            <name>STAGEtoClosedWon</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Industry_Stage__c</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>If INDUSTRY STAGE is set to Closed Won, STAGE is set to same.  This prevents a Closed Opp from being reopened. Ind Stg is used for all Opp types as a mechanism preventing reopening. Validation rule w/b preferable and would allow Cloning of closed opps.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>If Industry Stage is Spec or Lit request%2E%2E%2E</fullName>
        <actions>
            <name>STAGEtoBuild</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Industry_Stage__c</field>
            <operation>equals</operation>
            <value>Sample Requested by Customer,Specification or Literature Request,Sample Tested and Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notContain</operation>
            <value>Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>IC Opportunity</value>
        </criteriaItems>
        <description>On Open Oppty: If INDUSTRY STAGE is &quot;Specification or Literature Request&quot;, &quot;Sample Requested by Customer&quot; or &quot;Sample Tested and Approved&quot;, then set STAGE to &quot;Build&quot; (previously to &quot;Needs/Value Analysis&quot;; chgd 2013-03-15)</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>If Industry Stage is Stability%2E%2E%2E</fullName>
        <actions>
            <name>STAGEtoNegotiate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Industry_Stage__c</field>
            <operation>equals</operation>
            <value>Stability/Regulatory/Marketing Approval</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notContain</operation>
            <value>Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>IC Opportunity</value>
        </criteriaItems>
        <description>On Open Oppty: If INDUSTRY STAGE is &quot;Stability/Regulatory/Marketing Approval&quot;, then set STAGE to &quot;Negotiate&quot;  (previously to &quot;Negotiate/Review&quot;; chgd 2013-03-15)</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>If Stage is Closed Lost-Ind Stage is Same</fullName>
        <actions>
            <name>IND_STAGE_to_Closed_Lost</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <description>If STAGE is Closed Lost, INDUSTRY STAGE field is set to same.  This prevents Closed Opp from being reopened. Ind Stg is used for all Opp types as a mechanism preventing reopening. Validation rule w/b preferable, allowing cloning of closed opps.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>If Stage is Closed Won-Ind Stage is Same</fullName>
        <actions>
            <name>IND_Stage_to_Closed_Won</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>If STAGE is Closed Won, INDUSTRY STAGE is set to same. This prevents Closed Opp from being reopened. Ind Stg is used for all Opp types as a mechanism preventing reopening. Validation rule w/b preferable, allowing cloning of closed opps.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>OPP%3A Driver Initiated Opportunity Email</fullName>
        <actions>
            <name>OPP_Driver_Initiated_Opportunity_Alert_Email</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.LeadSource</field>
            <operation>equals</operation>
            <value>Driver</value>
        </criteriaItems>
        <description>When Lead Source = Driver on New Opportunity, send email to Account Owner with the information.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pharma%3A  If Industry Stage is Scale Up Batch%2E%2E%2E</fullName>
        <actions>
            <name>STAGEtoQualify</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Industry_Stage__c</field>
            <operation>equals</operation>
            <value>Scale up Batch or Production Trial</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notContain</operation>
            <value>Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Industry__c</field>
            <operation>equals</operation>
            <value>Pharma</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>IC Opportunity</value>
        </criteriaItems>
        <description>On Open Oppty: If Industry = Pharma and if INDUSTRY STAGE is &quot;Scale Up Batch or Production Trial&quot;, then set STAGE to &quot;Qualify&quot;. (previously to &quot;Proposal/Price Quote&quot;; chgd 2013-03-15)</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SellingTotalAmtToEstSales</fullName>
        <actions>
            <name>Update_AmountEstSales_w_SellingTotalAmt</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Selling_Total_Amount__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>GS&amp;E Opportunity</value>
        </criteriaItems>
        <description>Populate the &quot;Est. Sales&quot; or &quot;Amount&quot; field with the &quot;Selling Total Amount&quot; on GS&amp;E Opps ONLY.  This allows the Expected Sales to calculate correctly.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>USPOT Integration - Set Opportunity Type To Developmental</fullName>
        <actions>
            <name>Set_Opp_Type_to_Developmental</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>The Opportunity integration with USPOT will populate a the field USPOT_Insight_Type__c. This maps to a specific value on the Opportunity Type field. This workflows controls when the scenario when it maps to Developmental.</description>
        <formula>LOWER(USPOT_Insight_Type__c) = &apos;prospects&apos;</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>USPOT Integration - Set Opportunity Type To Null</fullName>
        <actions>
            <name>Set_Opp_Type_to_Null</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>The Opportunity integration with USPOT will populate a the field USPOT_Insight_Type__c. This maps to a specific value on the Opportunity Type field. This workflows controls when the scenario when it maps to null.</description>
        <formula>ISBLANK(USPOT_Insight_Type__c) &amp;&amp;   ISPICKVAL(LeadSource, &quot;USPOT&quot;)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>USPOT Integration - Set Opportunity Type To Volume Churn%3AMaintain Current Business</fullName>
        <actions>
            <name>Set_Opp_Type_to_VC_MCB</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>The Opportunity integration with USPOT will populate a the field USPOT_Insight_Type__c. This maps to a specific value on the Opportunity Type field. This workflows controls when the scenario when it maps to Volume Churn:Maintain Current Business.</description>
        <formula>LOWER(USPOT_Insight_Type__c) = &apos;order at risk&apos; || LOWER(USPOT_Insight_Type__c) = &apos;customer at risk&apos; || LOWER(USPOT_Insight_Type__c) = &apos;baskets at risk&apos;</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>USPOT Integration - Set Opportunity Type To Volume Growth%3ACompetitor Current Business</fullName>
        <actions>
            <name>Set_Opp_Type_to_VG_CCB</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>The Opportunity integration with USPOT will populate a the field USPOT_Insight_Type__c. This maps to a specific value on the Opportunity Type field. This workflows controls when the scenario when it maps to Volume Growth:Competitor Current Business.</description>
        <formula>LOWER(USPOT_Insight_Type__c) = &apos;next product to sell&apos;</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>USPOT Integration - Set Opportunity Type To Volume Growth%3AUnivar Existing Business</fullName>
        <actions>
            <name>Set_Opp_Type_to_VG_UEB</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>The Opportunity integration with USPOT will populate a the field USPOT_Insight_Type__c. This maps to a specific value on the Opportunity Type field. This workflows controls when the scenario when it maps to Volume Growth:Univar Existing Business.</description>
        <formula>LOWER(USPOT_Insight_Type__c) = &apos;dormant quote&apos;</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
