USE sql_store;
-- @Block
SELECT * FROM customers
-- WHERE first_name IN("ELKA", "AMBUR");
-- contains
WHERE first_name REGEXP 'ELKA|AMBUR';

-- @Block
SELECT * FROM customers
-- ^(starts with) $(ends with) 
WHERE last_name REGEXP 'EY$|ON$';

-- @Block
SELECT * FROM customers
-- ^(stars with MY) | (or contains SE)
WHERE last_name REGEXP '^MY|SE';

-- @Block
SELECT * FROM customers
-- contains B follwed by R or U i.e. BR or BU
WHERE last_name REGEXP 'B[RU]'

-- [ABCDEF]N   --> starts with A, B, ... followed by N i.e. AN, BN, CN, ...and
-- [A-F]N --> same as above
-- N[A-F]  --> NA, NB, ... NF









