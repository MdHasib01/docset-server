CREATE TABLE appointments (
    id SERIAL PRIMARY KEY,
    patientId INT NOT NULL,
    doctorId INT NOT NULL,
    branchId INT NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    status VARCHAR(30) DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_patient
        FOREIGN KEY (patientId) REFERENCES users(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_doctor
        FOREIGN KEY (doctorId) REFERENCES doctors(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_branch_app
        FOREIGN KEY (branchId) REFERENCES branches(id)
        ON DELETE CASCADE
);

INSERT INTO appointments (patientId, doctorId, branchId, appointment_date, appointment_time, status)
VALUES
(1, 1, 1, '2025-01-05', '10:30', 'confirmed'),
(2, 3, 2, '2025-01-06', '11:00', 'pending'),
(3, 5, 4, '2025-01-08', '14:00', 'confirmed'),
(4, 2, 3, '2025-01-10', '16:30', 'cancelled'),
(1, 6, 1, '2025-01-12', '09:00', 'pending');
