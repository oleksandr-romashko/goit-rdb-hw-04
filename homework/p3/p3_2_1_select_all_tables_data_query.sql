USE `goit-rdb-hw-03`;

# Combined table for order_details, orders, customers, products, categories, employees, shippers, suppliers
SELECT 
    order_details.id,
    # columns from orders
    orders.id AS order_id, 
    orders.date AS order_date,
    # columns from customers
    customers.name AS customer_name, 
    customers.contact AS customer_contact, 
    customers.address AS customer_address,
    customers.city AS customer_city,
    customers.postal_code AS customer_postal_code,
    customers.country AS customer_country,
    # columns from shippers
    shippers.name AS shipper_name,
    shippers.phone AS shipper_phone,
    # columns from categories
    categories.name AS product_category,
    categories.description AS product_category_desc,
    # columns from order_details
    order_details.quantity AS product_quantity,
    # columns from products
    products.name AS product_name,
    products.unit AS product_unit,
    products.price AS product_price,
    # columns from suppliers
    suppliers.name AS supplier_name,
    suppliers.contact AS supplier_contact,
    suppliers.address AS supplier_address,
    suppliers.city AS supplier_city,
    suppliers.postal_code AS supplier_postal_code,
    suppliers.country AS supplier_country,
    suppliers.phone AS supplier_phone,
    # columns from employees
    employees.first_name AS employee_first_name,
    employees.last_name AS employee_last_name,
    employees.birthdate AS employee_birthdate,
    employees.photo AS employee_photo,
    employees.notes AS employee_note
FROM order_details
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id;