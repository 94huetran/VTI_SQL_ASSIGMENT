DROP DATABASE IF EXISTS Testing_System_Assignment_00;
CREATE DATABASE Testing_System_Assignment_00;
Use Testing_System_Assignment_00 ;


Create table Deparment(
Dep_id       tinyint unsigned primary key  auto_increment,
Dep_name     varchar(50) unique key not null 
 ) ;
 
Create table `Position` (
Position_id        tinyint unsigned primary key auto_increment,
Position_name      varchar(50) unique key not null
 );
 
Create table `Account`(
Acc_id         tinyint unsigned auto_increment primary key,
Email          varchar(50) unique key,
Username       varchar(50)unique key not null,
Fullname       varchar(50) not null,
Dep_id         tinyint unsigned not null,
Position_id    tinyint unsigned not null,
CreateDate     datetime ,
foreign key (Dep_id) references Deparment(Dep_id),
foreign key (Position_id) references `Position` (Position_id)
);


Create table `Group`(
Group_id          tinyint unsigned auto_increment primary key,
Group_name        varchar(50) unique key not null,
Creator_id        tinyint unsigned unique key not null,
Create_date       datetime 
);


Create table GroupAccount(
Group_id       tinyint unsigned not null primary key,
Acc_id         tinyint unsigned not null,
Join_date      datetime ,
foreign key (Group_id) references `Group`(Group_id),
foreign key (Acc_id) references `Account`(Acc_id)
);


Create table TypeQuestion(
Type_id     tinyint unsigned auto_increment primary key,
Type_name   varchar(50) unique key not null   
);


Create table CategoryQuestion(
CateQuestion_id       tinyint unsigned auto_increment primary key,
CateQuestion_name     varchar(50) unique key not null
);


Create table Questions(
quest_id             tinyint unsigned auto_increment primary key,
Content              varchar(50) unique key not null,
CateQuestion_id      tinyint unsigned not null,
Type_id              tinyint unsigned not null ,
Creator_id           tinyint unsigned not null ,
Create_date          datetime,
foreign key (CateQuestion_id) references CategoryQuestion(CateQuestion_id),
foreign key (Type_id) references TypeQuestion(Type_id)
);


Create table Answer(
ans_id           tinyint unsigned auto_increment primary key,
Content          varchar(50) unique key not null,
quest_id         tinyint unsigned not null, 
is_correct       enum('failse','true') unique key not null,
foreign key (quest_id) references Questions(quest_id)
);

Create table Exam(
exam_id           tinyint unsigned auto_increment primary key,
code_ex           varchar(50) unique key not null,
title             varchar(50) not null,
CateQuestion_id   tinyint unsigned not null,
duration          date not null,
Creator_id        tinyint unsigned not null,
Create_date       datetime ,
foreign key (cateQuestion_id) references CategoryQuestion(CateQuestion_id),
foreign key (Creator_id) references `Account`(Acc_id)
);


Create table ExamQuestion(
exam_id       tinyint unsigned not null primary key,
quest_id      tinyint unsigned not null,
foreign key (exam_id) references Exam (exam_id),
foreign key (quest_id) references Questions(quest_id)
);









