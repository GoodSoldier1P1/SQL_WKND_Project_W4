CREATE TABLE sales_rep(
    rep_id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    phone_number VARCHAR,
    rep_address VARCHAR,
    years_employed INTEGER
);

CREATE TABLE sales_history(
    sales_id SERIAL PRIMARY KEY,
    rep_id INTEGER,
    FOREIGN KEY (rep_id) REFERENCES sales_rep(rep_id)
);


CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    car_year INTEGER,
    make VARCHAR,
    model VARCHAR
);

CREATE TABLE sales_info(
    sales_id INTEGER,
    FOREIGN KEY (sales_id) REFERENCES sales_history(sales_id),
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    customer_address VARCHAR,
    phone_number VARCHAR
);

CREATE TABLE bank(
    bank_id SERIAL PRIMARY KEY,
    bank_name VARCHAR,
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE mechanics(
    mechanic_id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    phone_number VARCHAR,
    mechanic_address VARCHAR,
    years_employed INTEGER
);

CREATE TABLE repair_history(
    repair_id SERIAL PRIMARY KEY,
    mechanic_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id)
);

CREATE TABLE repair_info(
    repair_id INTEGER,
    FOREIGN KEY (repair_id) REFERENCES repair_history(repair_id),
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);