USE supply_chain_analytics;

SELECT COUNT(*) AS missing_order_ids
FROM supply_chain_clean
WHERE `Order Id` IS NULL;