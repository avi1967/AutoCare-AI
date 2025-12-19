-- Database: autocare_ai
CREATE DATABASE IF NOT EXISTS autocare_ai;
USE autocare_ai;

-- USERS (Admin / Customer)
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'customer') NOT NULL,
    vin VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- VEHICLES (Raw sensor data)
CREATE TABLE vehicles (
    vin VARCHAR(50) PRIMARY KEY,
    age INT,
    mileage INT,
    engine_temp FLOAT,
    error_count INT,
    status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- SERVICE APPOINTMENTS
CREATE TABLE service_appointments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50),
    service_center VARCHAR(100),
    service_date DATE,
    service_time VARCHAR(20),
    status VARCHAR(50),
    cost INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

-- MAINTENANCE HISTORY
CREATE TABLE maintenance_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50),
    service_date DATE,
    service_type VARCHAR(100),
    cost INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

-- CHAT MESSAGES (Agentic AI + Customer)
CREATE TABLE chat_messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50),
    sender_role ENUM('customer', 'ai') NOT NULL,
    message TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

-- AUDIT LOGS (Admin visibility)
CREATE TABLE audit_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    action VARCHAR(100),
    vin VARCHAR(50),
    user_role VARCHAR(20),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER DATABASE autocare_ai
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

ALTER TABLE chat_messages
CONVERT TO CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;
