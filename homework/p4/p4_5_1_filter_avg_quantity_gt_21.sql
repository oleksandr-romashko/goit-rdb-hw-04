USE `goit-rdb-hw-03`;

-- Combined table for order_details, orders, customers, products, categories, employees, shippers, suppliers
SELECT 
    categories.name AS category_name,
    COUNT(*) AS products_count,
    AVG(order_details.quantity) AS product_average_quantity
FROM order_details
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
WHERE employees.employee_id BETWEEN 4 AND 10
GROUP BY categories.name
HAVING product_average_quantity > 21;