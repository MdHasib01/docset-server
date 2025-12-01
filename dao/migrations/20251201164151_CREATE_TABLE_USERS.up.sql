CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    phone VARCHAR(20),
    gender VARCHAR(20),
    role VARCHAR(30) DEFAULT 'patient',
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users (name, email, phone, gender, role, date_of_birth)
VALUES
('Hasib Ahmed', 'hasib.patient@example.com', '01711223344', 'Male', 'patient', '1998-04-12'),
('Nusrat Jahan', 'nusrat.patient@example.com', '01722114455', 'Female', 'patient', '1995-10-22'),
('Tanim Rahman', 'tanim.patient@example.com', '01733445566', 'Male', 'patient', '2000-01-15'),
('Fatema Akhter', 'fatema.patient@example.com', '01755667788', 'Female', 'patient', '1992-07-05');
