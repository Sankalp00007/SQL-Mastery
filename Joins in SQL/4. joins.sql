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

-- user 2021 and 2022
select * from users.users_2021 as t_2021 inner join users.users_2022 as t_2022 on t_2021.UserID = t_2022.UserID;

-- User 2022 & 2023
select * from users.users_2022 as t_2022 inner join users.users_2023 as t_2023 on t_2022.UserID = t_2023.UserID;

-- User 2021,2022,2023
select * from users.users_2021 as t_2021 inner join users.users_2022 as t_2022 on t_2021.UserID = t_2022.UserID
      inner join users.users_2023 as t_2023 on t_2023.UserID = t_2021.UserID ;
      
-- left join
select * from users.users_2021 as t_2021 left join users.users_2022 as t_2022 on t_2021.UserID = t_2022.UserID;

select * from users.users_2023 as t_2023 left join users.users_2021 as t_2021 on t_2023.UserID = t_2021.UserID;

-- Right Join
select * from users.users_2021 as t_2021 right join users.users_2022 as t_2022 on t_2021.UserID = t_2022.UserID;
select * from users.users_2023 as t_2023 right join users.users_2021 as t_2021 on t_2021.UserID = t_2023.UserID;

-- Cross inner join
select * from users.users_2021 as t_2021 left join users.users_2022 as t_2022 on t_2021.UserID = t_2022.UserID
union
select * from users.users_2021 as t_2021 right join users.users_2022 as t_2022 on t_2021.UserID = t_2022.UserID;

      