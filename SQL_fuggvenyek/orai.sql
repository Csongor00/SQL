--1. Feladat
/*A 'products' táblában határozd meg a 'standard_cost' mezőjének átlagértékét
a, az össezs rekord esetében*/
USE northwind;
SELECT AVG(standard_cost) as Átlag FROM products;
