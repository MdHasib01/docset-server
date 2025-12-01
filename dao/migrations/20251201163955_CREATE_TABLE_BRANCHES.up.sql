CREATE TABLE branches (
    id SERIAL PRIMARY KEY,
    name VARCHAR(250),
    location VARCHAR(250),
    district VARCHAR(250)
);

INSERT INTO branches (name, location, district) VALUES
('Uttara Branch', 'Sector 7, Uttara Model Town', 'Dhaka'),
('Mirpur Branch', 'Mirpur 10 Circle', 'Dhaka'),
('Dhanmondi Branch', 'Road 27, Dhanmondi', 'Dhaka'),
('Chattogram Branch', 'GEC Circle, Panchlaish', 'Chattogram'),
('Sylhet Branch', 'Zindabazar Main Road', 'Sylhet'),
('Rajshahi Branch', 'Laxmipur Area', 'Rajshahi'),
('Khulna Branch', 'Shibbari More', 'Khulna'),
('Barishal Branch', 'Band Road, Sadar Area', 'Barishal'),
('Cumilla Branch', 'Kandirpar Main Road', 'Cumilla'),
('Rangpur Branch', 'Central Bus Terminal Area', 'Rangpur');
