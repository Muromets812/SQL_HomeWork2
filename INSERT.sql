INSERT INTO music_genres 
VALUES 
	(1,'Rock'),
	(2,'Pop'),
	(3,'Folk'),
	(4,'Techno'),
	(5,'Rap')

INSERT INTO musicians
VALUES
	(1, '25/17'),
	(2, 'Queen'),
	(3, 'Кино'),
	(4, 'The Beatles'),
	(5, 'ATL'),
	(6, 'Lady Gaga'),
	(7, 'Oxxxymiron'),
	(8, 'Мельница')

INSERT INTO alboms
VALUES
	(1, 'Made in Heaven', 1995),
	(2, '45', 1982),
	(3, '46', 1983),
	(4, 'Русский подорожник', 2014),
	(5, 'Просто', 2018),
	(6, 'The Fame', 2008),
	(7, 'Дорога Сна', 2003),
	(8, 'Перевал', 2005)

INSERT INTO treks
VALUES
	(1,  'I was born to love you', 1, 189),
	(2, 'Let me live', 1, 199),
	(3, 'Камчатка', 3, 171),
	(4, 'Пора', 3, 107),
	(5, 'Бездельник', 2, 194),
	(6, 'Восьмикласница', 2, 165),
	(7, 'Оборотень', 7, 155),
	(8, 'На север', 7, 156),
	(9, 'Ворон', 8, 189),
	(10, 'Королевна', 8, 168),
	(11, 'Ночная кобыла', 8, 173),
	(12, 'Poker face', 6, 220),
	(13, 'Just Dance', 6, 107),
	(14, 'Чернотроп', 4, 147),
	(15, 'Подорожник', 4, 230)

INSERT INTO collections
VALUES
	(1, 'Original Mix', 2000),
	(2, 'Mix', 2001),
	(3, 'Love Collection', 2012),
	(4, 'My music', 1999),
	(5, 'Best Dance', 2020),
	(6, 'Super Hits', 2013),
	(7, 'Rock Mix', 2018),
	(8, 'Russian Rock', 2000)

INSERT INTO genres_musicians
VALUES
	(1, 1, 2),
	(2, 1, 3),
	(3, 1, 4),
	(4, 1, 8),
	(5, 3, 8),
	(6, 2, 6),
	(7, 4, 5),
	(8, 5, 1),
	(9, 5, 7)

INSERT INTO musicians_alboms
VALUES
	(1, 1, 4),
	(2, 1, 5),
	(3, 2, 1),
	(4, 3, 2),
	(5, 3, 3),
	(6, 6, 6),
	(7, 8, 7),
	(8, 8, 8)

INSERT INTO collection_trek
VALUES
	(1, 3, 1),
	(2, 6, 1),
	(3, 7, 1),
	(4, 7, 2),
	(5, 8, 3),
	(6, 7, 3),
	(7, 8, 4),
	(8, 7, 4),
	(9, 8, 5),
	(10, 6, 6),
	(11, 8, 6),
	(12, 8, 7),
	(13, 4, 7),
	(14, 4, 10),
	(15, 6, 12),
	(16, 6, 13),
	(17, 4, 15)


