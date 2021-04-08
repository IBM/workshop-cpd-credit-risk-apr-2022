--DROP SCHEMA CUSTOMER RESTRICT;
--DROP SCHEMA MORTGAGE RESTRICT;
--DROP SCHEMA INSURANCE RESTRICT;
--
--DROP TABLE CUSTOMER.CUSTOMER;
--DROP TABLE CUSTOMER.CUSTOMER_ATTRITION;
--DROP TABLE CUSTOMER.CUSTOMER_ACTIVITY;
--DROP TABLE CUSTOMER.CUSTOMER_OFFERS;
--
--DROP TABLE INSURANCE.AUTO_INSURANCE_POLICY;
--DROP TABLE INSURANCE.AUTO_INSURANCE_CLAIM;
--
--DROP TABLE MORTGAGE.MORTGAGE_APPLICANT;
--DROP TABLE MORTGAGE.MORTGAGE_CUSTOMER;
--DROP TABLE MORTGAGE.MORTGAGE_DEFAULT;
--DROP TABLE MORTGAGE.MORTGAGE_PROPERTY;
--
CREATE SCHEMA CUSTOMER;
CREATE SCHEMA MORTGAGE;
CREATE SCHEMA INSURANCE;
;
--GRANT SELECTIN ON SCHEMA MORTGAGE TO WATSONDEMO;
;
CREATE TABLE CUSTOMER.CUSTOMER
(
 CUSTOMER						VARCHAR(7)
,NAME 							VARCHAR(50) 
,COUNTRY 						VARCHAR(4) 
,LATITUDE 						DECIMAL(21,9) 
,LONGITUDE 						DECIMAL(21,9) 
,STREET_ADDRESS 				VARCHAR(50) 
,CITY 							VARCHAR(30) 
,STATE 							VARCHAR(25) 
,STATE_CODE 					VARCHAR(5) 
,ZIP_CODE 						VARCHAR(9) 
,EMAIL_ADDRESS 					VARCHAR(40) 
,PHONE_NUMBER 					VARCHAR(17) 
,GENDER 						VARCHAR(6) 
,NATIONAL_ID 					VARCHAR(16) 
,CREDITCARD_NUMBER 				VARCHAR(16) 
,CREDITCARD_TYPE 				VARCHAR(16) 
,CREDITCARD_EXP 				VARCHAR(5) 
,CREDITCARD_CVV 				SMALLINT 
,EDUCATION 						VARCHAR(20) 
,EMPLOYMENT_STATUS 				VARCHAR(13) 
,INCOME 						INTEGER 
,MARITAL_STATUS 				VARCHAR(8) 
,CUSTOMER_LIFETIME_VALUE 		DECIMAL(16,6) 
,NUMBER_OF_POLICIES 			SMALLINT 
,NUMBER_OF_CLOSED_COMPLAINTS 	SMALLINT 
,NUMBER_OF_COMMUNICATIONS 		SMALLINT 
,NUMBER_OF_COMPLAINTS 			SMALLINT 
,NUMBER_OF_OPEN_COMPLAINTS 		SMALLINT
)
--ORGANIZE BY ROW
;
CREATE TABLE CUSTOMER.CUSTOMER_ATTRITION
(
ID 								SMALLINT
,CHURNRISK 						VARCHAR(6) 
)
--ORGANIZE BY ROW
;
CREATE TABLE CUSTOMER.CUSTOMER_ACTIVITY
(
ID 								SMALLINT NOT NULL
,CUSTOMER 						VARCHAR(7)
,TOTAL_DOLLAR_VALUE_TRADED 		DECIMAL(9,2)
,TOTAL_UNITS_TRADED 			SMALLINT
,LARGEST_SINGLE_TRANSACTION 	DECIMAL(12,4) 
,SMALLEST_SINGLE_TRANSACTION 	DECIMAL(13,5) 
,PERCENT_CHANGE_CALCULATION 	DECIMAL(6,2) 
,DAYS_SINCE_LAST_LOGIN 			SMALLINT 
,DAYS_SINCE_LAST_TRADE 			SMALLINT 
,NET_REALIZED_GAINS_YTD 		DECIMAL(12,4) 
,NET_REALIZED_LOSSES_YTD		DECIMAL(13,5)
)
--ORGANIZE BY ROW 
;
CREATE TABLE CUSTOMER.CUSTOMER_OFFERS
(
ID 								SMALLINT NOT NULL
,GENDER 						CHAR(1)
,STATUS							CHAR(1) 
,TOTAL_DOLLAR_VALUE_TRADED 		DECIMAL(9,2) 
,TOTAL_UNITS_TRADED				SMALLINT
,OFFER_ACCEPTED 				VARCHAR(25) 
,OFFER_COST 					SMALLINT
)
--ORGANIZE BY ROW
;
CREATE TABLE INSURANCE.AUTO_INSURANCE_POLICY
(
 CUSTOMER 						VARCHAR(7)
,POLICY_ID 						VARCHAR(9) 
,COVERAGE 						VARCHAR(8) 
,EFFECTIVE_TO_DATE 				DATE 
,POLICY_TYPE 					VARCHAR(14) 
,POLICY 						VARCHAR(12) 
,RENEW_OFFER 					VARCHAR(6) 
,SALES_CHANNEL 					VARCHAR(11) 
,AGENT_ID 						VARCHAR(9) 
,FAMILY_MEMBERS_INCLUDED 		SMALLINT 
,MONTHLY_AUTO_PREMIUM 			SMALLINT 
,LAST_CLAIM 					SMALLINT 
,POLICY_CHANGE 					SMALLINT 
,POLICY_INCEPTION 				SMALLINT 
,DENIED_CLAIMS 					SMALLINT 
,CLAIMS_FILED 					SMALLINT 
,AVG_LENGTH_OF_HANDLING_PROCESS SMALLINT 
,ADD_DRIVER_INTO_POLICY 		SMALLINT 
,ADDRESS_CHANGE_COUNT 			SMALLINT 
,MAINTENANCE_COST 				DECIMAL(4,1) 
,AUTO_MODEL_YEAR 				SMALLINT 
,AUTO_MAKE 						VARCHAR(13) 
,AUTO_MODEL 					VARCHAR(15) 
,AUTO_COLOR 					VARCHAR(11)
)
--ORGANIZE BY ROW
;
CREATE TABLE INSURANCE.AUTO_INSURANCE_CLAIM
(
 CUSTOMER 						VARCHAR(7) 
,CLAIM_ID 						BIGINT 
,POLICY_ID 						VARCHAR(9) 
,FIRST_NOTICE_OF_LOSS_DATE 		DATE 
,RESPONSE 						VARCHAR(3) 
,CLAIM_REASON 					VARCHAR(12) 
,INCIDENT_SUMMARY 				VARCHAR(175) 
,CLAIM_AMOUNT 					DECIMAL(17,7) 
,TOTAL_CLAIM_AMOUNT 			DECIMAL(16,6)
)
;
CREATE TABLE MORTGAGE.MORTGAGE_DEFAULT
(
ID 								INTEGER 
,MORTGAGE_DEFAULT 				VARCHAR(3)
)
--ORGANIZE BY ROW 
;
CREATE TABLE MORTGAGE.MORTGAGE_PROPERTY
(
ID 								INTEGER 
,SALEPRICE						INTEGER 
,LOCATION						VARCHAR(4)
)
--ORGANIZE BY ROW 
;
CREATE TABLE MORTGAGE.MORTGAGE_CUSTOMER
(
ID 								INTEGER 
,INCOME							INTEGER 
,APPLIEDONLINE					VARCHAR(3) 
,RESIDENCE						VARCHAR(28) 
,YRS_AT_CURRENT_ADDRESS			SMALLINT 
,YRS_WITH_CURRENT_EMPLOYER		SMALLINT 
,NUMBER_OF_CARDS				SMALLINT 
,CREDITCARD_DEBT				SMALLINT 
,LOANS 							SMALLINT 
,LOAN_AMOUNT					SMALLINT
)
--ORGANIZE BY ROW
;
CREATE TABLE MORTGAGE.MORTGAGE_APPLICANT
(
 ID								INTEGER
,NAME 							VARCHAR(50)
,STREET_ADDRESS 				VARCHAR(50) 
,CITY 							VARCHAR(30) 
,STATE 							VARCHAR(25) 
,STATE_CODE 					VARCHAR(5) 
,ZIP_CODE 						VARCHAR(9) 
,EMAIL_ADDRESS 					VARCHAR(40) 
,PHONE_NUMBER 					VARCHAR(17) 
,GENDER 						VARCHAR(6) 
,SOCIAL_SECURITY_NUMBER			VARCHAR(16) 
,EDUCATION 						VARCHAR(20) 
,EMPLOYMENT_STATUS 				VARCHAR(13)
,MARITAL_STATUS 				VARCHAR(8)
)
--ORGANIZE BY ROW
;