-- Create a table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(250) NOT NULL
);

-- Insert some seed data
INSERT INTO users (username, email,password) VALUES
('Moreland', 'moreland@example.com', 'iHateGoLang'),
('Walters', 'walters@example.com', 'wishIWasProduct'),
('Critchlow', 'critchlow@example.com', 'iHeartKanban'),
('Woolley', 'woolley@example.com', 'unhackable');

CREATE TABLE deepest_darkest_secrets (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    secret VARCHAR(250) NOT NULL
);

INSERT INTO deepest_darkest_secrets (user_id, secret) VALUES
(4, 'I don''t actually hate the English. Some of them are quite nice'),
(4, 'I''m not strawberry blonde, I''m ginger. The shame!'),
(4, 'I have no idea what I''m doing');

CREATE TABLE shows (
    id SERIAL PRIMARY KEY,
    artist VARCHAR(250) NOT NULL,
    loc VARCHAR(250) NOT NULL
);

INSERT INTO shows (artist, loc) VALUES
('Bruce Springsteen', 'Glasgow'),
('Oasis', 'Manchester'),
('The Beatles', 'Liverpool'),
('U2', 'Dublin'),
('Coldplay', 'London'),
('Nirvana', 'Seattle'),
('The Rolling Stones', 'London'),
('Radiohead', 'Oxford'),
('Queen', 'London'),
('The Doors', 'Los Angeles'),
('Pink Floyd', 'London'),
('Led Zeppelin', 'London'),
('The Who', 'London'),
('The Clash', 'London'),
('The Smiths', 'Manchester'),
('Blur', 'London'),
('Arctic Monkeys', 'Sheffield'),
('The Cure', 'Crawley'),
('Green Day', 'Berkeley'),
('Foo Fighters', 'Seattle'),
('Red Hot Chili Peppers', 'Los Angeles'),
('The Strokes', 'New York'),
('The White Stripes', 'Detroit'),
('The Libertines', 'London'),
('The Killers', 'Las Vegas'),
('The Black Keys', 'Akron'),
('The National', 'Cincinnati'),
('The War on Drugs', 'Philadelphia'),
('The Lumineers', 'Denver'),
('The Avett Brothers', 'Concord'),
('The Decemberists', 'Portland'),
('The Shins', 'Albuquerque'),
('The Flaming Lips', 'Oklahoma City'),
('The Hold Steady', 'Minneapolis'),
('The Gaslight Anthem', 'New Brunswick'),
('The Menzingers', 'Scranton'),
('The Wonder Years', 'Lansdale'),
('The Front Bottoms', 'Woodcliff Lake'),
('The Hotelier', 'Worcester'),
('The World Is a Beautiful Place & I Am No Longer Afraid to Die', 'Willimantic'),
('The Get Up Kids', 'Kansas City'),
('The Promise Ring', 'Milwaukee'),
('The Anniversary', 'Lawrence'),
('The Appleseed Cast', 'Lawrence'),
('American Football', 'Urbana'),
('The Dismemberment Plan', 'Washington'),
('The Weakerthans', 'Winnipeg'),
('The Mountain Goats', 'Durham'),
('The Hold Steady', 'Glasgow');