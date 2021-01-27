# Hiển thị ra các sản phẩm có giá lớn hơn 56.76 và số lượng trong kho lớn hơn 10 
SELECT `productCode`, `productName`, `buyprice`, `quantityInStock` FROM `products`
WHERE `buyprice` > 56.76 AND `quantityInStock` > 10;

SELECT `productCode`,`productName`, `buyprice`, `textDescription`
FROM `products`
INNER JOIN `productlines`
ON `products.productline` = `productlines.productline`
WHERE `buyprice` > 56.76 AND `buyprice` < 95.59;

SELECT `productCode`, `productName`, `buyprice`, `quantityInStock`, `productVendor`, `productLine` 
FROM `products` 
WHERE `productLine` = 'Classic Cars' or `productVendor` = 'Min Lin Diecast'

