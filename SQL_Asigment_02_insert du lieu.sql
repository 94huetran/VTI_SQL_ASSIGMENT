Use Testing_System_Assignment_01;

insert into Deparment(Dep_name) values ("Sale");
insert into Deparment(Dep_name) values ("PM");
insert into Deparment(Dep_name) values ("nhan su");
insert into Deparment(Dep_name) values ("kinh doanh");
insert into Deparment(Dep_name) values ("maketting");
insert into Deparment(Dep_name) values ("ke toan");


#-------------Bang Position-------------------------
insert into `Position`(Position_name) values ("nhan_vien");
insert into `Position`(Position_name) values ("giam_doc");
insert into `Position`(Position_name) values ("truong phong");
insert into `Position`(Position_name) values ("pho phong");
insert into `Position`(Position_name) values ("leader");

#-------------- BANG ACCOUNT --------------------------------
insert into `Account`(Acc_id,Email,Username,Fullname,Dep_id,Position_id,CreateDate) values (01,'nva@gmail.com','NVA','NGUYEN VAN A',1,1,'2020-03-11');
insert into `Account`(Acc_id,Email,Username,Fullname,Dep_id,Position_id,CreateDate) values (02,'HMN@gmail.com','HMN','HOANG MINH NHAT',2,1,'2015-07-21');
insert into `Account`(Acc_id,Email,Username,Fullname,Dep_id,Position_id,CreateDate) values (03,'PHA@gmail.com','PHA','PHAM HONG ANH',3,1,'2018-11-11');
insert into `Account`(Acc_id,Email,Username,Fullname,Dep_id,Position_id,CreateDate) values (04,'NMN@gmail.com','NMN','NGUYEN MINH NHAT',4,'2009-12-01');
insert into `Account`(Acc_id,Email,Username,Fullname,Dep_id,Position_id,CreateDate) values (05,'LHA@gmail.com','LHA','LE HONG ANH',5,5,'2018-03-11');
insert into `Account`(Acc_id,Email,Username,Fullname,Dep_id,Position_id,CreateDate) values (06,'THL@gmail.com','THL','THAI HOANG LE',3,2,'2019-03-11');
insert into `Account`(Acc_id,Email,Username,Fullname,Dep_id,Position_id,CreateDate) values (07,'PHBM@gmail.com','PHBM','PHAM HOANG BAO MINH',4,1,'2018-03-11');
insert into `Account`(Acc_id,Email,Username,Fullname,Dep_id,Position_id,CreateDate) values (08,'LHBA@gmail.com','LHBA','LE HOANG BAO MINH',3,2,'2020-03-11');
insert into `Account`(Acc_id,Email,Username,Fullname,Dep_id,Position_id,CreateDate) values (09,'NKD@gmail.com','NKD','NGUYEN KHANH DIEP',1,3,'2019-03-21');
insert into `Account`(Acc_id,Email,Username,Fullname,Dep_id,Position_id,CreateDate) values (10,'NHMC@gmail.com','NHMC','NGUYEN HOANG MINH CHAU',4,1,'2021-03-11');

insert into `Group`(Group_name, Creator_id) values ('Nhom 1', 01);
insert into `Group`(Group_name, Creator_id) values ('Nhom 2', 21);
insert into `Group`(Group_name, Creator_id) values ('Nhom 4', 41);
insert into `Group`(Group_name, Creator_id) values ('Nhom 3', 31);
insert into `Group`(Group_name, Creator_id) values ('Nhom 5', 51);


insert into CategoryQuestion (CateQuestion_name) values ('lam viec ca nha');
insert into CategoryQuestion (CateQuestion_name) values ('lam viec nhom');
insert into CategoryQuestion (CateQuestion_name) values ('van dap');
insert into CategoryQuestion (CateQuestion_name) values ('thi viet');
insert into CategoryQuestion (CateQuestion_name) values ('ngoai ngu');


insert into GroupAccount(Group_id,Acc_id,Join_date) value (1,1,'2012-03-06');
insert into GroupAccount(Group_id,Acc_id,Join_date) value (4,7,'2012-05-06');
insert into GroupAccount(Group_id,Acc_id,Join_date) value (2,5,'2012-07-06');



insert into Exam (code_ex,title,CateQuestion_id,Creator_id,duration) values ('M000','de thi lan 1',3,2,'60');
insert into Exam (code_ex,title,CateQuestion_id,Creator_id,duration) values ('M003','de thi lan 3',1,1,'60');
insert into Exam (code_ex,title,CateQuestion_id,Creator_id,duration) values ('M004','de thi lan 4',5,5,'120');
insert into Exam (code_ex,title,CateQuestion_id,Creator_id,duration) values ('M005','de thi lan 5',2,1,'60');
insert into Exam (code_ex,title,CateQuestion_id,Creator_id,duration) values ('M007','de thi lan 6',1,2,120);



insert into TypeQuestion(Type_name) values ('skill');
insert into TypeQuestion(Type_name) values ('teamwork');
insert into TypeQuestion(Type_name) values ('chuyen mon');
insert into TypeQuestion(Type_name) values ('so thich');
insert into TypeQuestion(Type_name) values ('nang khieu');


insert into Questions (content,CateQuestion_id,Type_id,Creator_id,Create_date) values ('asd',1,3,2,'2018-12-03');
insert into Questions (content,CateQuestion_id,Type_id,Creator_id,Create_date) values ('agd',3,3,2,'2019-10-13');
insert into Questions (content,CateQuestion_id,Type_id,Creator_id,Create_date) values ('pmb',4,5,1,'2028-09-03');
insert into Questions (content,CateQuestion_id,Type_id,Creator_id,Create_date) values ('cb',1,2,2,'2008-11-23');
insert into Questions (content,CateQuestion_id,Type_id,Creator_id,Create_date) values ('akh',3,4,2,'2017-10-11');
insert into Questions (content,CateQuestion_id,Type_id,Creator_id,Create_date) values ('khj',2,1,2,'2010-09-02');



insert into Answer (Content,quest_id,is_correct) values ('abc',1 ,'true');
insert into Answer (Content,quest_id,is_correct) values ('klj',3 ,'true');
insert into Answer (Content,quest_id,is_correct) values ('asc',1 ,'true');
insert into Answer (Content,quest_id,is_correct) values ('poi',1 ,'true');
insert into Answer (Content,quest_id,is_correct) values ('gbn',1 ,'true');


#update Exam set Create_date='2019-12-03' where exam_id = 1;
#update Exam set Create_date='2017-10-05' where exam_id = 2;
#update Exam set Create_date='2014-02-13' where exam_id = 3;
#update Exam set Create_date='2016-03-23' where exam_id = 4;
#update Exam set Create_date='2020-11-09' where exam_id = 5;





