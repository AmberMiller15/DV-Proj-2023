-- Table: public.ACCIDENTS

-- DROP TABLE IF EXISTS public."Accidents";

CREATE TABLE IF NOT EXISTS public."Accidents"
(
    "CASENUM" character varying COLLATE pg_catalog."default",
    "STRATUM" character varying COLLATE pg_catalog."default",
    "REGION" character varying COLLATE pg_catalog."default",
    "URBANICITY" character varying COLLATE pg_catalog."default",
    "MONTH" character varying COLLATE pg_catalog."default",
    "YEAR" character varying COLLATE pg_catalog."default",
    "DAY_WEEK" character varying COLLATE pg_catalog."default",
    "HARM_EV" character varying COLLATE pg_catalog."default",
    "ALCOHOL" character varying COLLATE pg_catalog."default",
    "MAX_SEV" character varying COLLATE pg_catalog."default",
    "MAN_COLL" character varying COLLATE pg_catalog."default",
    "RELJCT1" character varying COLLATE pg_catalog."default",
    "RELJCT2" character varying COLLATE pg_catalog."default",
    "TYP_INT" character varying COLLATE pg_catalog."default",
    "WRK_ZONE" character varying COLLATE pg_catalog."default",
    "REL_ROAD" character varying COLLATE pg_catalog."default",
    "LGT_COND" character varying COLLATE pg_catalog."default",
    "INT_HWY" character varying COLLATE pg_catalog."default",
    "WEATHER" character varying COLLATE pg_catalog."default",
    "WKDY_IM" character varying COLLATE pg_catalog."default",
    "EVENT1_IM" character varying COLLATE pg_catalog."default",
    "MANCOL_IM" character varying COLLATE pg_catalog."default",
    "RELJCT1_IM" character varying COLLATE pg_catalog."default",
    "RELJCT2_IM" character varying COLLATE pg_catalog."default",
    "LGTCON_IM" character varying COLLATE pg_catalog."default",
    "WEATHR_IM" character varying COLLATE pg_catalog."default",
    "ALCHL_IM" character varying COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Accidents"
    OWNER to postgres;

    

-- Table: public.Vehicles

-- DROP TABLE IF EXISTS public."Vehicles";

CREATE TABLE IF NOT EXISTS public."Vehicles"
(
    "CASENUM" character varying COLLATE pg_catalog."default",
    "VEH_NO" character varying COLLATE pg_catalog."default",
    "STRATUM" character varying COLLATE pg_catalog."default",
    "VE_FORMS" character varying COLLATE pg_catalog."default",
    "NUMOCCS" character varying COLLATE pg_catalog."default",
    "NUMOCCSNAME" character varying COLLATE pg_catalog."default",
    "MONTHNAME" character varying COLLATE pg_catalog."default",
    "HARM_EV" character varying COLLATE pg_catalog."default",
    "HARM_EVNAME" character varying COLLATE pg_catalog."default",
    "MAN_COLL" character varying COLLATE pg_catalog."default",
    "MAN_COLLNAME" character varying COLLATE pg_catalog."default",
    "UNITTYPE" character varying COLLATE pg_catalog."default",
    "UNITTYPENAME" character varying COLLATE pg_catalog."default",
    "HIT_RUN" character varying COLLATE pg_catalog."default",
    "HIT_RUNNAME" character varying COLLATE pg_catalog."default",
    "MAKE" character varying COLLATE pg_catalog."default",
    "MAKENAME" character varying COLLATE pg_catalog."default",
    "MODEL" character varying COLLATE pg_catalog."default",
    "MAK_MOD" character varying COLLATE pg_catalog."default",
    "MAK_MODNAME" character varying COLLATE pg_catalog."default",
    "BODY_TYP" character varying COLLATE pg_catalog."default",
    "BODY_TYPNAME" character varying COLLATE pg_catalog."default",
    "MOD_YEAR" character varying COLLATE pg_catalog."default",
    "MOD_YEARNAME" character varying COLLATE pg_catalog."default",
    "TOW_VEH" character varying COLLATE pg_catalog."default",
    "TOW_VEHNAME" character varying COLLATE pg_catalog."default",
    "J_KNIFE" character varying COLLATE pg_catalog."default",
    "J_KNIFENAME" character varying COLLATE pg_catalog."default",
    "TRAV_SP" character varying COLLATE pg_catalog."default",
    "TRAV_SPNAME" character varying COLLATE pg_catalog."default",
    "ROLLOVER" character varying COLLATE pg_catalog."default",
    "ROLLOVERNAME" character varying COLLATE pg_catalog."default",
    "ROLINLOC" character varying COLLATE pg_catalog."default",
    "ROLINLOCNAME" character varying COLLATE pg_catalog."default",
    "DEFORMED" character varying COLLATE pg_catalog."default",
    "DEFORMEDNAME" character varying COLLATE pg_catalog."default",
    "TOWED" character varying COLLATE pg_catalog."default",
    "TOWEDNAME" character varying COLLATE pg_catalog."default",
    "M_HARM" character varying COLLATE pg_catalog."default",
    "M_HARMNAME" character varying COLLATE pg_catalog."default",
    "VEH_ALCH" character varying COLLATE pg_catalog."default",
    "VEH_ALCHNAME" character varying COLLATE pg_catalog."default",
    "MAX_VSEV" character varying COLLATE pg_catalog."default",
    "MAX_VSEVNAME" character varying COLLATE pg_catalog."default",
    "NUM_INJV" character varying COLLATE pg_catalog."default",
    "NUM_INJVNAME" character varying COLLATE pg_catalog."default",
    "FIRE_EXP" character varying COLLATE pg_catalog."default",
    "FIRE_EXPNAME" character varying COLLATE pg_catalog."default",
    "DR_PRES" character varying COLLATE pg_catalog."default",
    "DR_PRESNAME" character varying COLLATE pg_catalog."default",
    "DR_ZIP" character varying COLLATE pg_catalog."default",
    "SPEEDREL" character varying COLLATE pg_catalog."default",
    "SPEEDRELNAME" character varying COLLATE pg_catalog."default",
    "VTRAFWAY" character varying COLLATE pg_catalog."default",
    "VTRAFWAYNAME" character varying COLLATE pg_catalog."default",
    "VNUM_LAN" character varying COLLATE pg_catalog."default",
    "VNUM_LANNAME" character varying COLLATE pg_catalog."default",
    "VSPD_LIMNAME" character varying COLLATE pg_catalog."default",
    "VALIGN" character varying COLLATE pg_catalog."default",
    "VALIGNNAME" character varying COLLATE pg_catalog."default",
    "VPROFILE" character varying COLLATE pg_catalog."default",
    "VPROFILENAME" character varying COLLATE pg_catalog."default",
    "VSURCOND" character varying COLLATE pg_catalog."default",
    "VSURCONDNAME" character varying COLLATE pg_catalog."default",
    "VTRAFCON" character varying COLLATE pg_catalog."default",
    "VTRAFCONNAME" character varying COLLATE pg_catalog."default",
    "VTCONT_F" character varying COLLATE pg_catalog."default",
    "VTCONT_FNAME" character varying COLLATE pg_catalog."default",
    "P_CRASH1" character varying COLLATE pg_catalog."default",
    "P_CRASH1NAME" character varying COLLATE pg_catalog."default",
    "P_CRASH2" character varying COLLATE pg_catalog."default",
    "P_CRASH2NAME" character varying COLLATE pg_catalog."default",
    "P_CRASH3" character varying COLLATE pg_catalog."default",
    "P_CRASH3NAME" character varying COLLATE pg_catalog."default",
    "PCRASH4" character varying COLLATE pg_catalog."default",
    "PCRASH4NAME" character varying COLLATE pg_catalog."default",
    "PCRASH5" character varying COLLATE pg_catalog."default",
    "PCRASH5NAME" character varying COLLATE pg_catalog."default",
    "ACC_TYPE" character varying COLLATE pg_catalog."default",
    "ACC_TYPENAME" character varying COLLATE pg_catalog."default",
    "VPICMAKE" character varying COLLATE pg_catalog."default",
    "VPICMAKENAME" character varying COLLATE pg_catalog."default",
    "VPICMODEL" character varying COLLATE pg_catalog."default",
    "VPICMODELNAME" character varying COLLATE pg_catalog."default",
    "VPICBODYCLASS" character varying COLLATE pg_catalog."default",
    "VPICBODYCLASSNAME" character varying COLLATE pg_catalog."default",
    "ICFINALBODY" character varying COLLATE pg_catalog."default",
    "ICFINALBODYNAME" character varying COLLATE pg_catalog."default",
    "GVWR_FROM" character varying COLLATE pg_catalog."default",
    "GVWR_FROMNAME" character varying COLLATE pg_catalog."default",
    "GVWR_TO" character varying COLLATE pg_catalog."default",
    "GVWR_TONAME" character varying COLLATE pg_catalog."default",
    "BDYTYP_IM" character varying COLLATE pg_catalog."default",
    "BDYTYP_IMNAME" character varying COLLATE pg_catalog."default",
    "MDLYR_IM" character varying COLLATE pg_catalog."default",
    "MDLYR_IMNAME" character varying COLLATE pg_catalog."default",
    "IMPACT1_IM" character varying COLLATE pg_catalog."default",
    "IMPACT1_IMNAME" character varying COLLATE pg_catalog."default",
    "VEVENT_IM" character varying COLLATE pg_catalog."default",
    "VEVENT_IMNAME" character varying COLLATE pg_catalog."default",
    "PCRASH1_IM" character varying COLLATE pg_catalog."default",
    "PCRASH1_IMNAME" character varying COLLATE pg_catalog."default",
    "MXVSEV_IM" character varying COLLATE pg_catalog."default",
    "MXVSEV_IMNAME" character varying COLLATE pg_catalog."default",
    "NUMINJ_IM" character varying COLLATE pg_catalog."default",
    "NUMINJ_IMNAME" character varying COLLATE pg_catalog."default",
    "V_ALCH_IM" character varying COLLATE pg_catalog."default",
    "V_ALCH_IMNAME" character varying COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Vehicles"
    OWNER to postgres;