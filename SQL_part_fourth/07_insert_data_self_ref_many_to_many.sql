-- INSERT INTO users (first_name, last_name)
-- VALUES 
-- ('Max', 'Max'),
-- ('Den', 'Den'),
-- ('Sam', 'Sam');


-- INSERT INTO users_friends (user_id, friend_id)
-- VALUES 
-- (1, 2),
-- (2, 3);

SELECT * FROM users AS u
INNER JOIN users_friends AS uf ON u.id = uf.user_id;
