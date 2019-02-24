$mysql -u root -p
CREATE OR REPLACE USER user@localhost IDENTIFIED BY 'password';
GRANT ALL privileges ON `X-rays`.* TO 'user'@localhost;
$quit;
$mysql -u user -p
USE X-rays;
SHOW tables;
+------------------+
| Tables_in_X-rays |
+------------------+
| image            |
+------------------+
1 row in set (0.000 sec)

SELECT * FROM image LIMIT 5;
+------------------+------------------------+----------+-----------+------------+---------------+--------------+------------+-------------+--------------------+--------------------+--------------------------------------------+
| ImageIndex       | FindingLabels          | Followup | PatientID | PatientAge | PatientGender | ViewPosition | ImageWidth | ImageHeight | ImagePixelSpacingX | ImagePixelSpacingY | ImagePath                                  |
+------------------+------------------------+----------+-----------+------------+---------------+--------------+------------+-------------+--------------------+--------------------+--------------------------------------------+
| 00000001_000.png | Cardiomegaly           |     NULL |         1 |         58 | M             | PA           |       2682 |        2749 |              0.143 |              0.143 | /Users/pengxu/Data/images/00000001_000.png |
| 00000001_001.png | Cardiomegaly|Emphysema |     NULL |         1 |         58 | M             | PA           |       2894 |        2729 |              0.143 |              0.143 | /Users/pengxu/Data/images/00000001_001.png |
| 00000001_002.png | Cardiomegaly|Effusion  |     NULL |         1 |         58 | M             | PA           |       2500 |        2048 |              0.168 |              0.168 | /Users/pengxu/Data/images/00000001_002.png |
| 00000002_000.png | No Finding             |     NULL |         2 |         81 | M             | PA           |       2500 |        2048 |              0.171 |              0.171 | /Users/pengxu/Data/images/00000002_000.png |
| 00000003_000.png | Hernia                 |     NULL |         3 |         81 | F             | PA           |       2582 |        2991 |              0.143 |              0.143 | /Users/pengxu/Data/images/00000003_000.png |
+------------------+------------------------+----------+-----------+------------+---------------+--------------+------------+-------------+--------------------+--------------------+--------------------------------------------+
5 rows in set (0.000 sec)

