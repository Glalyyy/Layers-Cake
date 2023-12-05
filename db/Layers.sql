Create database Layers
use Layers

create table Customer(
ID_customer int primary key Identity,
[Name] varchar(500),
[Address] varchar(500),
Birthday varchar(200),
Gender varchar(10),
Phone varchar(100),
Gmail varchar(100),
Username varchar(100),
[Password] varchar(100),
ID_admin int
)
create table [Admin](
ID_admin int primary key Identity,
[Name] varchar(500),
[Address] varchar(500),
Birthday varchar(200),
Gender varchar(10),
Phone varchar(100),
Gmail varchar(100),
Username varchar(100),
[Password] varchar(100)
)
Create table Products(
ID_product int primary key Identity,
[Name] varchar(255),
[Image] varchar(255),
Price money,
[Description] varchar(1500),
Details varchar(1500),
Total_quantity int,
saled int,
ID_admin int,
ID_category int
)
Create table Category(
ID_category int  primary key Identity,
Category varchar(255)
)
Create table [Order]
(
ID_order int primary key identity,
Orderdate varchar(255),
ID_customer int
)
Create table Orderdetails (
ID_orderdetails int primary key Identity,
Price money,
Quantity int,
ID_product int,
ID_order int
)
 alter table Orderdetails
 add CONSTRAINT fk_pro_id_ord
FOREIGN KEY (ID_product)
REFERENCES Products(ID_product),
CONSTRAINT fk_pro_id_or
FOREIGN KEY (ID_order)
REFERENCES [Order](ID_order)

alter table [Order]
add CONSTRAINT fk_or_id_cus
FOREIGN KEY (ID_customer)
REFERENCES Customer(ID_customer)

alter table Products 
add CONSTRAINT fk_pro_id_ad
FOREIGN KEY (ID_admin)
REFERENCES [Admin](ID_admin),
CONSTRAINT fk_pro_id_cate
FOREIGN KEY (ID_category)
REFERENCES Category(ID_category)

alter table Customer
add CONSTRAINT fk_cus_id_ad
FOREIGN KEY (ID_admin)
REFERENCES [Admin](ID_admin)



