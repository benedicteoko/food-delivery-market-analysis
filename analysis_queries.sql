SELECT
  seller_category_name,
  COUNT(id_order) AS total_orders
FROM `food_delivery.orders`
GROUP BY seller_category_name
ORDER BY total_orders DESC
LIMIT 10;
