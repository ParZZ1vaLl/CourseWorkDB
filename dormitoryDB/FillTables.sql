-- ?????????? ??????? ?̳???(cities)? ?????? 

INSERT INTO cities (id, name) 
VALUES  
(1, N'Cherkasy'), 
(2, N'Chernihiv'), 
(3, N'Chernivtsi'), 
(4, N'Dnipro'), 
(5, N'Donetsk'), 
(6, N'Ivano-Frankivsk'), 
(7, N'Kharkiv'), 
(8, N'Kherson'), 
(9, N'Khmelnytskyi'), 
(10, N'Kropyvnytskyi'), 
(11, N'Kyiv'), 
(12, N'Luhansk'), 
(13, N'Lutsk'), 
(14, N'Lviv'), 
(15, N'Mykolaiv'), 
(16, N'Odessa'), 
(17, N'Poltava'), 
(18, N'Rivne'), 
(19, N'Sumy'), 
(20, N'Ternopil'), 
(21, N'Uzhhorod'), 
(22, N'Vinnytsia'), 
(23, N'Zaporizhzhia'), 
(24, N'Zhytomyr'); 

-- ?????????? ??????? ?????????????(universities)? ?????? 


set identity_insert universities off;
INSERT INTO universities (name)  
VALUES 
(N'National Technical University of Ukraine "Igor Sikorsky Kyiv Polytechnic Institute"'), 
(N'Taras Shevchenko National University of Kyiv'), 
(N'National Aviation University '), 
(N'Mykolayiv National Agrarian University'), 
(N'Petro Mohyla Black Sea National University'), 
(N'Kharkiv National University of Radio Electronics'), 
(N'Kharkiv Polytechnic Institute'), 
(N'Lviv Polytechnic National University '), 
(N'University of Lviv'), 
(N'Donetsk State University of Management');


-- ?????????? ??????? ????? ???????????(types)? ??????

INSERT INTO types (name)
VALUES 
(N'block'),
(N'corridor'), 
(N'mixed'), 
(N'family');


-- ?????????? ??????? ??????????? (commandants)? ?????? 

set identity_insert commandants off;
INSERT INTO commandants (name, lastName) 
VALUES  
(N'Svitlana', N'Shtunder'),
(N'Maryna', N'Krasnokutska'),
(N'Svitlana', N'Morhun'),
(N'Mykyta ', N'Moshenchenko'),
(N'Inna', N'Zamana'),
(N'Oksana', N'Potrats'),
(N'Vita', N'Romanenko'),
(N'Iryna', N'Kyseliova'),
(N'Maria ', N'Moskalets'),
(N'Oksana', N'Sapronova'),
(N'Olha', N'Pimanova'),
(N'Tetiana', N'Levchenko'),
(N'Nina', N'Klimova'),
(N'Yulia', N'Budachevska'),
(N'Natalia', N'Yarosh'),
(N'Nadia', N'Nosanchuk');

--?????????? ??????? ? ?????????(matrons)? ?????? 

set identity_insert matrons off;
INSERT INTO matrons (name, lastName) 
VALUES  
(N'Liubov', N'Filipishyna'), 
(N'Svitlana ', N'Zavalska'), 
(N'Olena', N'Stromenko'), 
(N'Svitlana', N'Kryvenko'), 
(N'Larysa', N'Hurovska'), 
(N'Nadiya', N'Tymoshenko'), 
(N'Olha', N'Blazhko'),
(N'Tetiana', N'Nedashkivska'), 
(N'Svitlana', N'Marynka'), 
(N'Liubov', N'Koshyl'), 
(N'Olena', N'Shevchuk'), 
(N'Larysa', N'Pidipryhora'), 
(N'Liudmyla', N'Scherbyna'), 
(N'Vira', N'Bachynska'), 
(N'Dmytro', N'Kulyk'), 
(N'Iryna', N'Postolatyeva'), 
(N'Nataliya', N'Puzyrna'), 
(N'Yevheniya', N'Maslova'), 
(N'Nataliya', N'Vonsovych'); 


