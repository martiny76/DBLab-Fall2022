CREATE DATABASE 'RealEstate';

CREATE TABLE "Owner" (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(50) NOT NULL
);

CREATE TYPE PropertyStatus AS ENUM ('sale', 'rent', 'rent_sale');
CREATE TYPE FloorCoveringType AS ENUM ('ceramic', 'laminate', 'parquet');
CREATE TYPE DocumentType AS ENUM ('joint_ownership', 'private_ownership');
CREATE TYPE PropertyType AS ENUM ('apartment', 'villa', 'land', 'shop');

CREATE TABLE "Property" (
    id SERIAL UNIQUE PRIMARY KEY NOT NULL,
    owner_id INTEGER REFERENCES "Owner" (id) NOT NULL,
    status PropertyStatus NOT NULL,
    type PropertyType NOT NULL,
    area NUMERIC(10, 2) NOT NULL CHECK (area > 0),
    bedroom_count INTEGER NOT NULL CHECK (bedroom_count >= 0),
    floor_covering FloorCoveringType NOT NULL,
    document_type DocumentType NOT NULL,
    address VARCHAR(255) NOT NULL,
    plate INTEGER NOT NULL CHECK (plate > 0),
    price NUMERIC(15, 0) NOT NULL CHECK (price >= 0),
    rent NUMERIC(15, 0) CHECK (rent >= 0),
    description VARCHAR(255),
    year_built INTEGER NOT NULL CHECK (year_built > 0)
);

--------- Tests ---------
-- INSERT INTO "Owner" (first_name, last_name, phone_number)
-- VALUES ('Ali', 'Rezaei', '09123456789');
-- INSERT INTO "Owner" (first_name, last_name, phone_number)
-- VALUES ('Mohammad', 'Ahmadi', '09876543210');
-- INSERT INTO "Property" (owner_id, status, type, area, bedroom_count, floor_covering, document_type, address, plate, price, rent, description, year_built)
-- VALUES (1, 'sale', 'apartment', 100, 2, 'ceramic', 'joint_ownership', 'Tehran, Valiasr St.', 1, 100000000, 0, 'A nice apartment', 1390);