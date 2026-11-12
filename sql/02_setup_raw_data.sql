USE supply_chain_analytics;

DROP TABLE IF EXISTS raw_supply_chain;

CREATE TABLE raw_supply_chain (
    `Type` VARCHAR(50),
    `Days for shipping (real)` INT,
    `Days for shipment (scheduled)` INT,
    `Benefit per order` DECIMAL(12,2),
    `Sales per customer` DECIMAL(12,2),
    `Delivery Status` VARCHAR(50),
    `Late_delivery_risk` INT,
    `Category Id` INT,
    `Category Name` VARCHAR(150),
    `Customer City` VARCHAR(100),
    `Customer Country` VARCHAR(100),
    `Customer Email` VARCHAR(150),
    `Customer Fname` VARCHAR(100),
    `Customer Id` INT,
    `Customer Lname` VARCHAR(100),
    `Customer Password` VARCHAR(255),
    `Customer Segment` VARCHAR(100),
    `Customer State` VARCHAR(100),
    `Customer Street` VARCHAR(255),
    `Customer Zipcode` VARCHAR(30),
    `Department Id` INT,
    `Department Name` VARCHAR(100),
    `Latitude` DECIMAL(12,8),
    `Longitude` DECIMAL(12,8),
    `Market` VARCHAR(100),
    `Order City` VARCHAR(100),
    `Order Country` VARCHAR(100),
    `Order Customer Id` INT,
    `order date (DateOrders)` VARCHAR(50),
    `Order Id` INT,
    `Order Item Cardprod Id` INT,
    `Order Item Discount` DECIMAL(12,2),
    `Order Item Discount Rate` DECIMAL(12,4),
    `Order Item Id` INT,
    `Order Item Product Price` DECIMAL(12,2),
    `Order Item Profit Ratio` DECIMAL(12,4),
    `Order Item Quantity` INT,
    `Sales` DECIMAL(12,2),
    `Order Item Total` DECIMAL(12,2),
    `Order Profit Per Order` DECIMAL(12,2),
    `Order Region` VARCHAR(100),
    `Order State` VARCHAR(100),
    `Order Status` VARCHAR(100),
    `Order Zipcode` VARCHAR(30),
    `Product Card Id` INT,
    `Product Category Id` INT,
    `Product Description` TEXT,
    `Product Image` TEXT,
    `Product Name` VARCHAR(255),
    `Product Price` DECIMAL(12,2),
    `Product Status` INT,
    `shipping date (DateOrders)` VARCHAR(50),
    `Shipping Mode` VARCHAR(100)
);
LOAD DATA LOCAL INFILE '/path/to/DataCoSupplyChainDataset.csv'
INTO TABLE raw_supply_chain
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;