-- ?????????? ??????? ??????? (addresses)? ??????

set identity_insert addresses off;
INSERT INTO addresses (street,cityID) 
VALUES  
(N'Yanhela, 20',11),
(N'Yanhela, 5',11),
(N'Yanhela, 22',11), 
(N'Yanhela, 7',11), 
(N'Yanhela, 18/1',11), 
(N'Metalistiv, 3',11), 
(N'Oleksy Tykhoho, 2/24',11), 
(N'Metalistiv, 4',11), 
(N'Metalistiv, 7',11), 
(N'Metalistiv, 8',11), 
(N'prov. Kovalskyy, 5',11), 
(N'Metalistiv, 5',11), 
(N'Oleksy Tykhoho, 3',11), 
(N'Oleksy Tykhoho, 1',11), 
(N'Borschahivska, 148',11), 
(N'Borschahivska, 146',11), 
(N'Borschahivska, 144',11), 
(N'prov. Kovalskyy, 22a',11), 
(N'Metalistiv, 6',11);
 


-- ?????????? ??????? ???????????(dormitories)? ?????? 

set identity_insert dormitories off;
INSERT INTO dormitories (name, universityID, addressID, typeID, commandantID, matronID) 
VALUES  
(N'?1', 1, 2, 2, 1, 1), 
(N'?3', 1, 3, 2, 2, 2), 
(N'?4', 1, 4, 2, 3, 3), 
(N'?6', 1, 5, 2, 4, 4), 
(N'?7', 1, 6, 2, 5, 5), 
(N'?8', 1, 1, 2, 6, 6), 
(N'?10', 1, 7, 1, 7, 7), 
(N'?11', 1, 8, 3, null, 8), 
(N'?12', 1, 9, 2, 8, 9), 
(N'?13', 1, 10, 2, 9, 10), 
(N'?14', 1, 11, 2, 10, 11), 
(N'?15', 1, 12, 1, 11, 12), 
(N'?16', 1, 13, 1, 12, 13), 
(N'?17', 1, 14, 3, 13, 14), 
(N'?18', 1, 15, 1, 14, 15), 
(N'?19', 1, 16, 1, 15, 16), 
(N'?20', 1, 17, 1, 16, 17), 
(N'?21', 1, 18, 4, null, 18), 
(N'?22', 1, 19, 4, null, 19);


-- ?????????? ??????? ?ʳ?????(rooms)? ??????

