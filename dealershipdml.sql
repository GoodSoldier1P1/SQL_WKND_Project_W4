INSERT INTO car(
    car_year,
    make,
    model
) VALUES(
    2022,
    'toyota',
    'camry'
), (
    2022,
    'toyota',
    'camry'
), (
    2020,
    'chevy',
    'silverado'
), (
    2021,
    'ford',
    'f150'
), (
    2019,
    'honda',
    'civic'
), (
    2019,
    'nissan',
    'altima'
), (
    2020,
    'nissan',
    'altima'
), (
    2020,
    'nissan',
    'altima'
), (
    2020,
    'nissan',
    'altima'
);

SELECT *
FROM car;


INSERT INTO customer(
    full_name,
    customer_address,
    phone_number
) VALUES(
    'daniel amyx',
    '111 there st',
    '111-222-3333'
), (
    'blaine amyx',
    '222 here rd',
    '222-333-4444'
), (
    'daniel blaine',
    '333 where st',
    '333-444-5555'
);

SELECT *
FROM customer;


INSERT INTO sales_rep(
    full_name,
    phone_number,
    rep_address,
    years_employed
) VALUES(
    'daniel amyx',
    '111-222-3333',
    '111 there st',
    3
), (
    'blaine amyx',
    '222-333-4444',
    '222 here rd',
    1
);

SELECT *
FROM sales_rep;



INSERT INTO mechanics(
    full_name,
    phone_number,
    mechanic_address,
    years_employed
) VALUES(
    'daniel amyx',
    '111-222-3333',
    '111 there st',
    3
), (
    'blaine amyx',
    '222-333-4444',
    '222 here rd',
    1
);

SELECT *
FROM mechanics;


INSERT INTO bank(
    bank_name,
    car_id,
    customer_id
) VALUES(
    'Chase Bank',
    1,
    1
), (
    'Chase Bank',
    2,
    1
), (
    'Peoples Bank',
    9,
    2
), (
    'Peoples Bank',
    8,
    2
), (
    'Chase Bank',
    5,
    1
);

SELECT *
FROM bank;



SELECT customer.customer_id, full_name
FROM bank
INNER JOIN customer
ON bank.customer_id=customer.customer_id
WHERE full_name = 'daniel amyx';


INSERT INTO repair_history(
    mechanic_id
) VALUES(
    1
), (
    1
), (
    1
), (
    2
), (
    2
);

SELECT *
FROM repair_history;


INSERT INTO repair_info(
    repair_id,
    car_id
) VALUES(
    1,
    8
), (
    2,
    6
), (
    3,
    9
),(
    4,
    1
), (
    5,
    3
);

SELECT *
FROM repair_info;

SELECT *
FROM sales_history;

INSERT INTO sales_history(
    rep_id
) VALUES(
    1
), (
    1
), (
    1
), (
    2
), (
    2
);

INSERT INTO sales_info(
    sales_id,
    car_id
) VALUES(
    1,
    2
), (
    2,
    4
), (
    3,
    6
), (
    3,
    8
), (
    4,
    1
), (
    5,
    9
);

SELECT mechanic_id, full_name
FROM mechanics
WHERE mechanic_id IN (
    SELECT mechanic_id
    FROM mechanics
    GROUP BY mechanic_id
    HAVING full_name = 'blaine amyx'
);

SELECT repair_info.car_id, mechanic_id
FROM mechanics
WHERE mechanic_id IN(
    SELECT mechanic_id
    FROM repair_info
    GROUP BY mechanic_id
);

SELECT full_name, mechanics.mechanic_id, repair_info.car_id, repair_history.repair_id
FROM mechanics
INNER JOIN repair_history
ON mechanics.mechanic_id=repair_history.mechanic_id
INNER JOIN repair_info
ON repair_history.repair_id=repair_info.repair_id;


SELECT full_name, sales_history.sales_id, sales_info.car_id
FROM sales_rep
INNER JOIN sales_history
ON sales_rep.rep_id=sales_history.rep_id
INNER JOIN sales_info
ON sales_history.sales_id=sales_info.sales_id;