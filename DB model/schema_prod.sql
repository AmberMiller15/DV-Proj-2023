CREATE TABLE "Accidents" (
    "CASENUM" varchar   NOT NULL,
    "STRATUM" int   NOT NULL,
    "REGION" int   NOT NULL,
    "URBANICITY" int   NOT NULL,
    "MONTH" int   NOT NULL,
    "YEAR" int   NOT NULL,
    "DAY_WEEK" int   NOT NULL,
    "HARM_EV" int   NOT NULL,
    "ALCOHOL" int   NOT NULL,
    "MAX_SEV" int   NOT NULL,
    "MAN_COLL" int   NOT NULL,
    "RELJCT1" int   NOT NULL,
    "RELJCT2" int   NOT NULL,
    "TYP_INT" int   NOT NULL,
    "WRK_ZONE" int   NOT NULL,
    "REL_ROAD" int   NOT NULL,
    "LGT_COND" int   NOT NULL,
    "INT_HWY" int   NOT NULL,
    "WEATHER" int   NOT NULL,
    "WKDY_IM" int   NOT NULL,
    "EVENT1_IM" int   NOT NULL,
    "MANCOL_IM" int   NOT NULL,
    "RELJCT1_IM" int   NOT NULL,
    "RELJCT2_IM" int   NOT NULL,
    "LGTCON_IM" int   NOT NULL,
    "WEATHR_IM" int   NOT NULL,
    "ALCHL_IM" int   NOT NULL,
    CONSTRAINT "pk_Accidents" PRIMARY KEY (
        "CASENUM"
     )
);

CREATE TABLE "Vehicles" (
    "CASENUM" varchar   NOT NULL,
    "VEH_NO" int   NOT NULL,
    "STRATUM" int   NOT NULL,
    "VE_FORMS" int   NOT NULL,
    "NUMOCCS" int   NOT NULL,
    "NUMOCCSNAME" varchar   NOT NULL,
    "MONTHNAME" varchar   NOT NULL,
    "HARM_EV" int   NOT NULL,
    "HARM_EVNAME" varchar   NOT NULL,
    "MAN_COLL" int   NOT NULL,
    "MAN_COLLNAME" varchar   NOT NULL,
    "UNITTYPE" int   NOT NULL,
    "UNITTYPENAME" varchar   NOT NULL,
    "HIT_RUN" int   NOT NULL,
    "HIT_RUNNAME" varchar   NOT NULL,
    "MAKE" int   NOT NULL,
    "MAKENAME" varchar   NOT NULL,
    "MODEL" int   NOT NULL,
    "MAK_MOD" int   NOT NULL,
    "MAK_MODNAME" varchar   NOT NULL,
    "BODY_TYP" int   NOT NULL,
    "BODY_TYPNAME" varchar   NOT NULL,
    "MOD_YEAR" int   NOT NULL,
    "MOD_YEARNAME" varchar   NOT NULL,
    "TOW_VEH" int   NOT NULL,
    "TOW_VEHNAME" varchar   NOT NULL,
    "J_KNIFE" int   NOT NULL,
    "J_KNIFENAME" varchar   NOT NULL,
    "TRAV_SP" int   NOT NULL,
    "TRAV_SPNAME" varchar   NOT NULL,
    "ROLLOVER" int   NOT NULL,
    "ROLLOVERNAME" varchar   NOT NULL,
    "ROLINLOC" int   NOT NULL,
    "ROLINLOCNAME" varchar   NOT NULL,
    "DEFORMED" int   NOT NULL,
    "DEFORMEDNAME" varchar   NOT NULL,
    "TOWED" int   NOT NULL,
    "TOWEDNAME" varchar   NOT NULL,
    "M_HARM" int   NOT NULL,
    "M_HARMNAME" varchar   NOT NULL,
    "VEH_ALCH" int   NOT NULL,
    "VEH_ALCHNAME" varchar   NOT NULL,
    "MAX_VSEV" int   NOT NULL,
    "MAX_VSEVNAME" varchar   NOT NULL,
    "NUM_INJV" int   NOT NULL,
    "NUM_INJVNAME" varchar   NOT NULL,
    "FIRE_EXP" int   NOT NULL,
    "FIRE_EXPNAME" varchar   NOT NULL,
    "DR_PRES" int   NOT NULL,
    "DR_PRESNAME" varchar   NOT NULL,
    "DR_ZIP" int   NOT NULL,
    "SPEEDREL" int   NOT NULL,
    "SPEEDRELNAME" varchar   NOT NULL,
    "VTRAFWAY" int   NOT NULL,
    "VTRAFWAYNAME" varchar   NOT NULL,
    "VNUM_LAN" int   NOT NULL,
    "VNUM_LANNAME" varchar   NOT NULL,
    "VSPD_LIMNAME" varchar   NOT NULL,
    "VALIGN" int   NOT NULL,
    "VALIGNNAME" varchar   NOT NULL,
    "VPROFILE" int   NOT NULL,
    "VPROFILENAME" varchar   NOT NULL,
    "VSURCOND" int   NOT NULL,
    "VSURCONDNAME" varchar   NOT NULL,
    "VTRAFCON" int   NOT NULL,
    "VTRAFCONNAME" varchar   NOT NULL,
    "VTCONT_F" int   NOT NULL,
    "VTCONT_FNAME" varchar   NOT NULL,
    "P_CRASH1" int   NOT NULL,
    "P_CRASH1NAME" varchar   NOT NULL,
    "P_CRASH2" int   NOT NULL,
    "P_CRASH2NAME" varchar   NOT NULL,
    "P_CRASH3" int   NOT NULL,
    "P_CRASH3NAME" varchar   NOT NULL,
    "PCRASH4" int   NOT NULL,
    "PCRASH4NAME" varchar   NOT NULL,
    "PCRASH5" int   NOT NULL,
    "PCRASH5NAME" varchar   NOT NULL,
    "ACC_TYPE" int   NOT NULL,
    "ACC_TYPENAME" varchar   NOT NULL,
    "VPICMAKE" int   NOT NULL,
    "VPICMAKENAME" varchar   NOT NULL,
    "VPICMODEL" int   NOT NULL,
    "VPICMODELNAME" varchar   NOT NULL,
    "VPICBODYCLASS" int   NOT NULL,
    "VPICBODYCLASSNAME" varchar   NOT NULL,
    "ICFINALBODY" int   NOT NULL,
    "ICFINALBODYNAME" varchar   NOT NULL,
    "GVWR_FROM" int   NOT NULL,
    "GVWR_FROMNAME" varchar   NOT NULL,
    "GVWR_TO" int   NOT NULL,
    "GVWR_TONAME" varchar   NOT NULL,
    "BDYTYP_IM" int   NOT NULL,
    "BDYTYP_IMNAME" varchar   NOT NULL,
    "MDLYR_IM" int   NOT NULL,
    "MDLYR_IMNAME" varchar   NOT NULL,
    "IMPACT1_IM" int   NOT NULL,
    "IMPACT1_IMNAME" varchar   NOT NULL,
    "VEVENT_IM" int   NOT NULL,
    "VEVENT_IMNAME" varchar   NOT NULL,
    "PCRASH1_IM" int   NOT NULL,
    "PCRASH1_IMNAME" varchar   NOT NULL,
    "MXVSEV_IM" int   NOT NULL,
    "MXVSEV_IMNAME" varchar   NOT NULL,
    "NUMINJ_IM" int   NOT NULL,
    "NUMINJ_IMNAME" varchar   NOT NULL,
    "V_ALCH_IM" int   NOT NULL,
    "V_ALCH_IMNAME" varchar   NOT NULL
);