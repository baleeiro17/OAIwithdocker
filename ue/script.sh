HPLMN=20893
USIM_API_K="8baf473f2f8fd09487cccbd7097c6862"
OPC="e734f8734007d6c5ce7a0508809e7e9c"
NUM_UES=100
i=1

while [ $i -le $NUM_UES ]; do
 MSIN=$(printf "%010d" $i)
 ue_number=$((i-1))
 echo 'UE'$ue_number':
 {
    USER: {
        IMEI="356113022094149";
        MANUFACTURER="EURECOM";
        MODEL="LTE Android PC";
        PIN="0000";
  };

    SIM: {
        MSIN="'$MSIN'";
        USIM_API_K="'$USIM_API_K'";
        OPC="'$OPC'";
        MSISDN="33611123456";
    };

    # Home PLMN Selector with Access Technology
    HPLMN= "20893";
    # User controlled PLMN Selector with Access Technology
    UCPLMN_LIST = ();

    # Operator PLMN List
    OPLMN_LIST = ("00101", "20810", "20811", "20813", "20893", "310280", "310028");

    # Operator controlled PLMN Selector with Access Technology
    OCPLMN_LIST = ("22210", "21401", "21406", "26202", "26204");

    # Forbidden plmns
    FPLMN_LIST = ();

    # List of Equivalent HPLMNs
#TODO: UE does not connect if set, to be fixed in the UE
#    EHPLMN_LIST= ("20811", "20813");
    EHPLMN_LIST= ();
};' >> /ue_folder/openair3/NAS/TOOLS/ue_eurecom_test_sfr.conf

    i=$((i+1))
done