set identity_insert rooms off;
INSERT INTO rooms (code, dormitoryID, capacity)  
VALUES  
(101, 19, 4), 
(102, 19, 4), 
(103, 19, 4), 
(104, 19, 4), 
(105, 19, 4), 
(106, 19, 4), 
(107, 19, 4), 
(108, 19, 4), 
(109, 19, 4), 
(110, 19, 4), 
(111, 19, 4), 
(112, 19, 4), 
(113, 19, 4), 
(114, 19, 4), 
(115, 19, 4), 
(116, 19, 4), 
(117, 19, 4), 
(118, 19, 4), 
(119, 19, 4), 
(120, 19, 4), 
(121, 19, 4), 
(122, 19, 4), 
(123, 19, 4), 
(124, 19, 4), 
(125, 19, 4), 
(126, 19, 4), 
(127, 19, 4), 
(128, 19, 4), 
(129, 19, 4), 
(130, 19, 4), 
(131, 19, 4), 
(132, 19, 4), 
(133, 19, 4), 
(134, 19, 4), 
(135, 19, 4), 
(136, 19, 4), 
(137, 19, 4), 
(138, 19, 4), 
(139, 19, 4), 
(140, 19, 4), 
(201, 19, 4), 
(202, 19, 4), 
(203, 19, 4), 
(204, 19, 4), 
(205, 19, 4), 
(206, 19, 4), 
(207, 19, 4), 
(208, 19, 4), 
(209, 19, 4), 
(210, 19, 4), 
(211, 19, 4), 
(212, 19, 4), 
(213, 19, 4), 
(214, 19, 4), 
(215, 19, 4), 
(216, 19, 4), 
(217, 19, 4), 
(218, 19, 4), 
(219, 19, 4), 
(220, 19, 4), 
(221, 19, 4), 
(222, 19, 4), 
(223, 19, 4), 
(224, 19, 4), 
(225, 19, 4), 
(226, 19, 4), 
(227, 19, 4), 
(228, 19, 4), 
(229, 19, 4), 
(230, 19, 4), 
(231, 19, 4), 
(232, 19, 4), 
(233, 19, 4), 
(234, 19, 4), 
(235, 19, 4), 
(236, 19, 4), 
(237, 19, 4), 
(238, 19, 4), 
(239, 19, 4), 
(240, 19, 4), 
(301, 19, 4), 
(302, 19, 4), 
(303, 19, 4), 
(304, 19, 4), 
(305, 19, 4), 
(306, 19, 4), 
(307, 19, 4), 
(308, 19, 4), 
(309, 19, 4), 
(310, 19, 4), 
(311, 19, 4), 
(312, 19, 4), 
(313, 19, 4), 
(314, 19, 4), 
(315, 19, 4), 
(316, 19, 4), 
(317, 19, 4), 
(318, 19, 4), 
(319, 19, 4), 
(320, 19, 4), 
(321, 19, 4), 
(322, 19, 4), 
(323, 19, 4), 
(324, 19, 4), 
(325, 19, 4), 
(326, 19, 4), 
(327, 19, 4), 
(328, 19, 4), 
(329, 19, 4), 
(330, 19, 4), 
(331, 19, 4), 
(332, 19, 4), 
(333, 19, 4), 
(334, 19, 4), 
(335, 19, 4), 
(336, 19, 4), 
(337, 19, 4), 
(338, 19, 4), 
(339, 19, 4), 
(340, 19, 4), 
(401, 19, 4), 
(402, 19, 4), 
(403, 19, 4), 
(404, 19, 4), 
(405, 19, 4), 
(406, 19, 4), 
(407, 19, 4), 
(408, 19, 4), 
(409, 19, 4), 
(410, 19, 4), 
(411, 19, 4), 
(412, 19, 4), 
(413, 19, 4), 
(414, 19, 4), 
(415, 19, 4), 
(416, 19, 4), 
(417, 19, 4), 
(418, 19, 4), 
(419, 19, 4), 
(420, 19, 4), 
(421, 19, 4), 
(422, 19, 4), 
(423, 19, 4), 
(424, 19, 4), 
(425, 19, 4), 
(426, 19, 4), 
(427, 19, 4), 
(428, 19, 4), 
(429, 19, 4), 
(430, 19, 4), 
(431, 19, 4), 
(432, 19, 4), 
(433, 19, 4), 
(434, 19, 4), 
(435, 19, 4), 
(436, 19, 4), 
(437, 19, 4), 
(438, 19, 4), 
(439, 19, 4), 
(440, 19, 4), 
(501, 19, 4), 
(502, 19, 4), 
(503, 19, 4), 
(504, 19, 4), 
(505, 19, 4), 
(506, 19, 4), 
(507, 19, 4), 
(508, 19, 4), 
(509, 19, 4), 
(510, 19, 4), 
(511, 19, 4), 
(512, 19, 4), 
(513, 19, 4), 
(514, 19, 4), 
(515, 19, 4), 
(516, 19, 4), 
(517, 19, 4), 
(518, 19, 4), 
(519, 19, 4), 
(520, 19, 4), 
(521, 19, 4), 
(522, 19, 4), 
(523, 19, 4), 
(524, 19, 4), 
(525, 19, 4), 
(526, 19, 4), 
(527, 19, 4), 
(528, 19, 4), 
(529, 19, 4), 
(530, 19, 4), 
(531, 19, 4), 
(532, 19, 4), 
(533, 19, 4), 
(534, 19, 4), 
(535, 19, 4), 
(536, 19, 4), 
(537, 19, 4), 
(538, 19, 4), 
(539, 19, 4), 
(540, 19, 4);


