#Câu lệnh này Để biết được có bao nhiêu trạng thái của đơn hàng. 
SELECT `status` FROM `orders` 
group by `status`;

# Sử dụng các hàm tập hợp với mệnh đề group by 
SELECT `status`, COUNT(*) AS 'So luong status'
FROM `orders`
GROUP BY `status`;

# Sử dụng group by với hàm tập hợp truy vấn trên hai bảng. 
SELECT `status`, SUM(`quantityOrdered` * `priceEach`) AS `amount`
FROM `orders` 
INNER JOIN `orderdetails` ON `orders`.`ordernumber` = `orderdetails`.`ordernumber`
GROUP BY `status`;

# Một yêu cầu khác là tính tổng tiền của từng đơn hàng, thực hiện lệnh truy vấn sau 
SELECT `orderNumber`, SUM(`quantityOrdered` * `priceEach`) AS `total`
FROM `orderdetails`
GROUP BY `orderNumber`;

# GROUP BY với mệnh đề HAVING 
SELECT YEAR(`orderDate`) AS YEAR, SUM(`quantityOrdered` * `priceEach`) AS `total`
FROM `orders` 
INNER JOIN `orderdetails` ON `orders`.`orderNumber` = `orderdetails`.`orderNumber`
WHERE `status` = 'shipped'
GROUP BY YEAR
HAVING YEAR > 2003;