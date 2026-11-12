SELECT
    `Category Name`,
    ROUND(SUM(`Sales`), 2) AS total_sales,
    ROUND(SUM(`Order Profit Per Order`), 2) AS total_profit,
    COUNT(DISTINCT `Order Id`) AS total_orders
FROM supply_chain_clean
GROUP BY `Category Name`
ORDER BY total_sales DESC;