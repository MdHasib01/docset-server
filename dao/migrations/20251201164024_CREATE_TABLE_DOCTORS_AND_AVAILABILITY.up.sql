CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    phone VARCHAR(20),
    gender VARCHAR(20),
    qualification VARCHAR(150),
    specialistId INT,
    branchId INT,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_specialist
        FOREIGN KEY (specialistId) REFERENCES specilities(id)
        ON DELETE SET NULL,
    CONSTRAINT fk_branch
        FOREIGN KEY (branchId) REFERENCES branches(id)
        ON DELETE SET NULL
);

CREATE TABLE doctor_availabilities (
    id SERIAL PRIMARY KEY,
    day VARCHAR(20) NOT NULL,
    from_time TIME NOT NULL,
    to_time TIME NOT NULL,
    doctorId INT NOT NULL,
    branchId INT NOT NULL,
    CONSTRAINT fk_doctor
        FOREIGN KEY (doctorId) REFERENCES doctors(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_branch
        FOREIGN KEY (branchId) REFERENCES branches(id)
        ON DELETE CASCADE
);
