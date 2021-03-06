USE test;

DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
CREATE TABLE t1 (n Int32) ENGINE = Memory;
CREATE TABLE t2 (a Int32, n Int32) ENGINE = Memory;

SELECT count() FROM t1 WHERE if(1, 1, n = 0);
SELECT count(n) FROM t2 WHERE if(1, 1, n = 0);
SELECT count() FROM t2 WHERE if(1, 1, n = 0);

DROP TABLE t1;
DROP TABLE t2;
