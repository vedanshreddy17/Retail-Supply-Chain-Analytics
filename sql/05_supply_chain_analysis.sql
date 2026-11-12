SELECT
    `Delivery Status`,
    COUNT(*) AS order_items,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM supply_chain_clean),
        2
    ) AS percentage
FROM supply_chain_clean
GROUP BY `Delivery Status`
ORDER BY order_items DESC;

SELECT
    `Shipping Mode`,
    COUNT(*) AS order_items,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM supply_chain_clean),
        2
    ) AS percentage,
    ROUND(AVG(`Days for shipping (real)`), 2) AS avg_actual_shipping_days,
    ROUND(AVG(`Days for shipment (scheduled)`), 2) AS avg_scheduled_shipping_days
FROM supply_chain_clean
GROUP BY `Shipping Mode`
ORDER BY order_items DESC;

SELECT
    `Shipping Mode`,
    COUNT(*) AS total_order_items,
    SUM(CASE
        WHEN `Delivery Status` = 'Late delivery' THEN 1
        ELSE 0
    END) AS late_deliveries,
    ROUND(
        SUM(CASE
            WHEN `Delivery Status` = 'Late delivery' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS late_delivery_rate
FROM supply_chain_clean
GROUP BY `Shipping Mode`
ORDER BY late_delivery_rate DESC;

SELECT
    `Shipping Mode`,
    ROUND(AVG(`Days for shipping (real)`), 2) AS avg_actual_days,
    ROUND(AVG(`Days for shipment (scheduled)`), 2) AS avg_scheduled_days,
    ROUND(
        AVG(`Days for shipping (real)`)
        - AVG(`Days for shipment (scheduled)`),
        2
    ) AS avg_delay_days
FROM supply_chain_clean
GROUP BY `Shipping Mode`
ORDER BY avg_delay_days DESC;