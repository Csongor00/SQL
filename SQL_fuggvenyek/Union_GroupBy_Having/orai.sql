/*1. Feladat
Az orders tábla ship_state_province mezőjének értékeit fésüld össze a customers tábla state_province mezőjének értékeivel úgy, hogy
- minden érték csak egyszer szerepeljen,*/
SELECT DISTINCT ship_state_province FROM orders;
--- az értékek ismétlődhetnek!
USE northwind;
SELECT DISTINCT ship_state_province FROM orders
UNION ALL
SELECT state_province FROM customers;
/*2. Feladat
A products táblában számold meg kategóriánként (category mező) a termékek számát!*/
USE northwind;
SELECT COUNT(category), category FROM products GROUP BY category;
/*3. Feladat
A orders táblában számold meg városonként (ship_city mező) a rendelések számát!*/
USE northwind;
SELECT COUNT(ship_city), ship_city FROM orders GROUP BY ship_city;
/*4. Feladat
A customers táblából kérd le az ügyfelek számát városonként, ha az eléri legalább a 3-at!*/
SELECT COUNT(id), city FROM customers GROUP BY city HAVING COUNT(id) >3;



