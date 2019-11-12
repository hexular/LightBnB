INSERT INTO users (name, email, password) 
VALUES ('Dan Coolguy', 'dancoolguy@cool.guy', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Eva Stanley', 'evastanley@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Louisa Meyer', 'louisameyer@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Dominic Parks', 'dominicparks@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Sue Luna', 'sueluna@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Rosalie Garza', 'rosaliegarza@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Etta West', 'ettawest@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Margaret Wong', 'margaretwong@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Leroy Hart', 'leroyhart@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, province, city, street, post_code, active) 
VALUES (2, 'Speedwagon Foundation', 'description', 'https://imgur.com/lol', 'https://imgur.com/hello', 188, 3, 1, 2, 'Canada', 'Ontario', 'Toronto', 'Yonge St', 'lolabc', true),
(4, 'Hamon House', 'description', 'https://imgur.com/lol1', 'https://imgur.com/h1ello', 99, 4, 2, 7, 'Canada', 'Ontario', 'Windsor', 'Bay St', 'abcasd', true),
(2, 'Dank Dwelling', 'description', 'https://imgur.com/l234ol1', 'https://imgur.com/h1234ello', 170, 8, 9, 1, 'Canada', 'Ontario', 'Dundas', 'Bloor St', 'cariboo', true),
(2, 'Jojos Jungle', 'description', 'https://imgur.com/lo123123l', 'https://imgur.com/hel123123lo', 101, 1, 2, 3, 'Canada', 'Ontario', 'Toronto', 'Dundas W St', 'abchello', true);

INSERT INTO rates (start_date, end_date, cost_per_night, property_id) 
VALUES 
('2019-09-11', '2019-09-12', 120, 1),
('2019-01-01', '2019-01-14', 420, 3),
('2019-06-13', '2019-06-17', 79, 2),
('2019-03-27', '2019-04-01', 99, 2);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES
('2019-09-11', '2019-09-12', 1, 1),
('2019-01-01', '2019-01-14', 2, 3),
('2019-06-13', '2019-06-17', 4, 2),
('2019-03-27', '2019-04-01', 4, 2);

INSERT INTO guest_reviews (guest_id, owner_id, reservation_id, rating, message)
VALUES 
(2, 2, 1, 4.5, 'lol'),
(1, 1, 3, 3.5, 'lol1234'),
(2, 4, 2, 4, 'okay'),
(1, 4, 2, 5, 'amazing');

INSERT INTO property_reviews (guest_id, reservation_id, property_id, rating, message)
VALUES 
(1, 3, 1, 2, 'weird'),
(4, 3, 2, 4, 'okay'),
(3, 0, 0, 4.5, 'great'),
(1, 2, 0, 5, 'amazing');

