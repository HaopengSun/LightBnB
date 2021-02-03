INSERT INTO users (name, email, password)
VALUES ('Eva Stanley', 'sebastianguerra@ymail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
VALUES ('Louisa Meyer', 'jacksonrose@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
VALUES ('Dominic Parks', 'victoruablackwell@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url,
cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country,
street, city, province, post_code, active)
VALUES (1, 'Speed Lamp', 'description', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cd=tinysrgb&h=350',
'https://https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 930.61, 6, 4, 8,
'Canada', '536 Hamsub Highway', 'Sotboske', 'Quebec', '28142', true),
VALUES (1, 'Blank corner', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cd=tinysrgb&h=350',
'https://https://images.pexels.com/photos/2086676/pexels-photo-2121121.jpeg', 852.34, 6, 6, 7,
'Canada', '651 Nami Road', 'Bohbatev', 'Alberta', '83680', true),
VALUES (2, 'Habit mix', 'description', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg?auto=compress&cd=tinysrgb&h=350',
'https://https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg', 460.58, 0, 5, 6,
'Canada', '1650 Hejto Center', 'Genwezuj', 'Newfoundland And Labrador', '44583', true);

INSERT INTO reseavations (start_date, end_date, property_id, guest_id)
VALUES (2018-09-11, 2018-09-26, 2, 3),
(2019-09-11, 2019-09-26, 1, 2), (2020-09-11, 2020-09-26, 3, 1);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (2, 1, 3, 4, 'message'), (1, 1, 2, 4, 'message'), (3, 1, 2, 4, 'message');