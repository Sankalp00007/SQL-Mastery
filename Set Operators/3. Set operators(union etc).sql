DROP DATABASE IF EXISTS users;
CREATE DATABASE users;

CREATE TABLE IF NOT EXISTS users.users_2021  (UserID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE IF NOT EXISTS users.users_2022  (UserID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE IF NOT EXISTS users.users_2023  (UserID INT PRIMARY KEY, Name VARCHAR(50));

INSERT INTO users.users_2021 (UserID, Name) VALUES (1, 'Ashish'), (2, 'Laura'), (7, 'Prakash');
INSERT INTO users.users_2022 (UserID, Name) VALUES (1, 'Ashish'), (2, 'Laura'), (3, 'Charlie'), (4, 'Grace');
INSERT INTO users.users_2023 (UserID, Name) VALUES (1, 'Ashish'), (2, 'Laura'), (3, 'Charlie'), (4, 'Grace'), (5, 'Henry');

select * from users.users_2021;
select * from users.users_2022;
select * from users.users_2023;

-- Union 
select * from users.users_2021 union select * from users.users_2022;
select * from users.users_2021 union select * from users.users_2022 union select * from users.users_2023;

-- Union All ( major difference from union is that it will replicate the data)
select * from users.users_2021 union all select * from users.users_2022;

-- EXCEPT | Show all the data of dominating table ie 1st table which is not in 2nd table
select * from users.users_2021 except select * from users.users_2022;
select * from users.users_2022 except select * from users.users_2021;
select * from users.users_2023 except select * from users.users_2022 except select * from users.users_2021;

-- Intersect | showing the common data
select * from users.users_2021 intersect select * from users.users_2022;
select * from users.users_2022 intersect select * from users.users_2023;
select * from users.users_2021 intersect select * from users.users_2023;

select * from users.users_2021 intersect select * from users.users_2022 intersect select * from users.users_2023;

