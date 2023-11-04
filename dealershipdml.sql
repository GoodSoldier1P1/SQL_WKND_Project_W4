INSERT INTO car(
    car_year,
    make,
    model
) Values(
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
) Values(
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
) Values(
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
) Values(
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