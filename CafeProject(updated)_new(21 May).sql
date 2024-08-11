

create DATABASE cafe;
drop database cafe
use[cafe]

drop table items
drop table orderrs
drop table employe
drop table customerr

select * from items
select * from orderrs
select * from employe
select * from customerr

create table items
(
  id int identity(1,1) primary key not null, 
  name  varchar(250) not null,
  category varchar(250) not null,
  price int not null,
  employee_id  int,
  customer_id INT,
  --FOREIGN KEY (customer_id) REFERENCES customerr(cid)

);



INSERT INTO items (name, category, price, employee_id, customer_id)
VALUES 
  ('Chicken Biryani', 'Main Course', 300, 2, 1),
  ('Beef Biryani', 'Main Course', 320, 1, 2),
  ('Vegetable Biryani', 'Main Course', 280, 3, 3),
  ('Haleem', 'Main Course', 250, 4, 4),
  ('Nihari', 'Main Course', 350, 2, 5),
  ('Chapli Kabab', 'Appetizer', 200, 1, 1),
  ('Samosa', 'Appetizer', 50, 4, 2),
  ('Dahi Baray', 'Appetizer', 100, 5, 3),
  ('Karhai Chicken', 'Main Course', 400, 3, 4),
  ('Daal Chawal', 'Main Course', 150, 1, 5),
  ('Aloo Gosht', 'Main Course', 350, 4, 1),
  ('Chana Chaat', 'Appetizer', 80, 5, 2),
  ('Chicken Tikka', 'Main Course', 320, 2, 3),
  ('Bhindi Masala', 'Main Course', 180, 3, 4),
  ('Seekh Kabab', 'Appetizer', 220, 1, 5),
  ('Pakora', 'Appetizer', 70, 4, 1),
  ('Shami Kabab', 'Appetizer', 90, 5, 2),
  ('Mutton Curry', 'Main Course', 400, 3, 3),
  ('Palak Paneer', 'Main Course', 200, 1, 4),
  ('Chicken Karahi', 'Main Course', 380, 2, 5),
  ('Fish Fry', 'Appetizer', 150, 4, 1),
  ('Vegetable Pakora', 'Appetizer', 60, 5, 2),
  ('Beef Pulao', 'Main Course', 350, 3, 3),
  ('Chicken Handi', 'Main Course', 280, 2, 4),
  ('Chilli Chicken', 'Main Course', 320, 1, 5),
  ('Paneer Tikka', 'Appetizer', 180, 5, 1),
  ('Fruit Chaat', 'Appetizer', 120, 4, 2);

select *from items;

create table orderrs
(
id int identity(1,1) primary key not null, 
name  varchar(250) not null,
price int not null,
quantity int not null,
total int not null,
employee_id int,
customer_id int,
 item_id int
);

 
INSERT INTO orderrs (name, price, quantity, total, employee_id, customer_id,item_id)
VALUES
  ('Chicken Biryani', 200, 2, 400, 1, 1,1),
  ('Beef Karahi', 300, 1, 300, 1, 2,2),
  ('Chicken Tikka', 150, 3, 450, 2, 3,13),
  ('Mutton Korma', 400, 2, 800, 3, 4,18),
  ('Vegetable Biryani', 180, 1, 180, 4, 5,3),
  ('Chicken Handi', 250, 3, 750, 5, 6,4),
  ('Beef Pulao', 220, 2, 440, 6, 7,23);

  select * from orderrs
 
select *from orderrs;


