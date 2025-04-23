--==============================
--====CIS310 ASSIGNMENT 6=======
--==============================

/*
STUDENT NAME: Darrell Liwanag 
STUDENT ID: 5479083
SUBMISSION DATE: 3/24/23
*/

--1. List the owner number, last name, and first name of every property owner.
SELECT OWNER_NUM, LAST_NAME, FIRST_NAME --SELECTING DATA
	FROM OWNER; -- CHOOSING FROM APPROPRIATE TABLE
--2. List the complete PROPERTY table (all rows and all columns).
SELECT * --SELECTING ALL DATA
	FROM PROPERTY; --SELECTING FROM PROPERTY
--3. List the last name and first name of every owner who lives in Seattle.
SELECT LAST_NAME, FIRST_NAME --SELECTING DATA
	FROM OWNER --SELECTING FROM OWNER TABLE
		WHERE CITY = 'Seattle'; --HAVE TO FIND SEATTLE
--4. List the last name and first name of every owner who does not live in Seattle.
SELECT LAST_NAME, FIRST_NAME --SELECTING DATA
	FROM OWNER --FROM THE OWNER TABLE
		WHERE NOT(CITY = 'Seattle'); --ANYTHING BUT SEATTLE
--5. List the property ID and office number for every property whose square footage 
--is equal to or less than 1,400 square feet.
SELECT PROPERTY_ID, OFFICE_NUM --SELECTING DATA
	FROM PROPERTY --FROM THE PROPERTY TABLE
		WHERE SQR_FT <= 1400; --FILTERING DATA BY SPECIFIED SQR FOOT
--6. List the office number and address for every property with three bedrooms.
SELECT OFFICE_NUM, ADDRESS --SELECTING DATA
	FROM PROPERTY -- FROM PROPERTY
		WHERE BDRMS = 3; --FILTERING SO ONLY 3 ROOM BEDROOMS SHOW
--7. List the property ID for every property with two bedrooms that is managed by StayWell-Georgetown
--USE THE GIVEN NAME (*hint subquery). 
SELECT PROPERTY_ID  --SELECTING DATA
	FROM PROPERTY --FROM PROPERTY
		WHERE BDRMS = 2 -- WHERE BEDROOMS ARE 2
		AND OFFICE_NUM = 2; -- ALSO INCLUDES THE GEORGETOWN MANAGEMENT
--8. List the property ID for every property with a monthly rent that is between $1,350 and $1,750 
--MUST USE PROPER OPERATOR FOR FULL CREDIT.
SELECT PROPERTY_ID -- SELECTING DATA
	FROM PROPERTY -- FROM PROPERTY
	WHERE MONTHLY_RENT BETWEEN 1350 AND 1750; --MAKING CRITERIA TO SHOW FILTERED RENT
--9. Labor is billed at the rate of $35 per hour. 
--List the property ID, category number, estimated hours, and estimated labor cost for every service request. 
--Sort the results by the estimated cost from highes to lowest.
--To obtain the estimated labor cost, multiply the estimated hours by 35. 
--Use the column name ESTIMATED_COST for the estimated labor cost.
SELECT PROPERTY_ID, CATEGORY_NUMBER, EST_HOURS, EST_HOURS * 35 AS ESTIMATED_COST -- SELECTING DATA AND MAKING NEW COLUM WITH EXPRESSION
	FROM SERVICE_REQUEST -- FROM SERVICE REQUEST TABLE
	ORDER BY ESTIMATED_COST DESC; -- ORDERING IT IN DESCENDING ORDER BY COST
--10. List the owner number and last name for all owners who live in Nevada (NV), Oregon (OR), or Idaho (ID)
--USE THE APPROPRIATE OPERATOR FOR FULL CREDIT.
SELECT OWNER_NUM, LAST_NAME --SELECTING DATA
	FROM OWNER --FROM OWNER
	WHERE STATE = 'NV' --MUST FIT 1 OF 3 CRITERIA
	OR STATE = 'OR'
	OR STATE = 'ID';
--11. List the owner number, property ID, square footage, and monthly rent for all properties. 
--Sort the results by monthly rent within the square footage.
SELECT OWNER_NUM, PROPERTY_ID, SQR_FT, MONTHLY_RENT --SELECTING DATA
	FROM PROPERTY --FROM PROPERTY
	ORDER BY MONTHLY_RENT, SQR_FT; --ORDERING BY ONE THEN BY THE OTHER
--12. How many three-bedroom properties are managed by each office?
SELECT OFFICE_NUM, COUNT(*) AS THREE_BED -- SELECTING DATA AND COUNTING IT
	FROM PROPERTY --FROM PROPERTY
		WHERE BDRMS = 3 --BEDROOM HAS TO 3 OF THEM
			GROUP BY OFFICE_NUM; --GROUPING IT AFTERWARDS



