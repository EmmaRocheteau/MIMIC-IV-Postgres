-- ----------------------------------------------------------------
--
-- This is a script to add the MIMIC-IV indexes for Postgres.
-- EDITED from https://github.com/MIT-LCP/mimic-code/blob/master/buildmimic/postgres/postgres_add_indexes.sql 
-- by Emma Rocheteau https://github.com/EmmaRocheteau
--
-- ----------------------------------------------------------------

-- If running scripts individually, you can set the schema where all tables are created as follows:
-- SET search_path TO mimiciv;

-- Restoring the search path to its default value can be accomplished as follows:
-- SET search_path TO "$user",public;

-------------
-- ADMISSIONS
-------------

DROP INDEX IF EXISTS ADMISSIONS_idx01;
CREATE INDEX ADMISSIONS_IDX01
  ON ADMISSIONS (SUBJECT_ID);

DROP INDEX IF EXISTS ADMISSIONS_idx02;
CREATE INDEX ADMISSIONS_IDX02
  ON ADMISSIONS (HADM_ID);

---------------
-- CHARTEVENTS
---------------

-- CHARTEVENTS is built in 10 partitions which are inherited by a single mother table, "CHARTEVENTS"
-- Therefore, indices need to be added on every single inherited (or partitioned) table.

DROP INDEX IF EXISTS chartevents_1_idx01;
CREATE INDEX chartevents_1_idx01 ON chartevents_1 (SUBJECT_ID);
DROP INDEX IF EXISTS chartevents_2_idx01;
CREATE INDEX chartevents_2_idx01 ON chartevents_2 (SUBJECT_ID);
DROP INDEX IF EXISTS chartevents_3_idx01;
CREATE INDEX chartevents_3_idx01 ON chartevents_3 (SUBJECT_ID);
DROP INDEX IF EXISTS chartevents_4_idx01;
CREATE INDEX chartevents_4_idx01 ON chartevents_4 (SUBJECT_ID);
DROP INDEX IF EXISTS chartevents_5_idx01;
CREATE INDEX chartevents_5_idx01 ON chartevents_5 (SUBJECT_ID);
DROP INDEX IF EXISTS chartevents_6_idx01;
CREATE INDEX chartevents_6_idx01 ON chartevents_6 (SUBJECT_ID);
DROP INDEX IF EXISTS chartevents_7_idx01;
CREATE INDEX chartevents_7_idx01 ON chartevents_7 (SUBJECT_ID);
DROP INDEX IF EXISTS chartevents_8_idx01;
CREATE INDEX chartevents_8_idx01 ON chartevents_8 (SUBJECT_ID);
DROP INDEX IF EXISTS chartevents_9_idx01;
CREATE INDEX chartevents_9_idx01 ON chartevents_9 (SUBJECT_ID);
DROP INDEX IF EXISTS chartevents_10_idx01;
CREATE INDEX chartevents_10_idx01 ON chartevents_10 (SUBJECT_ID);

DROP INDEX IF EXISTS chartevents_1_idx02;
CREATE INDEX chartevents_1_idx02 ON chartevents_1 (HADM_ID);
DROP INDEX IF EXISTS chartevents_2_idx02;
CREATE INDEX chartevents_2_idx02 ON chartevents_2 (HADM_ID);
DROP INDEX IF EXISTS chartevents_3_idx02;
CREATE INDEX chartevents_3_idx02 ON chartevents_3 (HADM_ID);
DROP INDEX IF EXISTS chartevents_4_idx02;
CREATE INDEX chartevents_4_idx02 ON chartevents_4 (HADM_ID);
DROP INDEX IF EXISTS chartevents_5_idx02;
CREATE INDEX chartevents_5_idx02 ON chartevents_5 (HADM_ID);
DROP INDEX IF EXISTS chartevents_6_idx02;
CREATE INDEX chartevents_6_idx02 ON chartevents_6 (HADM_ID);
DROP INDEX IF EXISTS chartevents_7_idx02;
CREATE INDEX chartevents_7_idx02 ON chartevents_7 (HADM_ID);
DROP INDEX IF EXISTS chartevents_8_idx02;
CREATE INDEX chartevents_8_idx02 ON chartevents_8 (HADM_ID);
DROP INDEX IF EXISTS chartevents_9_idx02;
CREATE INDEX chartevents_9_idx02 ON chartevents_9 (HADM_ID);
DROP INDEX IF EXISTS chartevents_10_idx02;
CREATE INDEX chartevents_10_idx02 ON chartevents_10 (HADM_ID);

