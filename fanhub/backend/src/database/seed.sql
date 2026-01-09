-- FanHub Seed Data
-- Generic placeholder data - to be replaced with your show's data!

-- Insert a placeholder show
INSERT INTO shows (title, description, genre, start_year, network) 
VALUES (
    'Sample Show',
    'This is a placeholder. Pick your favorite show and update this!',
    'Drama/Comedy',
    2020,
    'Streaming Network'
);

-- Insert placeholder seasons
INSERT INTO seasons (show_id, season_number, title, episode_count) VALUES
(1, 1, 'Season 1', 10),
(1, 2, 'Season 2', 12);

-- Insert placeholder episodes
INSERT INTO episodes (show_id, season_id, episode_number, title, description, runtime_minutes) VALUES
(1, 1, 1, 'Pilot', 'The beginning of everything.', 45),
(1, 1, 2, 'Episode 2', 'Things start to get interesting.', 42),
(1, 1, 3, 'Episode 3', 'A twist nobody expected.', 44),
(1, 1, 4, 'Episode 4', 'The plot thickens.', 43),
(1, 1, 5, 'Episode 5', 'Midseason revelations.', 45),
(1, 2, 1, 'Season 2 Premiere', 'A new chapter begins.', 48),
(1, 2, 2, 'Episode 2', 'Consequences unfold.', 44);

-- Insert placeholder characters
INSERT INTO characters (show_id, name, actor_name, bio, is_main_character, status) VALUES
(1, 'John Doe', 'Actor Name', 'The main protagonist. A complex character with a mysterious past.', true, 'alive'),
(1, 'Jane Smith', 'Actress Name', 'The deuteragonist. Smart, resourceful, and determined.', true, 'alive'),
(1, 'Bob Wilson', 'Supporting Actor', 'The comic relief. Always there when you need a laugh.', false, 'alive'),
(1, 'Alice Johnson', 'Guest Star', 'A mysterious figure from the past.', false, 'unknown'),
(1, 'Charlie Brown', 'Recurring Actor', 'The antagonist. Has their reasons.', true, 'alive');

-- Link characters to episodes
INSERT INTO character_episodes (character_id, episode_id, is_featured) VALUES
(1, 1, true), (1, 2, true), (1, 3, true), (1, 4, true), (1, 5, true), (1, 6, true), (1, 7, true),
(2, 1, true), (2, 2, true), (2, 3, false), (2, 4, true), (2, 5, true), (2, 6, true), (2, 7, true),
(3, 2, false), (3, 3, false), (3, 4, true), (3, 5, false),
(4, 5, true), (4, 6, true),
(5, 3, true), (5, 4, false), (5, 5, true), (5, 6, true), (5, 7, true);

-- Insert placeholder quotes
INSERT INTO quotes (show_id, character_id, episode_id, quote_text, is_famous) VALUES
(1, 1, 1, 'This is where it all begins.', true),
(1, 2, 2, 'Sometimes the truth is stranger than fiction.', true),
(1, 1, 3, 'I never asked for this, but here we are.', false),
(1, 3, 4, 'Well, that escalated quickly!', true),
(1, 5, 5, 'You think you know, but you have no idea.', true),
(1, 2, 6, 'Every ending is a new beginning.', false),
(1, 1, 7, 'We are who we choose to be.', true);

-- Insert a test admin user (password: 'admin123' - DO NOT use in production!)
-- Password hash is bcrypt of 'admin123'
INSERT INTO users (email, password_hash, username, display_name, role) VALUES
('admin@fanhub.test', '$2b$10$rQZ5QZQZ5QZQZ5QZQZ5QZOeH5H5H5H5H5H5H5H5H5H5H5H5H5H5H5', 'admin', 'Admin User', 'admin');
