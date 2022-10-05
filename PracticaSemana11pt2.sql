USE Playstation;

--TABLA TEMPORAL MEDIANTE SELECT

SELECT productname
INTO #temporary_prductname --tabla temporal local
FROM products
WHERE productsID IN (
      SELECT productsID FROM employee
);

--subconsultas
SELECT
     fullname, productname, quantity
FROM products, employee
WHERE fullname  IN(
    SELECT fullname  
	WHERE productname='Playstation 5'
);

SELECT
     fullname, productname, quantity
FROM products, employee
WHERE fullname  NOT IN(
    SELECT fullname  
	WHERE productname='Playstation 5'
);

--FUNCIONES
SELECT 
     productsID, productname, quantity
FROM Products p1
WHERE quantity IN(
	  SELECT MAX(quantity) max_list_price
      FROM Products);

--OPERADORES
SELECT
     productsID, productname, quantity
FROM products
WHERE NOT EXISTS(
    SELECT productsID
	FROM sale
	WHERE sale.employeeID=products.productsID
);

--Clausula
SELECT quantity, productname
FROM products GROUP BY quantity, productname ORDER BY quantity, productname DESC