DROP INDEX IF EXISTS chartevents_1_idx03;
CREATE INDEX chartevents_1_idx03 ON chartevents_1 (STAY_ID);
DROP INDEX IF EXISTS chartevents_2_idx03;
CREATE INDEX chartevents_2_idx03 ON chartevents_2 (STAY_ID);
DROP INDEX IF EXISTS chartevents_3_idx03;
CREATE INDEX chartevents_3_idx03 ON chartevents_3 (STAY_ID);
DROP INDEX IF EXISTS chartevents_4_idx03;
CREATE INDEX chartevents_4_idx03 ON chartevents_4 (STAY_ID);
DROP INDEX IF EXISTS chartevents_5_idx03;
CREATE INDEX chartevents_5_idx03 ON chartevents_5 (STAY_ID);
DROP INDEX IF EXISTS chartevents_6_idx03;
CREATE INDEX chartevents_6_idx03 ON chartevents_6 (STAY_ID);
DROP INDEX IF EXISTS chartevents_7_idx03;
CREATE INDEX chartevents_7_idx03 ON chartevents_7 (STAY_ID);
DROP INDEX IF EXISTS chartevents_8_idx03;
CREATE INDEX chartevents_8_idx03 ON chartevents_8 (STAY_ID);
DROP INDEX IF EXISTS chartevents_9_idx03;
CREATE INDEX chartevents_9_idx03 ON chartevents_9 (STAY_ID);
DROP INDEX IF EXISTS chartevents_10_idx03;
CREATE INDEX chartevents_10_idx03 ON chartevents_10 (STAY_ID);

DROP INDEX IF EXISTS chartevents_1_idx04;
CREATE INDEX chartevents_1_idx04 ON chartevents_1 (ITEMID);
DROP INDEX IF EXISTS chartevents_2_idx04;
CREATE INDEX chartevents_2_idx04 ON chartevents_2 (ITEMID);
DROP INDEX IF EXISTS chartevents_3_idx04;
CREATE INDEX chartevents_3_idx04 ON chartevents_3 (ITEMID);
DROP INDEX IF EXISTS chartevents_4_idx04;
CREATE INDEX chartevents_4_idx04 ON chartevents_4 (ITEMID);
DROP INDEX IF EXISTS chartevents_5_idx04;
CREATE INDEX chartevents_5_idx04 ON chartevents_5 (ITEMID);
DROP INDEX IF EXISTS chartevents_6_idx04;
CREATE INDEX chartevents_6_idx04 ON chartevents_6 (ITEMID);
DROP INDEX IF EXISTS chartevents_7_idx04;
CREATE INDEX chartevents_7_idx04 ON chartevents_7 (ITEMID);
DROP INDEX IF EXISTS chartevents_8_idx04;
CREATE INDEX chartevents_8_idx04 ON chartevents_8 (ITEMID);
DROP INDEX IF EXISTS chartevents_9_idx04;
CREATE INDEX chartevents_9_idx04 ON chartevents_9 (ITEMID);
DROP INDEX IF EXISTS chartevents_10_idx04;
CREATE INDEX chartevents_10_idx04 ON chartevents_10 (ITEMID);

--------------------
-- D_ICD_DIAGNOSES
--------------------

DROP INDEX IF EXISTS D_ICD_DIAG_idx01;
CREATE INDEX D_ICD_DIAG_idx01
  ON D_ICD_DIAGNOSES (ICD_CODE);

DROP INDEX IF EXISTS D_ICD_DIAG_idx02;
CREATE INDEX D_ICD_DIAG_idx02
  ON D_ICD_DIAGNOSES (LONG_TITLE);

--------------------
-- D_ICD_PROCEDURES
--------------------

DROP INDEX IF EXISTS D_ICD_PROC_idx01;
CREATE INDEX D_ICD_PROC_idx01
  ON D_ICD_PROCEDURES (ICD_CODE);

