USE salesdb;

-- question 1
CREATE TABLE
    ProductDetail (
        OrderID INT,
        CustomerName VARCHAR(255),
        Products VA RCHAR (255)
    )
INSERT INTO
    ProductDetail (OrderID, CustomerName, Products)
VALUES
    ('101', 'John Doe ', 'Laptop ,Mouse '),
    ('102', 'Jane Smith', 'Tablet, Keyboard, Mouse'),
    ('103', 'Emily Clark', 'Phone')
INSERT INTO
    ProductDetail (OrderID, CustomerName, Products)
VALUES
    ('101', 'John Doe ', 'Mouse '),
    ('102', 'Jane Smith', 'Tablet'),
    ('103', 'Emily Clark', 'Phone'),
    ('101', 'John Doe ', 'Laptop '),
    ('102', 'Jane Smith', 'Keyboard'),
    ('102', 'Jane Smith', 'Mouse')
    -- question 2
CREATE TABLE
    OrderDetails (
        OrderID INT,
        CustomerName VARCHAR(255),
        Product VARCHAR(255),
        Quantity INT
    )
INSERT INTO
    OrderDetails (OrderID, CustomerName, Product, Quantity)
VALUES
    ('101', 'John Doe', 'Laptop', '2'),
    ('101', 'John Doe', 'Mouse', '2'),
    ('102', 'Jane Smith', 'Tablet', '3'),
    ('102', 'Jane Smith ', 'Keyboard ', '1'),
    ('102', 'Jane Smith', 'Mouse', '2'),
    ('103', 'Emily Clark ', 'Phone', '1')
CREATE TABLE
    Orders (
        OrderID INT PRIMARY KEY,
        CustomerName VARCHAR(255)
    );

CREATE TABLE
    OrderDetails (
        OrderID INT,
        Product VARCHAR(255),
        Quantity INT,
        PRIMARY KEY (OrderID, Product),
        FOREIGN KEY (OrderID) REFERENCES Orders (OrderID)
    );

INSERT INTO
    Orders (OrderID, CustomerName)
VALUES
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');

INSERT INTO
    OrderDetails (OrderID, Product, Quantity)
VALUES
    (101, 'Laptop', 2),
    (101, 'Mouse', 1),
    (102, 'Tablet', 3),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 2),
    (103, 'Phone', 1);