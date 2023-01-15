CREATE DATABASE NCT; USE NCT;
CREATE TABLE NCT127( NCT_ID NUMERIC, TotalMembers TINYINT, DateFounded YEAR, AgencyName TEXT, FandomName TEXT, FandomColor TEXT );
CREATE TABLE Member( Member_ID NUMERIC, FirstName VARCHAR(100), LastName VARCHAR(100), StageName TEXT, Age TINYINT, BirthDate DATE,  ZodiacSign TEXT, RepEmoji TEXT, Height TEXT, Weight TEXT, BloodType TEXT, Nationality TEXT, BirthPlace TEXT, Education TEXT, Description TEXT );
MariaDB [NCT]> SHOW TABLES;
+---------------+
| Tables_in_NCT |
+---------------+
| Member        |
| NCT127        |
+---------------+
2 rows in set (0.000 sec)
INSERT INTO NCT127(NCT_ID, TotalMembers, DateFounded, AgencyName, FandomName, FandomColor)    VALUES (1, 9, 2016, 'SM Entertainment', 'NCTzen', 'Lime Green');    INSERT INTO Member(Member_ID, FirstName, LastName, StageName, Age, BirthDate, ZodiacSign, RepEmoji, Height, Weight, BloodType, Nationality, BirthPlace, Education, Description)    VALUES (1, 'Tae-yong', 'Lee', 'Taeyong', 27, '1995-07-01', 'Cancer', 'Rose', '5’9"', '128 lbs', 'O', 'South Korean', 'Seoul, South Korea', 'School of Performing Arts Seoul', 'Leader, Main Rapper, Sub-Vocalist, Main Dancer'),          (2, 'Mark', 'Lee', 'Mark', 23, '1999-08-02', 'Leo', 'Cheetah', '5’9"', '134 lbs', 'A', 'Canadian', 'Toronto, Canada', 'School of Performing Arts Seoul', 'Main Rapper, Sub-Vocalist, Main Dancer'),          (3, 'Dong-hyuck', 'Lee', 'Haechan', 22, '2000-06-06', 'Gemini', 'Bear Face', '5’9"', '123 lbs', 'AB', 'South Korean', 'Seoul, South Korea', 'School of Performing Arts Seoul', 'Main Vocalist, Lead Dancer, Maknae'),          (4, 'Dong-young', 'Kim', 'Doyoung', 26, '1996-02-01', 'Aquarius', 'Rabbit Face', '5’10"', '130 lbs', 'B', 'South Korean', 'Seoul, South Korea', 'Topyeong High School', 'Main Vocalist'),          (5, 'Jeong', 'Yun-o', 'Jaehyun', 25, '1997-02-14', 'Aquarius', 'Peach', '5’11"', '139 lbs', 'A', 'South Korean', 'Seoul, South Korea', 'School of Performing Arts Seoul', 'Main Vocalist, Lead Dancer, Sub-Rapper'),          (6, 'John', 'Suh', 'Johnny', 27, '1995-02-09', 'Aquarius', 'Cat Face', '6’2"', '150 lbs', 'B', 'Korean-American', 'Chicago, Illinois', 'School of Performing Arts Seoul, Glennbrook North High School', 'Lead Dancer, Sub Rapper, Sub Vocalist'),          (7, 'Jung-woo', 'Kim', 'Jungwoo', 24, '1998-02-19', 'Pisces', 'Dog Face', '5’11"', '130 lbs', 'AB', 'South Korean', 'Seoul, South Korea', 'Gimpo Jeil Technical High School', 'Lead Vocalist, MC, Lead Dancer'),          (8, 'Yuta', 'Nakamoto', 'Yuta', 27, '1995-11-26', 'Scorpio', 'Octopus', '5’9"', '130 lbs', 'A', 'Japanese', 'Kadoma, Osaka, Japan', 'Yashima Gakuen High School', 'Lead Dancer, Sub-Vocalist, Sub-Rapper'),          (9, 'Tae-il', 'Moon', 'Taeil', 28, '1994-06-14', 'Gemini', 'Full Moon', '5’7"', '130 lbs', 'O', 'South Korean', 'Seoul, South Korea', 'Seoul Science High School', 'Main Vocalist');
MariaDB [NCT]> SELECT * FROM NCT127;
+--------+--------------+-------------+------------------+------------+-------------+
| NCT_ID | TotalMembers | DateFounded | AgencyName       | FandomName | FandomColor |
+--------+--------------+-------------+------------------+------------+-------------+
|      1 |            9 |        2016 | SM Entertainment | NCTzen     | Lime Green  |
+--------+--------------+-------------+------------------+------------+-------------+
1 row in set (0.000 sec)
MariaDB [NCT]> SELECT * FROM Member;
+-----------+------------+----------+-----------+------+------------+------------+-------------+---------+---------+-----------+-----------------+----------------------+---------------------------------------------------------------+------------------------------------------------+
| Member_ID | FirstName  | LastName | StageName | Age  | BirthDate  | ZodiacSign | RepEmoji    | Height  | Weight  | BloodType | Nationality     | BirthPlace           | Education                                                     | Description                                    |
+-----------+------------+----------+-----------+------+------------+------------+-------------+---------+---------+-----------+-----------------+----------------------+---------------------------------------------------------------+------------------------------------------------+
|         1 | Tae-yong   | Lee      | Taeyong   |   27 | 1995-07-01 | Cancer     | Rose        | 5’9"    | 128 lbs | O         | South Korean    | Seoul, South Korea   | School of Performing Arts Seoul                               | Leader, Main Rapper, Sub-Vocalist, Main Dancer |
|         2 | Mark       | Lee      | Mark      |   23 | 1999-08-02 | Leo        | Cheetah     | 5’9"    | 134 lbs | A         | Canadian        | Toronto, Canada      | School of Performing Arts Seoul                               | Main Rapper, Sub-Vocalist, Main Dancer         |
|         3 | Dong-hyuck | Lee      | Haechan   |   22 | 2000-06-06 | Gemini     | Bear Face   | 5’9"    | 123 lbs | AB        | South Korean    | Seoul, South Korea   | School of Performing Arts Seoul                               | Main Vocalist, Lead Dancer, Maknae             |
|         4 | Dong-young | Kim      | Doyoung   |   26 | 1996-02-01 | Aquarius   | Rabbit Face | 5’10"   | 130 lbs | B         | South Korean    | Seoul, South Korea   | Topyeong High School                                          | Main Vocalist                                  |
|         5 | Jeong      | Yun-o    | Jaehyun   |   25 | 1997-02-14 | Aquarius   | Peach       | 5’11"   | 139 lbs | A         | South Korean    | Seoul, South Korea   | School of Performing Arts Seoul                               | Main Vocalist, Lead Dancer, Sub-Rapper         |
|         6 | John       | Suh      | Johnny    |   27 | 1995-02-09 | Aquarius   | Cat Face    | 6’2"    | 150 lbs | B         | Korean-American | Chicago, Illinois    | School of Performing Arts Seoul, Glennbrook North High School | Lead Dancer, Sub Rapper, Sub Vocalist          |
|         7 | Jung-woo   | Kim      | Jungwoo   |   24 | 1998-02-19 | Pisces     | Dog Face    | 5’11"   | 130 lbs | AB        | South Korean    | Seoul, South Korea   | Gimpo Jeil Technical High School                              | Lead Vocalist, MC, Lead Dancer                 |
|         8 | Yuta       | Nakamoto | Yuta      |   27 | 1995-11-26 | Scorpio    | Octopus     | 5’9"    | 130 lbs | A         | Japanese        | Kadoma, Osaka, Japan | Yashima Gakuen High School                                    | Lead Dancer, Sub-Vocalist, Sub-Rapper          |
|         9 | Tae-il     | Moon     | Taeil     |   28 | 1994-06-14 | Gemini     | Full Moon   | 5’7"    | 130 lbs | O         | South Korean    | Seoul, South Korea   | Seoul Science High School                                     | Main Vocalist                                  |
+-----------+------------+----------+-----------+------+------------+------------+-------------+---------+---------+-----------+-----------------+----------------------+---------------------------------------------------------------+------------------------------------------------+
9 rows in set (0.000 sec)
 