create table employe
(
eid int primary key not null, 
name  varchar(250) not null,
department varchar(250) not null,
salary int not null
);
drop table employe
INSERT INTO employe (eid, name, department, salary)
VALUES 
  (1, 'Ali', 'Kitchen', 20000),
  (2, 'Hassan', 'Kitchen', 25000),
  (3, 'Zain', 'Kitchen', 18000),
  (4, 'Ayesha', 'Kitchen', 22000),
  (5, 'Zara', 'Kitchen', 28000),
  (6, 'Sami', 'Waiter', 15000),
  (7, 'Omar', 'Waiter', 17000),
  (8, 'Nashit', 'Waiter', 19000),
  (9, 'Sara', 'Waiter', 16000),
  (10, 'Arooba', 'Waiter', 18000),
  (11, 'Usman', 'Manager', 40000),
  (12, 'Majid', 'Manager', 45000),
  (13, 'Zubair', 'Manager', 50000),
  (14, 'Khalid', 'Manager', 55000),
  (15, 'Ahmed', 'Manager', 60000),
  (16, 'Fatima', 'Cashier', 22000),
  (17, 'Nimra', 'Cashier', 24000),
  (18, 'Hina', 'Cashier', 21000),
  (19, 'Javeria', 'Cashier', 23000),
  (20, 'Sana', 'Cashier', 25000),
  (21, 'Adnan', 'Cleaner', 12000),
  (22, 'Saeed', 'Cleaner', 11000),
  (23, 'Fawad', 'Cleaner', 13000),
  (24, 'Ayesha', 'Cleaner', 14000),
  (25, 'Noman', 'Cleaner', 10000),
  (26, 'Iqra', 'Security', 18000),
  (27, 'Tariq', 'Security', 19000),
  (28, 'Hafsa', 'Security', 20000),
  (29, 'Rabia', 'Security', 17000),
  (30, 'Naveed', 'Security', 16000),
  (31, 'Asif', 'Cook', 20000),
  (32, 'Farhan', 'Cook', 22000),
  (33, 'Amina', 'Cook', 18000),
  (34, 'Maria', 'Cook', 24000),
  (35, 'Wajahat', 'Cook', 19000),
  (36, 'Nabeel', 'Server', 17000),
  (37, 'Tayyab', 'Server', 16000),
  (38, 'Hamza', 'Server', 15000),
  (39, 'Safia', 'Server', 18000),
  (40, 'Rizwan', 'Server', 19000);

select *from employe;

create table customerr
(
cid int identity(1,1) primary key not null, 
name  varchar(250) not null,
totalbill int not null,
datee varchar(250) not null
);


INSERT INTO customerr 
VALUES
    ( 'Ali Khan', 500, '2022-01-01'),
    ( 'Sara Ahmed', 800, '2022-01-02'),
    ( 'Nabeel Shah', 1500, '2022-01-03'),
    ( 'Ayesha Rehman', 200, '2022-01-04'),
    ( 'Ahmed Ali', 1000, '2022-01-05'),
    ( 'Zainab Malik', 300, '2022-01-06'),
    ( 'Mehwish Ali', 400, '2022-01-07'),
    ( 'Tahir Abbas', 900, '2022-01-08'),
    ( 'Fiza Khalid', 1200, '2022-01-09'),
    ( 'Kamran Malik', 700, '2022-01-10'),
    ( 'Sana Khan', 100, '2022-01-11'),
    ( 'Imran Ali', 600, '2022-01-12'),
    ( 'Maria Akram', 1100, '2022-01-13'),
    ( 'Saad Rafique', 1400, '2022-01-14'),
    ( 'Abdullah Ahmed', 1800, '2022-01-15'),
    ( 'Nimra Aslam', 2000, '2022-01-16'),
    ( 'Hamza Ali', 1300, '2022-01-17'),
    ( 'Amina Riaz', 400, '2022-01-18'),
    ( 'Bilal Ahmed', 300, '2022-01-19'),
    ( 'Sadia Khan', 150, '2022-01-20'),
    ( 'Nida Imran', 800, '2022-01-21'),
    ( 'Aliya Hussain', 1000, '2022-01-22'),
    ( 'Adil Shah', 1200, '2022-01-23'),
    ( 'Usman Ali', 900, '2022-01-24'),
    ( 'Saima Khan', 600, '2022-01-25'),
    ( 'Sajid Ali', 1500, '2022-01-26'),
    ( 'Nashit Ali', 1100, '2022-01-27'),
    ( 'Fahad Hussain', 1400, '2022-01-28');