DROP INDEX IF EXISTS D_ICD_PROC_idx02;
CREATE INDEX D_ICD_PROC_idx02
  ON D_ICD_PROCEDURES (LONG_TITLE);

-----------
-- D_ITEMS
-----------

DROP INDEX IF EXISTS D_ITEMS_idx01;
CREATE INDEX D_ITEMS_idx01
  ON D_ITEMS (ITEMID);

DROP INDEX IF EXISTS D_ITEMS_idx02;
CREATE INDEX D_ITEMS_idx02
  ON D_ITEMS (LABEL);

---------------
-- D_LABITEMS
---------------

DROP INDEX IF EXISTS D_LABITEMS_idx01;
CREATE INDEX D_LABITEMS_idx01
  ON D_LABITEMS (ITEMID);

DROP INDEX IF EXISTS D_LABITEMS_idx02;
CREATE INDEX D_LABITEMS_idx02
  ON D_LABITEMS (LABEL);

DROP INDEX IF EXISTS D_LABITEMS_idx03;
CREATE INDEX D_LABITEMS_idx03
  ON D_LABITEMS (LOINC_CODE);

-------------------
-- DATETIMEEVENTS
-------------------

DROP INDEX IF EXISTS DATETIMEEVENTS_idx01;
CREATE INDEX DATETIMEEVENTS_idx01
  ON DATETIMEEVENTS (SUBJECT_ID);

DROP INDEX IF EXISTS DATETIMEEVENTS_idx02;
CREATE INDEX DATETIMEEVENTS_idx02
  ON DATETIMEEVENTS (ITEMID);

DROP INDEX IF EXISTS DATETIMEEVENTS_idx03;
CREATE INDEX DATETIMEEVENTS_idx03
  ON DATETIMEEVENTS (STAY_ID);

DROP INDEX IF EXISTS DATETIMEEVENTS_idx04;
CREATE INDEX DATETIMEEVENTS_idx04
  ON DATETIMEEVENTS (HADM_ID);

------------------
-- DIAGNOSES_ICD
------------------

DROP INDEX IF EXISTS DIAGNOSES_ICD_idx01;
CREATE INDEX DIAGNOSES_ICD_idx01
  ON DIAGNOSES_ICD (SUBJECT_ID);

DROP INDEX IF EXISTS DIAGNOSES_ICD_idx02;
CREATE INDEX DIAGNOSES_ICD_idx02
  ON DIAGNOSES_ICD (ICD_CODE);

DROP INDEX IF EXISTS DIAGNOSES_ICD_idx03;
CREATE INDEX DIAGNOSES_ICD_idx03
  ON DIAGNOSES_ICD (HADM_ID);

--------------
-- DRGCODES
--------------

DROP INDEX IF EXISTS DRGCODES_idx01;
CREATE INDEX DRGCODES_idx01
  ON DRGCODES (SUBJECT_ID);

DROP INDEX IF EXISTS DRGCODES_idx02;
CREATE INDEX DRGCODES_idx02
  ON DRGCODES (DRG_CODE);

DROP INDEX IF EXISTS DRGCODES_idx03;
CREATE INDEX DRGCODES_idx03
  ON DRGCODES (DESCRIPTION);

------------------
-- ICUSTAYS
------------------

DROP INDEX IF EXISTS ICUSTAYS_idx01;
CREATE INDEX ICUSTAYS_idx01
  ON ICUSTAYS (SUBJECT_ID);

DROP INDEX IF EXISTS ICUSTAYS_idx02;
CREATE INDEX ICUSTAYS_idx02
  ON ICUSTAYS (STAY_ID);

DROP INDEX IF EXISTS ICUSTAYS_idx03;
CREATE INDEX ICUSTAYS_idx03
  ON ICUSTAYS (HADM_ID);

------------------
-- EMAR
------------------

DROP INDEX IF EXISTS EMAR_idx01;
CREATE INDEX EMAR_idx01
  ON EMAR (SUBJECT_ID);

DROP INDEX IF EXISTS EMAR_idx02;
CREATE INDEX EMAR_idx02
  ON EMAR (EMAR_ID);

