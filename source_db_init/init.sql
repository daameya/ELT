CREATE TABLE User_Account(
    User_Id SERIAL PRIMARY KEY,
    Email_Id VARCHAR(100) NOT NULL UNIQUE,
    Gender VARCHAR(100) NOT NULL,
    Date_Of_Birth DATE,
    First_Name VARCHAR(100) NOT NULL,
    Last_Name VARCHAR(100)
);

INSERT INTO User_Account (User_Id, Email_Id, Gender, Date_Of_Birth, First_Name, Last_Name) VALUES 
(1, 'akillock0@pagesperso-orange.fr', 'Female', '8/29/1996', 'Albina', 'Killock'),
(2, 'ddoge1@google.com.hk', 'Male', '7/8/1996', 'Demetre', 'Doge'),
(3, 'nwessing2@constantcontact.com', 'Female', '7/22/1995', 'Nalani', 'Wessing'),
(4, 'jjeavons3@google.ru', 'Male', '6/18/1998', 'Justino', 'Jeavons'),
(5, 'mgoodboddy4@geocities.jp', 'Male', '12/1/1998', 'Malvin', 'Goodboddy'),
(6, 'rcoughlin5@de.vu', 'Female', '12/21/1995', 'Rosabelle', 'Coughlin'),
(7, 'gmalbon6@simplemachines.org', 'Male', '6/6/1997', 'Gifford', 'Malbon'),
(8, 'bbellworthy7@hubpages.com', 'Male', '11/13/1996', 'Bartolomeo', 'Bellworthy'),
(9, 'jhemshall8@wikipedia.org', 'Female', '7/11/1997', 'Janis', 'Hemshall'),
(10, 'tsandeman9@dailymotion.com', 'Male', '1/28/1996', 'Thom', 'Sandeman'),
(11, 'atimperleya@hexun.com', 'Male', '1/13/1998', 'Arni', 'Timperley'),
(12, 'wfriedb@csmonitor.com', 'Male', '5/3/1995', 'Wilmar', 'Fried'),
(13, 'elawerencec@whitehouse.gov', 'Female', '3/26/1998', 'Elena', 'Lawerence'),
(14, 'wbaskeyfieldd@uol.com.br', 'Male', '5/1/1996', 'Wendell', 'Baskeyfield'),
(15, 'bgabriele@tumblr.com', 'Male', '6/9/1998', 'Broddie', 'Gabriel');


CREATE TABLE Preferences(
    Pref_Id SERIAL PRIMARY KEY,
    Age INT,
    Height DECIMAL(5,2) Check (Height >= 145 AND Height <= 190),
    Nationality VARCHAR(255) NOT NULL,
    Languages VARCHAR(255) NOT NULL,
    Occupation VARCHAR(255) NOT NULL
);

INSERT INTO Preferences (Pref_Id, Age, Height, Nationality, Languages, Occupation) VALUES
(1, 24, 173, 'Peru', 'Bulgarian', 'Director of Sales'),
(2, 23, 174, 'Poland', 'Tetum', 'Associate Professor'),
(3, 22, 163, 'Uganda', 'Japanese', 'Sales Associate'),
(4, 26, 154, 'Philippines', 'Hiri Motu', 'Software Consultant'),
(5, 20, 176, 'Greece', 'Oriya', 'Financial Analyst'),
(6, 22, 177, 'Thailand', 'Guaraní', 'Human Resources Assistant I'),
(7, 25, 173, 'Indonesia', 'Bislama', 'General Manager'),
(8, 30, 187, 'Thailand', 'Montenegrin', 'Research Assistant I'),
(9, 29, 176, 'Japan', 'Maltese', 'Biostatistician I'),
(10, 30, 162, 'Russia', 'Croatian', 'Staff Accountant II'),
(11, 19, 189, 'Portugal', 'Lithuanian', 'Food Chemist'),
(12, 23, 172, 'Russia', 'Bengali', 'Staff Scientist'),
(13, 27, 157, 'Indonesia', 'Dzongkha', 'Senior Editor'),
(14, 23, 159, 'Kenya', 'Danish', 'Automation Specialist I'),
(15, 22, 165, 'Poland', 'English', 'Senior Quality Engineer');


CREATE TABLE Profiles(
    Profile_Id SERIAL PRIMARY KEY,
    Creation_Date Date,
    Profile_Type VARCHAR(100) NOT NULL
);

INSERT INTO Profiles(Profile_Id, Creation_Date, Profile_Type) VALUES
(1, '5/4/2023', 'Dating'),
(2, '7/12/2022', 'Dating'),
(3, '8/25/2023', 'Dating'),
(4, '12/28/2022', 'Dating'),
(5, '7/16/2023', 'Work'),
(6, '3/15/2023', 'Dating'),
(7, '8/19/2022', 'Dating'),
(8, '7/24/2023', 'Dating'),
(9, '5/13/2023', 'Friendship'),
(10, '1/4/2022', 'Dating'),
(11, '10/2/2023', 'Work'),
(12, '4/10/2023', 'Friendship'),
(13, '5/29/2022', 'Dating'),
(14, '7/4/2022', 'Friendship'),
(15, '6/19/2022', 'Dating');

CREATE TABLE Subscription(
    Sub_Id SERIAL PRIMARY KEY,
    Subscription_Name VARCHAR(100), --('Basic', 'Bronze', 'Silver', 'Diamond', 'Elite Plus', 'Gold', 'VIP')
    Subscribed_On Date
);

INSERT INTO Subscription(Sub_Id, Subscription_Name, Subscribed_On) VALUES
(1, 'Bronze', '7/10/2023'),
(2, 'Gold', '9/10/2022'),
(3, 'Gold', '10/20/2023'),
(4, 'Basic', '12/28/2022'),
(5, 'Silver', '9/16/2023'),
(6, 'Bronze', '5/15/2023'),
(7, 'Bronze', '10/19/2022'),
(8, 'VIP', '8/1/2023'),
(9, 'Gold', '6/13/2023'),
(10, 'Gold', '2/25/2022'),
(11, 'Gold', '12/23/2023'),
(12, 'Gold', '5/29/2023'),
(13, 'Gold', '7/9/2022'),
(14, 'Gold', '7/15/2022'),
(15, 'Bronze', '8/21/2022');

CREATE TABLE User_Subscription(
    User_Id INT REFERENCES User_Account(User_Id),
    Sub_Id INT REFERENCES Subscription(Sub_Id),
    PRIMARY KEY (User_Id, Sub_Id)
);

INSERT INTO User_Subscription (User_Id, Sub_Id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15);