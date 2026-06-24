-- =============================================
-- Database Schema for Wippy Arena
-- =============================================

CREATE DATABASE IF NOT EXISTS wippy_db;
USE wippy_db;

CREATE TABLE IF NOT EXISTS leaderboard (
    id INT AUTO_INCREMENT PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    score INT DEFAULT 0,
    accuracy DECIMAL(5,2) DEFAULT 0.00,
    avg_time DECIMAL(5,2) DEFAULT 0.00,
    room_id VARCHAR(50) NOT NULL,
    category VARCHAR(50) DEFAULT 'mixed',
    total_questions INT DEFAULT 0,
    correct_answers INT DEFAULT 0,
    played_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Indexes untuk performa query
CREATE INDEX idx_room_id ON leaderboard(room_id);
CREATE INDEX idx_player_name ON leaderboard(player_name);
CREATE INDEX idx_played_at ON leaderboard(played_at);
CREATE INDEX idx_category ON leaderboard(category);

-- Contoh data (optional)
INSERT INTO leaderboard (player_name, score, accuracy, avg_time, room_id, category, total_questions, correct_answers)
VALUES 
('Dzakwan', 1450, 85.00, 4.20, 'ROOM123', 'React', 10, 8),
('Sahrawardi', 1320, 90.00, 3.80, 'ROOM123', 'React', 10, 9);