DROP INDEX IF EXISTS EMAR_idx03;
CREATE INDEX EMAR_idx03
  ON EMAR (HADM_ID);

------------------
-- EMAR_DETAIL
------------------

DROP INDEX IF EXISTS EMAR_DETAIL_idx01;
CREATE INDEX EMAR_DETAIL_idx01
  ON EMAR_DETAIL (SUBJECT_ID);

DROP INDEX IF EXISTS EMAR_DETAIL_idx02;
CREATE INDEX EMAR_DETAIL_idx02
  ON EMAR_DETAIL (EMAR_ID);

------------------
-- HCPCSEVENTS
------------------

DROP INDEX IF EXISTS HCPCSEVENTS_idx01;
CREATE INDEX HCPCSEVENTS_idx01
  ON HCPCSEVENTS (SUBJECT_ID);

DROP INDEX IF EXISTS HCPCSEVENTS_idx02;
CREATE INDEX HCPCSEVENTS_idx02
  ON HCPCSEVENTS (HADM_ID);

-------------
-- INPUTEVENTS
-------------

DROP INDEX IF EXISTS INPUTEVENTS_idx01;
CREATE INDEX INPUTEVENTS_idx01
  ON INPUTEVENTS (SUBJECT_ID);

DROP INDEX IF EXISTS INPUTEVENTS_idx02;
CREATE INDEX INPUTEVENTS_idx02
  ON INPUTEVENTS (HADM_ID);

DROP INDEX IF EXISTS INPUTEVENTS_idx03;
CREATE INDEX INPUTEVENTS_idx03
  ON INPUTEVENTS (STAY_ID);

DROP INDEX IF EXISTS INPUTEVENTS_idx04;
CREATE INDEX INPUTEVENTS_idx04
  ON INPUTEVENTS (ITEMID);

--------------
-- LABEVENTS
--------------

DROP INDEX IF EXISTS labevents_1_idx01;
CREATE INDEX labevents_1_idx01 ON labevents_1 (SUBJECT_ID);
DROP INDEX IF EXISTS labevents_2_idx01;
CREATE INDEX labevents_2_idx01 ON labevents_2 (SUBJECT_ID);
DROP INDEX IF EXISTS labevents_3_idx01;
CREATE INDEX labevents_3_idx01 ON labevents_3 (SUBJECT_ID);
DROP INDEX IF EXISTS labevents_4_idx01;
CREATE INDEX labevents_4_idx01 ON labevents_4 (SUBJECT_ID);
DROP INDEX IF EXISTS labevents_5_idx01;
CREATE INDEX labevents_5_idx01 ON labevents_5 (SUBJECT_ID);
DROP INDEX IF EXISTS labevents_6_idx01;
CREATE INDEX labevents_6_idx01 ON labevents_6 (SUBJECT_ID);
DROP INDEX IF EXISTS labevents_7_idx01;
CREATE INDEX labevents_7_idx01 ON labevents_7 (SUBJECT_ID);
DROP INDEX IF EXISTS labevents_8_idx01;
CREATE INDEX labevents_8_idx01 ON labevents_8 (SUBJECT_ID);
DROP INDEX IF EXISTS labevents_9_idx01;
CREATE INDEX labevents_9_idx01 ON labevents_9 (SUBJECT_ID);
DROP INDEX IF EXISTS labevents_10_idx01;
CREATE INDEX labevents_10_idx01 ON labevents_10 (SUBJECT_ID);

DROP INDEX IF EXISTS labevents_1_idx02;
CREATE INDEX labevents_1_idx02 ON labevents_1 (HADM_ID);
DROP INDEX IF EXISTS labevents_2_idx02;
CREATE INDEX labevents_2_idx02 ON labevents_2 (HADM_ID);
DROP INDEX IF EXISTS labevents_3_idx02;
CREATE INDEX labevents_3_idx02 ON labevents_3 (HADM_ID);
DROP INDEX IF EXISTS labevents_4_idx02;
CREATE INDEX labevents_4_idx02 ON labevents_4 (HADM_ID);
DROP INDEX IF EXISTS labevents_5_idx02;
CREATE INDEX labevents_5_idx02 ON labevents_5 (HADM_ID);
DROP INDEX IF EXISTS labevents_6_idx02;
CREATE INDEX labevents_6_idx02 ON labevents_6 (HADM_ID);
DROP INDEX IF EXISTS labevents_7_idx02;
CREATE INDEX labevents_7_idx02 ON labevents_7 (HADM_ID);
DROP INDEX IF EXISTS labevents_8_idx02;
CREATE INDEX labevents_8_idx02 ON labevents_8 (HADM_ID);
DROP INDEX IF EXISTS labevents_9_idx02;
CREATE INDEX labevents_9_idx02 ON labevents_9 (HADM_ID);
DROP INDEX IF EXISTS labevents_10_idx02;
CREATE INDEX labevents_10_idx02 ON labevents_10 (HADM_ID);

