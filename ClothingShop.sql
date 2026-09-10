USE master;
GO

IF DB_ID(N'ClothingShop') IS NULL
BEGIN
    CREATE DATABASE ClothingShop;
END
GO

USE ClothingShop;
GO


-- =========================
-- CATEGORY
-- =========================

CREATE TABLE categories
(
    cate_id INT IDENTITY PRIMARY KEY,

    cate_name NVARCHAR(255) NOT NULL,

    images NVARCHAR(255),

    status INT NOT NULL DEFAULT 1
);
GO


INSERT INTO categories
(cate_name, images, status)
VALUES
(N'Quần Áo Nam','category-nam.jpg',1),
(N'Quần Áo Nữ','category-nu.jpg',1),
(N'Giày Dép','category-giay.jpg',1);
GO



-- =========================
-- USERS
-- =========================

CREATE TABLE users
(
    id INT IDENTITY PRIMARY KEY,

    username NVARCHAR(50) UNIQUE NOT NULL,

    email NVARCHAR(100) UNIQUE NOT NULL,

    password NVARCHAR(100) NOT NULL,

    fullname NVARCHAR(100),

    phone NVARCHAR(20),

    images NVARCHAR(255),

    status INT DEFAULT 0,

    otp NVARCHAR(10),

    createdDate DATETIME DEFAULT GETDATE()
);
GO


INSERT INTO users
(username,email,password,fullname,phone,status)
VALUES
(
'user01',
'trucm8744@gmail,com',
'123456',
N'Trúc Mai',
'0901234567',
1
);
GO



-- =========================
-- PRODUCTS
-- =========================

CREATE TABLE products
(
    product_id INT IDENTITY PRIMARY KEY,

    product_name NVARCHAR(255) NOT NULL,

    price DECIMAL(18,2) NOT NULL,

    description NVARCHAR(MAX),

    image NVARCHAR(255),

    createdDate DATETIME DEFAULT GETDATE(),

    cate_id INT NOT NULL,


    CONSTRAINT FK_Product_Category
    FOREIGN KEY(cate_id)
    REFERENCES categories(cate_id)
);
GO



INSERT INTO products
(product_name,price,description,image,cate_id)
VALUES


(N'Áo thun nam basic',
250000,
N'Áo thun cotton màu trắng',
'aothun.jpg',
1),


(N'Áo khoác nam',
650000,
N'Áo khoác dù chống nước',
'aokhoac.jpg',
1),


(N'Quần kaki nam',
450000,
N'Quần kaki màu be',
'quankaki.jpg',
1),



(N'Đầm công sở nữ',
700000,
N'Đầm nữ thanh lịch',
'damnu.jpg',
2),


(N'Áo sơ mi nữ',
380000,
N'Áo sơ mi nữ kiểu Hàn Quốc',
'sominu.jpg',
2),


(N'Chân váy nữ',
320000,
N'Chân váy chữ A',
'chanvay.jpg',
2),



(N'Giày sneaker nam',
800000,
N'Giày thể thao nam',
'sneaker.jpg',
3),


(N'Giày cao gót nữ',
900000,
N'Giày cao gót công sở',
'caogot.jpg',
3),


(N'Dép thời trang',
200000,
N'Dép đi hàng ngày',
'dep.jpg',
3),


(N'Túi xách nữ',
550000,
N'Túi xách da thời trang',
'tuixach.jpg',
2);

GO



SELECT * FROM categories;

SELECT * FROM users;

SELECT * FROM products;

USE ClothingShop;
GO

INSERT INTO products
(product_name, price, description, image, cate_id)
VALUES

(N'Áo polo nam',300000,N'Áo polo nam cao cấp','demo.jpg',1),

(N'Quần short nam',250000,N'Quần short nam mùa hè','demo.jpg',1),

(N'Áo len nữ',400000,N'Áo len nữ thời trang','demo.jpg',2),

(N'Áo cardigan nữ',450000,N'Áo khoác cardigan nữ','demo.jpg',2),

(N'Giày thể thao nữ',750000,N'Giày sneaker nữ','demo.jpg',3),

(N'Mũ thời trang',150000,N'Mũ thời trang unisex','demo.jpg',3),

(N'Áo hoodie nam',550000,N'Áo hoodie phong cách','demo.jpg',1),

(N'Quần jean nữ',600000,N'Quần jean nữ đẹp','demo.jpg',2);

GO

USE ClothingShop;
GO

UPDATE categories
SET images = 'aosomi.jpg';

UPDATE users
SET images = 'aosomi.jpg';

UPDATE products
SET image = 'aosomi.jpg';

GO

SELECT product_id, product_name, image
FROM products;