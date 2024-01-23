SELECT Manufacturer, count(*) as ModelCount FROM test.Products group by Manufacturer;
SELECT Manufacturer, ProductCount, count(*) as ModelCount FROM test.Products group by Manufacturer, ProductCount;
SELECT Manufacturer, count(*) FROM test.Products where Price>17000 group by Manufacturer;
SELECT Manufacturer, count(*) as ModelsCount FROM test.Products where Price>17000 group by Manufacturer order by ModelsCount;
select Manufacturer, count(*) as ModelsCount from test.Products group by Manufacturer having count(*)>1;
select Manufacturer, count(*) as ModelsCount, sum(ProductCount) as units 
	from test.Products 
    group by Manufacturer 
    having sum(ProductCount) > 10 
    order by units;