DROP INDEX IF EXISTS labevents_1_idx03;
CREATE INDEX labevents_1_idx03 ON labevents_1 (ITEMID);
DROP INDEX IF EXISTS labevents_2_idx03;
CREATE INDEX labevents_2_idx03 ON labevents_2 (ITEMID);
DROP INDEX IF EXISTS labevents_3_idx03;
CREATE INDEX labevents_3_idx03 ON labevents_3 (ITEMID);
DROP INDEX IF EXISTS labevents_4_idx03;
CREATE INDEX labevents_4_idx03 ON labevents_4 (ITEMID);
DROP INDEX IF EXISTS labevents_5_idx03;
CREATE INDEX labevents_5_idx03 ON labevents_5 (ITEMID);
DROP INDEX IF EXISTS labevents_6_idx03;
CREATE INDEX labevents_6_idx03 ON labevents_6 (ITEMID);
DROP INDEX IF EXISTS labevents_7_idx03;
CREATE INDEX labevents_7_idx03 ON labevents_7 (ITEMID);
DROP INDEX IF EXISTS labevents_8_idx03;
CREATE INDEX labevents_8_idx03 ON labevents_8 (ITEMID);
DROP INDEX IF EXISTS labevents_9_idx03;
CREATE INDEX labevents_9_idx03 ON labevents_9 (ITEMID);
DROP INDEX IF EXISTS labevents_10_idx03;
CREATE INDEX labevents_10_idx03 ON labevents_10 (ITEMID);

----------------------
-- MICROBIOLOGYEVENTS
----------------------

DROP INDEX IF EXISTS MICROBIOLOGYEVENTS_idx01;
CREATE INDEX MICROBIOLOGYEVENTS_idx01
  ON MICROBIOLOGYEVENTS (SUBJECT_ID);

DROP INDEX IF EXISTS MICROBIOLOGYEVENTS_idx02;
CREATE INDEX MICROBIOLOGYEVENTS_idx02
  ON MICROBIOLOGYEVENTS (HADM_ID);

----------------------
-- PHARMACY
----------------------

DROP INDEX IF EXISTS PHARMACY_idx01;
CREATE INDEX PHARMACY_idx01
  ON PHARMACY (SUBJECT_ID);

DROP INDEX IF EXISTS PHARMACY_idx02;
CREATE INDEX PHARMACY_idx02
  ON PHARMACY (HADM_ID);

DROP INDEX IF EXISTS PHARMACY_idx03;
CREATE INDEX PHARMACY_idx03
  ON PHARMACY (PHARMACY_ID);

----------------------
-- POE
----------------------

DROP INDEX IF EXISTS POE_idx01;
CREATE INDEX POE_idx01
  ON POE (SUBJECT_ID);

DROP INDEX IF EXISTS POE_idx02;
CREATE INDEX POE_idx02
  ON POE (HADM_ID);

DROP INDEX IF EXISTS POE_idx03;
CREATE INDEX POE_idx03
  ON POE (POE_ID);

----------------------
-- POE_DETAIL
----------------------

DROP INDEX IF EXISTS POE_DETAIL_idx01;
CREATE INDEX POE_DETAIL_idx01
  ON POE_DETAIL (SUBJECT_ID);

DROP INDEX IF EXISTS POE_idx02;
CREATE INDEX POE_DETAIL_idx02
  ON POE_DETAIL (POE_ID);

