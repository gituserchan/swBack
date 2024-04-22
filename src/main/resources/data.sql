-- Movies Data Insertion
MERGE INTO movies KEY(movie_id) VALUES
(1, 'Toy Story (1995)', 'Adventure|Animation|Children|Comedy|Fantasy'),
(2, 'Jumanji (1995)', 'Adventure|Children|Fantasy'),
(3, 'Grumpier Old Men (1995)', 'Comedy|Romance');

-- Ratings Data Insertion
MERGE INTO ratings KEY(user_id, movie_id) VALUES
(1, 1, 4.0, 964982703),
(1, 2, 4.0, 964981247),
(1, 3, 4.0, 964982224);

-- Tags Data Insertion
MERGE INTO tags KEY(user_id, movie_id, tag) VALUES
(2, 1, 'funny', 964982176),
(2, 2, 'fantasy', 964982653),
(2, 3, 'moldy', 964982703);

-- Links Data Insertion
MERGE INTO links KEY(movie_id) VALUES
(1, '0114709', '862'),
(2, '0113497', '8844'),
(3, '0113228', '15602');