5 SQL SELECT Statements & Results
1) SELECT StageName      FROM Member      WHERE StageName LIKE 'J%';
MariaDB [NCT]> SELECT StageName
    -> FROM Member
    -> WHERE StageName LIKE 'J%';
+-----------+
| StageName |
+-----------+
| Jaehyun   |
| Johnny    |
| Jungwoo   |
+-----------+
3 rows in set (0.000 sec)
 
2) SELECT LastName, FirstName      FROM Member     ORDER BY LastName ASC;
MariaDB [NCT]> SELECT LastName, FirstName
    -> FROM Member
    -> ORDER BY LastName ASC;
+----------+------------+
| LastName | FirstName  |
+----------+------------+
| Kim      | Dong-young |
| Kim      | Jung-woo   |
| Lee      | Tae-yong   |
| Lee      | Mark       |
| Lee      | Dong-hyuck |
| Moon     | Tae-il     |
| Nakamoto | Yuta       |
| Suh      | John       |
| Yun-o    | Jeong      |
+----------+------------+
9 rows in set (0.000 sec)
 
3) SELECT COUNT(*)      FROM Member     WHERE Education LIKE 'School of Performing Arts Seoul';
MariaDB [NCT]> SELECT COUNT(*) 
    -> FROM Member
    -> WHERE Education LIKE 'School of Performing Arts Seoul';
+----+
|    |
+----+
|  4 |
+----+
1 row in set (0.000 sec)
 
4) SELECT NCT127.AgencyName AS agency_name,                    Member.StageName AS stage_name     FROM NCT127    JOIN Member ON NCT127.NCT_ID = Member.Member_ID;
MariaDB [NCT]> SELECT NCT127.AgencyName AS agency_name,
    ->        Member.StageName AS stage_name
    -> FROM NCT127
    -> JOIN Member ON NCT127.NCT_ID = Member.Member_ID;
+------------------+------------+
| agency_name      | stage_name |
+------------------+------------+
| SM Entertainment | Taeyong    |
+------------------+------------+
1 row in set (0.006 sec)
 
5) SELECT StageName, BirthPlace     FROM Member     WHERE BirthPlace NOT LIKE 'S%a';
MariaDB [NCT]> SELECT StageName, BirthPlace
    -> FROM Member
    -> WHERE BirthPlace NOT LIKE 'S%a';
+-----------+----------------------+
| StageName | BirthPlace           |
+-----------+----------------------+
| Mark      | Toronto, Canada      |
| Johnny    | Chicago, Illinois    |
| Yuta      | Kadoma, Osaka, Japan |
+-----------+----------------------+
3 rows in set (0.000 sec)
