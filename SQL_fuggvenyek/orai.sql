--1. Feladat
/*A 'products' táblában határozd meg a 'standard_cost' mezőjének átlagértékét
a, az össezs rekord esetében*/
USE northwind;
SELECT AVG(standard_cost) as Átlag FROM products;
--b, azon rekordok esetében, amelyeknél a 'list_price' 30-nál kisebb értékű,
SELECT AVG(standard_cost) as Átlag FROM products WHERE list_price < 30;
--c, azon rekordok esetében, amelyeknél a 'category' mezőben 'Sauces' érték található!
SELECT AVG(standard_cost) as Átlag FROM products WHERE category = "Sauces";
--2. Feladat
/*A 'products' táblában határozd meg a 'standard_cost' mezőjének összértékét
a, az össezs rekord esetében*/
USE northwind;
SELECT SUM(standard_cost) as Összérték FROM products;
--b, azon rekordok esetében, amelyeknél a 'list_price' értéke 20 és 50 közötti,
SELECT SUM(standard_cost) as Összérték FROM products WHERE list_price BETWEEN 20 AND 50;
--c, azon rekordok esetében, amelyeknél a 'category' mezőben NEM 'Sauces' érték található!
SELECT SUM(standard_cost) as Összérték FROM products WHERE category <> "Sauces";
/*3. Feladat
A 'employees' táblában határozd meg azon alkalmazottak számát
a, akik Seattle-ben laknak*/
SELECT COUNT(id) AS Seattle from employees WHERE city = "Seattle";
--b, akiknek 'Sales Representative' munkakörben dolgoznak
USE northwind;
SELECT COUNT(id) AS Sales_munkakor FROM employees WHERE job_title = 'Sales Representative';
--c, akiknek a keresztneve 'A' betűvel kezdődik!
SELECT COUNT(first_name) as keresztnev from employees WHERE first_name LIKE 'A%';
/*4. Feladat
A 'products' táblában határozd meg a 'standard_cost' oszlop
a, legkisebb értékét,*/
SELECT MIN(standard_cost) AS legkisebb FROM products;
--b, legnagyobb értékét,
SELECT MAX(standard_cost) AS legkisebb FROM products;
--c, legnagyobb értékét, azon rekordok esetében, ahol a 'list_price' legalább 30,
SELECT MAX(standard_cost) AS legnagyobb_30 FROM products WHERE list_price >=30;
--d, legnagyobb értékét, azon rekordok esetében, ahol a 'product_code' tartalmazza a 'CO' sztringet!
SELECT MAX(standard_cost) AS CO FROM products WHERE product_code LIKE '%CO%';