-- ?????????? ??????? ?????????(students)? ??????

set identity_insert students on;
INSERT INTO students (id, name, lastName, roomID) 
VALUES 
(1, N'Robert', N'Howard', 178), 
(2, N'Lucas', N'Walker', 51), 
(3, N'Brandon', N'Tucker', 120), 
(4, N'Anna', N'Ince', 195), 
(5, N'Amy', N'Lawrence', 137), 
(6, N'Lauren', N'Murray', 62), 
(7, N'Adrian', N'Knox', 160), 
(8, N'Joshua', N'Wright', 78), 
(9, N'James', N'Gibson', 126), 
(10, N'Theresa', N'Greene', 24), 
(11, N'Jasmine', N'Ross', 32), 
(12, N'Gordon', N'Burgess', 87), 
(13, N'Stewart', N'Parr', 110), 
(14, N'Brian', N'Nolan', 111), 
(15, N'Yvonne', N'Russell', 153), 
(16, N'Amy', N'Fraser', 74), 
(17, N'Joe', N'Thomson', 176), 
(18, N'Amy', N'Mackenzie', 191), 
(19, N'Jacob', N'Walker', 45), 
(20, N'Warren', N'White', 112), 
(21, N'Blake', N'Springer', 197), 
(22, N'Penelope', N'Peters', 70), 
(23, N'Brian', N'Sanderson', 179), 
(24, N'Lily', N'Bailey', 125), 
(25, N'Lillian', N'Springer', 20), 
(26, N'Abigail', N'Randall', 146), 
(27, N'Paul', N'Watson', 150), 
(28, N'Anne', N'Berry', 131), 
(29, N'Rose', N'MacDonald', 174), 
(30, N'Bernadette', N'Bailey', 108), 
(31, N'Sam', N'Taylor', 8), 
(32, N'Chloe', N'Campbell', 135), 
(33, N'Chloe', N'Slater', 15), 
(34, N'Stephanie', N'Churchill', 197), 
(35, N'Deirdre', N'Ince', 7), 
(36, N'Boris', N'Rutherford', 181), 
(37, N'Lisa', N'Stewart', 41), 
(38, N'Emma', N'Mackenzie', 3), 
(39, N'Diane', N'Burgess', 128), 
(40, N'Victoria', N'Hill', 131), 
(41, N'Andrea', N'Brown', 142), 
(42, N'Michelle', N'Dickens', 32), 
(43, N'Felicity', N'Graham', 77), 
(44, N'Benjamin', N'Gray', 155), 
(45, N'Deirdre', N'Metcalfe', 141), 
(46, N'Neil', N'Butler', 69), 
(47, N'Victor', N'Sharp', 16), 
(48, N'Diane', N'Bell', 114), 
(49, N'Molly', N'Wilson', 122), 
(50, N'Penelope', N'Grant', 183), 
(51, N'Michael', N'Miller', 60), 
(52, N'Dylan', N'Wilson', 172), 
(53, N'Sam', N'Berry', 162), 
(54, N'Sophie', N'MacLeod', 155), 
(55, N'Joe', N'Wright', 176), 
(56, N'Leonard', N'Miller', 190), 
(57, N'Rose', N'Hudson', 133), 
(58, N'Diana', N'Dowd', 56), 
(59, N'Jessica', N'Piper', 124), 
(60, N'Melanie', N'Anderson', 92), 
(61, N'Lucas', N'Buckland', 64), 
(62, N'Steven', N'MacDonald', 128), 
(63, N'Melanie', N'Simpson', 144), 
(64, N'Sean', N'Sharp', 151), 
(65, N'Stephen', N'Gray', 32), 
(66, N'Luke', N'Murray', 107), 
(67, N'Boris', N'Bailey', 121), 
(68, N'Jacob', N'Springer', 186), 
(69, N'Evan', N'Graham', 26), 
(70, N'Andrea', N'Lewis', 5), 
(71, N'Edward', N'Fraser', 179), 
(72, N'Simon', N'Newman', 186), 
(73, N'Ruth', N'Hardacre', 111), 
(74, N'Dan', N'Metcalfe', 128), 
(75, N'Matt', N'Jackson', 177), 
(76, N'Jake', N'Peake', 89), 
(77, N'Matt', N'Martin', 142), 
(78, N'Cameron', N'Baker', 166), 
(79, N'Jonathan', N'Jackson', 10), 
(80, N'Virginia', N'Kerr', 166), 
(81, N'Alexander', N'Bond', 198), 
(82, N'Owen', N'Ball', 185), 
(83, N'Christian', N'McLean', 40), 
(84, N'Piers', N'Alsop', 180), 
(85, N'Sonia', N'Mitchell', 61), 
(86, N'Alexandra', N'Jackson', 86), 
(87, N'Gordon', N'Bell', 187), 
(88, N'Eric', N'North', 83), 
(89, N'Jennifer', N'Short', 34), 
(90, N'Kylie', N'Hughes', 50), 
(91, N'Leonard', N'Reid', 178), 
(92, N'David', N'Baker', 83), 
(93, N'Charles', N'McDonald', 184), 
(94, N'Anna', N'Thomson', 52), 
(95, N'Ella', N'Fraser', 97), 
(96, N'Nathan', N'Davies', 177), 
(97, N'Liam', N'Skinner', 144), 
(98, N'Jonathan', N'Russell', 106); 