---------------
-- OUTPUTEVENTS
---------------
DROP INDEX IF EXISTS OUTPUTEVENTS_idx01;
CREATE INDEX OUTPUTEVENTS_idx01
  ON OUTPUTEVENTS (SUBJECT_ID);


DROP INDEX IF EXISTS OUTPUTEVENTS_idx02;
CREATE INDEX OUTPUTEVENTS_idx02
  ON OUTPUTEVENTS (ITEMID);


DROP INDEX IF EXISTS OUTPUTEVENTS_idx03;
CREATE INDEX OUTPUTEVENTS_idx03
  ON OUTPUTEVENTS (STAY_ID);


DROP INDEX IF EXISTS OUTPUTEVENTS_idx04;
CREATE INDEX OUTPUTEVENTS_idx04
  ON OUTPUTEVENTS (HADM_ID);

-------------
-- PATIENTS
-------------

-- Note that SUBJECT_ID is already indexed as it is unique

-- DROP INDEX IF EXISTS PATIENTS_idx01;
-- CREATE INDEX PATIENTS_idx01
--   ON PATIENTS (EXPIRE_FLAG);

------------------
-- PRESCRIPTIONS
------------------

DROP INDEX IF EXISTS PRESCRIPTIONS_idx01;
CREATE INDEX PRESCRIPTIONS_idx01
  ON PRESCRIPTIONS (SUBJECT_ID);

DROP INDEX IF EXISTS PRESCRIPTIONS_idx02;
CREATE INDEX PRESCRIPTIONS_idx02
  ON PRESCRIPTIONS (DRUG_TYPE);

DROP INDEX IF EXISTS PRESCRIPTIONS_idx03;
CREATE INDEX PRESCRIPTIONS_idx03
  ON PRESCRIPTIONS (DRUG);

DROP INDEX IF EXISTS PRESCRIPTIONS_idx04;
CREATE INDEX PRESCRIPTIONS_idx04
  ON PRESCRIPTIONS (HADM_ID);

---------------------
-- PROCEDUREEVENTS
---------------------

DROP INDEX IF EXISTS PROCEDUREEVENTS_idx01;
CREATE INDEX PROCEDUREEVENTS_idx01
  ON PROCEDUREEVENTS (SUBJECT_ID);

DROP INDEX IF EXISTS PROCEDUREEVENTS_idx02;
CREATE INDEX PROCEDUREEVENTS_idx02
  ON PROCEDUREEVENTS (HADM_ID);

DROP INDEX IF EXISTS PROCEDUREEVENTS_idx03;
CREATE INDEX PROCEDUREEVENTS_idx03
  ON PROCEDUREEVENTS (STAY_ID);

DROP INDEX IF EXISTS PROCEDUREEVENTS_idx04;
CREATE INDEX PROCEDUREEVENTS_idx04
  ON PROCEDUREEVENTS (ITEMID);

-------------------
-- PROCEDURES_ICD
-------------------

DROP INDEX IF EXISTS PROCEDURES_ICD_idx01;
CREATE INDEX PROCEDURES_ICD_idx01
  ON PROCEDURES_ICD (SUBJECT_ID);

DROP INDEX IF EXISTS PROCEDURES_ICD_idx02;
CREATE INDEX PROCEDURES_ICD_idx02
  ON PROCEDURES_ICD (ICD_CODE);

DROP INDEX IF EXISTS PROCEDURES_ICD_idx03;
CREATE INDEX PROCEDURES_ICD_idx03
  ON PROCEDURES_ICD (HADM_ID);

-------------
-- SERVICES
-------------

DROP INDEX IF EXISTS SERVICES_idx01;
CREATE INDEX SERVICES_idx01
  ON SERVICES (SUBJECT_ID);

DROP INDEX IF EXISTS SERVICES_idx02;
CREATE INDEX SERVICES_idx02
  ON SERVICES (HADM_ID);

-------------
-- TRANSFERS
-------------

DROP INDEX IF EXISTS TRANSFERS_idx01;
CREATE INDEX TRANSFERS_idx01
  ON TRANSFERS (SUBJECT_ID);

DROP INDEX IF EXISTS TRANSFERS_idx02;
CREATE INDEX TRANSFERS_idx02
  ON TRANSFERS (HADM_ID);