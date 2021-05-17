create database QuanLyHocVien;
use QuanLyHocVien;

create table Classes(
                        classID int primary key auto_increment,
                        className varchar(50) not null,
                        classLanguage varchar(30) not null,
                        classDescription varchar(100)
);
create table Address(
                        addressID int primary key auto_increment,
                        address varchar(100) not null
);
create table Course(
                       couresID int primary key auto_increment,
                       couresName varchar(30) not null,
                       couresDescription varchar(100)
);


create table Students(
                         studentID int primary key auto_increment,
                         studentName varchar(50) not null,
                         studentPhone varchar(12) unique,
                         classID int,
                         FOREIGN KEY (classID) references Classes(classID),
                         addressID int,
                         FOREIGN KEY (addressID) references Address(addressID)
);
create table Points(
                       pointId int primary key auto_increment,
                       coures_ID int ,
                       student_ID int,
                       point int,
                       foreign key (coures_ID) references Course(couresID) ,
                       foreign key (student_ID) references Students(studentID)
);

insert into Address value (1, 'Hà Nội');
insert into Address value(2, 'Hải Phòng');
insert into Address value(3, 'Bắc Ninh');
insert into Address(address) value('Hà Nam');
insert into Address(address) value('Nam Định');

insert into Classes(className, classLanguage, classDescription) value('C0221I1', 'Java', 'Học Java giờ I1');
insert into Classes(className, classLanguage, classDescription) value('C0221H1', 'Java', 'Học Java giờ H1');
insert into Classes(className, classLanguage, classDescription) value('C0221G1', 'Java', 'Học Java giờ G1');
insert into Classes(className, classLanguage, classDescription) value('PHP0221G1', 'PHP', 'Học Java giờ G1');
insert into Classes(className, classLanguage, classDescription) value('PHP0221H1', 'PHP', 'Học Java giờ H1');


insert into Students(studentName, studentPhone,classID, addressID)
values ('Nguyễn văn A', '0938-567-123', 1, 2);
insert into Students(studentName, studentPhone,classID, addressID)
values ('Nguyễn văn B', '0668-523-224', 1, 3);
insert into Students(studentName, studentPhone,classID, addressID)
values ('Nguyễn văn C', '0124-367-557', 2, 2);
insert into Students(studentName, studentPhone,classID, addressID)
values ('Nguyễn văn D', '0346-567-567', 2, 4);
insert into Students(studentName, studentPhone,classID, addressID)
values ('Nguyễn văn E', '0125-567-593', 3, 4);

insert into Students(studentName, studentPhone,classID, addressID)
values ('Nguyễn thị F', '0666-666-666', 3, 1);
insert into Students(studentName, studentPhone,classID, addressID)
values ('Nguyễn thị G', '0777-777-777', 4, 3);
insert into Students(studentName, studentPhone,classID, addressID)
values ('Nguyễn thị H', '0888-888-888', 4, 5);
insert into Students(studentName, studentPhone,classID, addressID)
values ('Nguyễn thị I', '0999-999-999', 5, 1);
insert into Students(studentName, studentPhone,classID, addressID)
values ('Nguyễn thị K', '1000-000-000', 5, 2);


insert into Course(couresName, couresDescription)
    value ('JavaBootCamp8', 'Học Java full 6 tháng');

insert into Course(couresName, couresDescription)
    value ('PHPBootCamp8', 'Học PHP full 5 tháng');

insert into Course(couresName, couresDescription)
    value ('JavaBootCamp4', 'Học Java  partTime 12 tháng');

insert into Course(couresName, couresDescription)
    value ('PHPBootCamp4', 'Học PHP partTime 10 tháng');

insert into Course(couresName, couresDescription)
    value ('Java', 'Học Java');

insert into points(coures_ID, student_ID, point) value
    (1,1,8),
(1,2,9),
(1,3,10),
(1,4,8),
(1,7,9),
(2,1,9),
(2,2,10),
(2,3,8),
(2,4,10),
(2,6,8),
(3,1,10),
(3,6,8),
(3,8,9),
(3,10,9),
(3,4,8);
