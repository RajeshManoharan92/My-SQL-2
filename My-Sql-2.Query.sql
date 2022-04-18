-- Creating Database.

Create Database `Guvi`;

-- Creating Four Tables.

Create Table `student`(`Id` Int(10) Primary Key auto_increment, `Student Name` varchar(255), `Student-Age` Int(3), `Student-Email` varchar(255));

Create Table `batch`(`BatchId` Int(10) Primary Key auto_increment, `Duration` varchar(255), Foreign key(`BatchId`) references student(Id));

Create Table `mentor`(`MentorId` Int(10) Primary Key auto_increment, `Mentor Name` varchar(255), `Mentor-Contact Number` Int(10), `Mentor-Email` varchar(255), Foreign Key(MentorId) References batch(BatchId));

Create Table `Task`(`TaskId` Int(10) Primary Key auto_increment, `Task-Status` varchar(255), Foreign key(`TaskId`) references mentor(MentorId));

-- Inserting Datas in Tables.

Insert into  `student` (`Student Name`,`Student-Age`,`Student-Email`) values ('Rajesh',29,'rajesh@gmail');

Insert into  `student` (`Student Name`,`Student-Age`,`Student-Email`) values ('Ramesh',33,'Ramesh@gmail');

Insert into  `batch` (`Duration`) values ('Three Months');

Insert into  `mentor` (`Mentor Name`,`Mentor-Contact Number`,`Mentor-Email`) values ('Sivaranjani','3444400','siva@gmail');

Insert into  `Task` (`Task-Status`) values ('Completed');


-- Viewing Table Datas Individually.

select * from student;
select * from batch;
select * from mentor;
select * from Task; 

-- Joining All Four Tables using Right Join.

 select * from student s right join batch b  on s.Id = b.BatchId right join mentor m on b.BatchId = m.MentorId 
 right join task t on m.MentorId= t.TaskId 
 
 
  





