-- ?????????? ??????? ?????????(students)? ??????

set identity_insert students off;
INSERT INTO students (name, lastName, roomID) 
VALUES 
(N'Robert', N'Howard', 178), 
(N'Lucas', N'Walker', 51), 
(N'Brandon', N'Tucker', 120),
(N'Anna', N'Ince', 195), 
(N'Amy', N'Lawrence', 137), 
(N'Lauren', N'Murray', 62), 
(N'Adrian', N'Knox', 160), 
(N'Joshua', N'Wright', 78), 
(N'James', N'Gibson', 126), 
(N'Theresa', N'Greene', 24), 
(N'Jasmine', N'Ross', 32), 
( N'Gordon', N'Burgess', 87), 
( N'Stewart', N'Parr', 110), 
( N'Brian', N'Nolan', 111), 
( N'Yvonne', N'Russell', 153), 
( N'Amy', N'Fraser', 74), 
( N'Joe', N'Thomson', 176), 
( N'Amy', N'Mackenzie', 191), 
( N'Jacob', N'Walker', 45), 
( N'Warren', N'White', 112), 
(N'Blake', N'Springer', 197), 
(N'Penelope', N'Peters', 70), 
( N'Brian', N'Sanderson', 179), 
(N'Lily', N'Bailey', 125), 
(N'Lillian', N'Springer', 20), 
(N'Abigail', N'Randall', 146), 
( N'Paul', N'Watson', 150), 
(N'Anne', N'Berry', 131), 
( N'Rose', N'MacDonald', 174), 
( N'Bernadette', N'Bailey', 108), 
( N'Sam', N'Taylor', 8), 
(N'Chloe', N'Campbell', 135), 
( N'Chloe', N'Slater', 15), 
(N'Stephanie', N'Churchill', 197), 
( N'Deirdre', N'Ince', 7), 
( N'Boris', N'Rutherford', 181), 
( N'Lisa', N'Stewart', 41), 
( N'Emma', N'Mackenzie', 3), 
(N'Diane', N'Burgess', 128), 
(N'Victoria', N'Hill', 131), 
(N'Andrea', N'Brown', 142), 
(N'Michelle', N'Dickens', 32), 
( N'Felicity', N'Graham', 77), 
(N'Benjamin', N'Gray', 155), 
(N'Deirdre', N'Metcalfe', 141), 
( N'Neil', N'Butler', 69), 
( N'Victor', N'Sharp', 16), 
( N'Diane', N'Bell', 114), 
( N'Molly', N'Wilson', 122), 
( N'Penelope', N'Grant', 183), 
( N'Michael', N'Miller', 60), 
(N'Dylan', N'Wilson', 172), 
(N'Sam', N'Berry', 162), 
(N'Sophie', N'MacLeod', 155), 
( N'Joe', N'Wright', 176), 
(N'Leonard', N'Miller', 190), 
( N'Rose', N'Hudson', 133), 
(N'Diana', N'Dowd', 56), 
( N'Jessica', N'Piper', 124), 
( N'Melanie', N'Anderson', 92), 
(N'Steven', N'MacDonald', 128), 
(N'Melanie', N'Simpson', 144), 
(N'Sean', N'Sharp', 151), 
(N'Stephen', N'Gray', 32), 
(N'Luke', N'Murray', 107), 
(N'Boris', N'Bailey', 121), 
(N'Jacob', N'Springer', 186), 
(N'Evan', N'Graham', 26), 
(N'Andrea', N'Lewis', 5), 
(N'Edward', N'Fraser', 179), 
(N'Simon', N'Newman', 186), 
(N'Ruth', N'Hardacre', 111), 
(N'Dan', N'Metcalfe', 128), 
(N'Matt', N'Jackson', 177), 
(N'Jake', N'Peake', 89), 
(N'Matt', N'Martin', 142), 
(N'Cameron', N'Baker', 166), 
(N'Jonathan', N'Jackson', 10), 
(N'Virginia', N'Kerr', 166), 
(N'Alexander', N'Bond', 198), 
(N'Owen', N'Ball', 185), 
(N'Christian', N'McLean', 40), 
(N'Piers', N'Alsop', 180), 
(N'Sonia', N'Mitchell', 61), 
(N'Alexandra', N'Jackson', 86), 
(N'Gordon', N'Bell', 187), 
(N'Eric', N'North', 83), 
(N'Jennifer', N'Short', 34), 
(N'Kylie', N'Hughes', 50), 
(N'Leonard', N'Reid', 178), 
(N'David', N'Baker', 83), 
(N'Charles', N'McDonald', 184), 
(N'Anna', N'Thomson', 52), 
(N'Ella', N'Fraser', 97), 
(N'Nathan', N'Davies', 177), 
(N'Liam', N'Skinner', 144), 
(N'Jonathan', N'Russell', 106);


