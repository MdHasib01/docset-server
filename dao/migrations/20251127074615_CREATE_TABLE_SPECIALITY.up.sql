CREATE TABLE specilities (
id SERIAL PRIMARY KEY,
slug VARCHAR(50),
name VARCHAR(250),
description VARCHAR(250)
);

INSERT INTO specilities (slug, name, description) VALUES
('cardiology', 'Cardiology', 'Heart and cardiovascular system specialist'),
('dermatology', 'Dermatology', 'Skin, hair, and nail specialist'),
('neurology', 'Neurology', 'Brain and nervous system specialist'),
('orthopedics', 'Orthopedics', 'Bone, joint, and muscle specialist'),
('pediatrics', 'Pediatrics', 'Child health and development specialist'),
('gynecology', 'Gynecology', 'Women health and reproductive system'),
('urology', 'Urology', 'Urinary tract and male reproductive system'),
('gastroenterology', 'Gastroenterology', 'Digestive system and stomach issues'),
('endocrinology', 'Endocrinology', 'Hormone and metabolism specialist'),
('psychiatry', 'Psychiatry', 'Mental health and behavioral specialist'),
('ophthalmology', 'Ophthalmology', 'Eye and vision care specialist'),
('otolaryngology', 'Otolaryngology', 'Ear, nose, and throat (ENT) specialist'),
('radiology', 'Radiology', 'Medical imaging and scans specialist'),
('anesthesiology', 'Anesthesiology', 'Anesthesia and pain management'),
('medicine', 'General Medicine', 'Internal medicine and general health care');

