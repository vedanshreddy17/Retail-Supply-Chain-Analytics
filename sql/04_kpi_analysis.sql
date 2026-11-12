SELECT
    COUNT(DISTINCT `Order Id`) AS total_orders
FROM supply_chain_clean;

SELECT
    ROUND(SUM(`Sales`), 2) AS total_sales
FROM supply_chain_clean;

SELECT
    ROUND(SUM(`Order Profit Per Order`), 2) AS total_profit
FROM supply_chain_clean;

SELECT
    COUNT(DISTINCT `Customer Id`) AS total_customers
FROM supply_chain_clean;

SELECT
    SUM(`Order Item Quantity`) AS total_quantity_sold
FROM supply_chain_clean;

SELECT
    ROUND(SUM(`Sales`) / COUNT(DISTINCT `Order Id`), 2) AS average_order_value
FROM supply_chain_clean;

SELECT
    ROUND(
        SUM(`Order Profit Per Order`) / COUNT(DISTINCT `Order Id`),
        2
    ) AS average_profit_per_order
FROM supply_chain_clean;

SELECT
    ROUND(
        100.0 * SUM(CASE WHEN `Late_delivery_risk` = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS late_delivery_rate_pct
FROM supply_chain_clean;

SELECT
    ROUND(
        AVG(DATEDIFF(`shipping_datetime`, `order_datetime`)),
        2
    ) AS avg_shipping_days
FROM supply_chain_clean;