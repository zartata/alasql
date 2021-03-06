-- MODULE MPB010A
-- ORDER OF EXECUTION:  2
-- PREVIOUS PROGRAM:    MPA010A
-- NEXT PROGRAM:        MPA010B

-- SQL Test Suite, V6.0, Interactive SQL, mpb010a.sql
-- 59-byte ID
-- TEd Version #

-- AUTHORIZATION HU

   SELECT USER FROM HU.ECCO;
-- RERUN if USER value does not match preceding AUTHORIZATION comment
   ROLLBACK WORK;

-- date_time print

-- TEST:0627 <grant statement> (static)!

SELECT COUNT(*) FROM FLATER.GRANT010;
-- PASS:0627 If ERROR, syntax error/access violation, 0 rows selected?

INSERT INTO FLATER.GRANT010 VALUES (0);
-- PASS:0627 If ERROR, syntax error/access violation, 0 rows inserted?

UPDATE FLATER.GRANT010 SET C1 = 0;
-- PASS:0627 If ERROR, syntax error/access violation, 0 rows updated?

DELETE FROM FLATER.GRANT010;
-- PASS:0627 If ERROR, syntax error/access violation, 0 rows deleted?

COMMIT WORK;

-- Now execute MPA010B as FLATER!

-- *************************************************////END-OF-MODULE
