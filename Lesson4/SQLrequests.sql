SELECT * FROM Market.Products where price = (select min(price) from Products);
select * from Products where price > (SELECT avg(price) FROM Market.Products);
select Market.Orders.createdAt, Market.Orders.price, (select productName from Products where Products.Id = Orders.productId) as product from Orders;
select * from Products where id in (select productId from Orders);
select * from Products where price < all(select price from Products where manufacture = 'Apple');
select * from Products where not exists(select * from Orders where Orders.productId = Products.id);
select * from Products where id not in (select productid from Orders);