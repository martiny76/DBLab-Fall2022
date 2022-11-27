CREATE DATABASE "Automobile"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE "Automobile"
    IS 'Database for Cars and Dealers';

//--------------------------------------------------------------------------------------------------------
CREATE TYPE public.car_class AS ENUM
    ('A (segment mini cars)', 'B (segment small cars)', 'C (segment medium cars)', 'D (segment large cars)', 'E (segment executive cars)', 'F (segment luxury cars)', 'S (segment sports coupés)', 'M (segment multi purpose cars)', 'J (segment sport utility cars)');

ALTER TYPE public.car_class
    OWNER TO postgres;

COMMENT ON TYPE public.car_class
    IS 'different type of car classes';

//--------------------------------------------------------------------------------------------------------
CREATE TYPE public.car_fuel AS ENUM
    ('Petrol', 'Gas', 'Disel');

ALTER TYPE public.car_fuel
    OWNER TO postgres;

COMMENT ON TYPE public.car_fuel
    IS 'different types of car fuel';

//--------------------------------------------------------------------------------------------------------
CREATE TABLE public.car
(
    id serial NOT NULL,
    company character varying(25) NOT NULL,
    model character varying(25) NOT NULL,
    car_class car_class NOT NULL,
    engine text NOT NULL,
    engine_capacity smallint NOT NULL,
    max_engine_power smallint NOT NULL,
    max_engine_torque smallint NOT NULL,
    poppet_num smallint NOT NULL,
    fuel car_fuel NOT NULL,
    max_speed smallint NOT NULL,
    gearbox text NOT NULL,
    fuel_consumption double precision NOT NULL,
    car_length smallint NOT NULL,
    car_width smallint NOT NULL,
    car_height smallint NOT NULL,
    car_weight smallint NOT NULL,
    fuel_capacity smallint NOT NULL,
    trunk_capacity smallint NOT NULL,
    price integer NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT engine_capacity_check CHECK (engine_capacity > 0),
    CONSTRAINT max_engine_power_check CHECK (max_engine_power > 0),
    CONSTRAINT max_engine_torque_check CHECK (max_engine_torque > 0),
    CONSTRAINT poppet_num_check CHECK (poppet_num > 0),
    CONSTRAINT max_speed_check CHECK (max_speed > 0),
    CONSTRAINT fuel_consumption_check CHECK (fuel_consumption > 0),
    CONSTRAINT car_length_check CHECK (car_length > 0),
    CONSTRAINT car_width_check CHECK (car_width > 0),
    CONSTRAINT car_height_check CHECK (car_height > 0),
    CONSTRAINT car_weight_check CHECK (car_weight > 0),
    CONSTRAINT fuel_capacity_check CHECK (fuel_capacity > 0),
    CONSTRAINT trunk_capacity CHECK (trunk_capacity > 0),
    CONSTRAINT price_check CHECK (price > 0) NOT VALID
);

ALTER TABLE IF EXISTS public.car
    OWNER to postgres;

COMMENT ON COLUMN public.car.engine_capacity
    IS 'in cc';

COMMENT ON COLUMN public.car.max_engine_power
    IS 'in hp';

COMMENT ON COLUMN public.car.max_engine_torque
    IS 'in Nm';

COMMENT ON COLUMN public.car.max_speed
    IS 'in km/h';
// ---------------------------------------------------------------------------------------
CREATE TABLE public.dealer
(
    id serial NOT NULL,
    dealer_name character varying(25) NOT NULL,
    manager_name character varying(25) NOT NULL,
    dealer_address text NOT NULL,
    city character varying(25) NOT NULL,
    area character varying NOT NULL,
    dealer_state boolean NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.dealer
    OWNER to postgres;

//-----------------------------------------------------------------------------------------
INSERT INTO car (
    company, 
    model,
    car_class,
    engine,
    engine_capacity,
    max_engine_power,
    max_engine_torque,
    poppet_num,
    fuel,
    max_speed,
    gearbox,
    fuel_consumption,
    car_length,
    car_width,
    car_height,
    car_weight,
    fuel_capacity,
    trunk_capacity,
    price) VALUES (
        'IKCO',
        '206',
        'A (segment mini cars)',
        'TU3A',
        1360,
        75,
        118,
        8,
        'Petrol',
        170,
        '5-speed manual',
        6.4,
        3835,
        1652,
        1426,
        1025,
        50,
        245,
        150000000
    );

INSERT INTO car (company, model, car_class, engine, engine_capacity, max_engine_power, max_engine_torque, poppet_num, fuel, max_speed, gearbox, fuel_consumption, car_length, car_width, car_height, car_weight, fuel_capacity, trunk_capacity, price) VALUES ('IKCO', '207', 'A (segment mini cars)', 'TU5', 1587, 105, 142, 16, 'Petrol', 190, '5-speed manual', 6.4, 3835, 1652, 1426, 1025, 50, 245, 250000000);

INSERT INTO car (company, model, car_class, engine, engine_capacity, max_engine_power, max_engine_torque, poppet_num, fuel, max_speed, gearbox, fuel_consumption, car_length, car_width, car_height, car_weight, fuel_capacity, trunk_capacity, price) VALUES ('IKCO', '405', 'A (segment mini cars)', 'TU7', 1587, 105, 142, 16, 'Petrol', 210, '5-speed manual', 6.4, 3835, 1652, 1426, 1025, 50, 245, 0);

//-----------------------------------------------------------
INSERT INTO dealer (
    dealer_name,
    manager_name,
    dealer_address,
    city,
    area,
    dealer_state) VALUES (
        'Fathi',
        'Ali Fathi',
        'Tehran, Valiasr St.',
        'Tehran',
        'area 1',
        true
    );

INSERT INTO dealer (dealer_name, manager_name, dealer_address, city, area, dealer_state) VALUES ('Fallah', 'Amir Fallah', 'Tehran, Niavaran St.', 'Tehran', 'area 1', true);
INSERT INTO dealer (dealer_name, manager_name, dealer_address, city, area, dealer_state) VALUES ('Mozaffari', 'Aeyed Amir Mohammad Mozaffari Zade guilani', 'Tehran, Niavaran St.', 'Tehran', 'area 1', true);

//--------------------------------------------------------------------------------------------------------------
SELECT * FROM public.car
ORDER BY id ASC 

SELECT * FROM public.dealer
ORDER BY id ASC