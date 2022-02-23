use quanlysinhvien;

select *
from subject;

# 1.Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.

select *
from subject
where Credit = (select max(Credit)
                from subject);

# 2. Hiển thị các thông tin môn học có điểm thi lớn nhất.
select max(Mark)
from mark;

select m.SubID, SubName, Credit, Status
from subject join mark m on subject.SubID = m.SubID
where Mark = (select max(Mark)
              from mark);

# 3. Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần

select S.*, avg(Mark) as 'Điểm trung bình'
from student S join mark m on S.StudentID = m.StudentID
group by s.StudentID,s.StudentName
order by 'Điểm trung bình 'desc ;