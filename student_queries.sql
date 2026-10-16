
-- 1. Hien thi sinh vien co ten bat dau bang chu h
SELECT *
FROM Student
WHERE StudentName LIKE 'h%';

-- 2. Hien thi cac lop hoc bat dau vao thang 12
SELECT *
FROM Class
WHERE MONTH(StartDate) = 12;

-- 3. Hien thi cac mon hoc co credit tu 3 den 5
SELECT *
FROM Subject
WHERE Credit BETWEEN 3 AND 5;

-- 4. Thay doi ClassID cua sinh vien ten Hung thanh 2
UPDATE Student
SET ClassID = 2
WHERE StudentName = 'Hung';

-- 5. Hien thi ten sinh vien, ten mon hoc va diem thi
-- Sap xep diem giam dan, neu trung diem thi sap xep ten tang dan
SELECT s.StudentName, sub.SubName, m.Mark
FROM Student s
JOIN Mark m ON s.StudentID = m.StudentID
JOIN Subject sub ON m.SubID = sub.SubID
ORDER BY m.Mark DESC, s.StudentName ASC;
