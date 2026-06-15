-- =========================================================================
-- SYSTEM: Football Ticket Booking System Database Setup
-- =========================================================================

-- DROP TABLES IF THEY ALREADY EXIST TO PREVENT CONFLICTS
DROP TABLE IF EXISTS Bookings;
DROP TABLE IF EXISTS Matches;
DROP TABLE IF EXISTS Users;

-- =========================================================================
-- 1. CREATE USERS TABLE
-- =========================================================================
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    role VARCHAR(50) CHECK (role IN ('Ticket Manager', 'Football Fan')),
    phone_number VARCHAR(20)
);