-- ?????????? ??????? ? ???? ??????????(livingRecords)? ?????? 


INSERT INTO livingRecords (roomID, occupantID, fromDate, toDate) 
VALUES
(194, 31, N'2015-11-04', N'2015-12-04'), 
(131, 86, N'2016-03-31', N'2016-08-19'), 
(80, 57, N'2016-05-02', N'2016-09-04'), 
(70, 88, N'2016-09-04', N'2016-12-25'), 
(125, 82, N'2016-09-28', N'2017-02-04'), 
(3, 7, N'2016-10-15', N'2017-06-03'), 
(146, 31, N'2017-05-19', N'2017-07-01'), 
(11, 6, N'2017-08-28', N'2017-07-31'), 
(174, 65, N'2018-04-05', N'2018-05-05'), 
(188, 66, N'2018-06-13', N'2018-07-13'), 
(68, 20, N'2018-07-02', N'2018-08-02'), 
(163, 44, N'2018-07-17', N'2018-08-08'), 
(71, 92, N'2018-08-29', N'2018-11-07'), 
(63, 93, N'2018-11-18', N'2019-01-27'), 
(30, 54, N'2019-02-25', N'2019-03-04'), 
(94, 1, N'2019-05-13', N'2019-10-04'), 
(185, 49, N'2019-06-12', N'2019-10-14'), 
(199, 2, N'2019-07-06', N'2019-10-28'), 
(42, 8, N'2019-12-15', N'2019-12-31'), 
(94, 1, N'2020-01-22', N'2020-03-24'), 
(96, 27, N'2020-06-05', N'2020-07-24'), 
(98, 46, N'2020-09-09', N'2020-10-09'), 
(125, 26, N'2021-07-16', N'2021-08-16'), 
(137, 3, N'2021-12-15', N'2022-01-24'), 
(111, 93, N'2022-03-20', N'2022-04-20');
