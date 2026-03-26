-- Insert sample admin user
INSERT INTO users (name, email, password, role) VALUES 
('Admin User', 'admin@example.com', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVEFDa', 'ADMIN');

-- Insert sample regular user
INSERT INTO users (name, email, password, role) VALUES 
('John Doe', 'john@example.com', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVEFDa', 'USER');

-- Insert sample items
INSERT INTO items (title, description, category, location, type, status, user_id, created_at, updated_at) VALUES 
('Lost iPhone 13', 'Black iPhone 13 with blue case, lost near library', 'Electronics', 'Library', 'LOST', 'PENDING', 2, NOW(), NOW()),
('Found Wallet', 'Brown leather wallet found in cafeteria', 'Accessories', 'Cafeteria', 'FOUND', 'PENDING', 2, NOW(), NOW()),
('Lost Keys', 'Car keys with Honda keychain', 'Keys', 'Parking Lot', 'LOST', 'MATCHED', 2, NOW(), NOW());
