--1--
SELECT * FROM owners o FULL JOIN vehicles v ON o.id = v.owner_id;
--2--
SELECT first_name, last_name, COUNT(o.id) FROM owners o FULL JOIN vehicles v ON o.id = v.owner_id GROUP BY first_name, last_name ORDER BY first_name ASC;
--3--
SELECT first_name, last_name, AVG(v.price), COUNT(o.id) FROM owners o FULL JOIN vehicles v ON o.id = v.owner_id WHERE o.id > 1 AND v.price > 10000  GROUP BY first_name, last_name ORDER BY first_name DESC;