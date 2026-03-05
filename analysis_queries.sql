-- =====================================================
-- Analyse du marché de la livraison de repas
-- Dataset : food_delivery
-- =====================================================


-- 1️⃣ Nombre de commandes par plateforme

SELECT
  merchant_name,
  COUNT(id_order) AS total_commandes
FROM `food_delivery.orders`
GROUP BY merchant_name
ORDER BY total_commandes DESC;


-- 2️⃣ Top 10 catégories de restaurants

SELECT
  seller_category_name,
  COUNT(id_order) AS total_commandes
FROM `food_delivery.orders`
GROUP BY seller_category_name
ORDER BY total_commandes DESC
LIMIT 10;


-- 3️⃣ Panier moyen par catégorie

SELECT
  seller_category_name,
  AVG(order_total_paid) AS panier_moyen
FROM `food_delivery.orders`
GROUP BY seller_category_name
ORDER BY panier_moyen DESC;


-- 4️⃣ Frais de livraison moyens par plateforme

SELECT
  merchant_name,
  AVG(order_delivery_fee) AS frais_livraison_moyens
FROM `food_delivery.orders`
GROUP BY merchant_name
ORDER BY frais_livraison_moyens DESC;


-- 5️⃣ Volume de commandes et panier moyen (pour analyse des opportunités)

SELECT
  seller_category_name,
  COUNT(id_order) AS volume_commandes,
  AVG(order_total_paid) AS panier_moyen
FROM `food_delivery.orders`
GROUP BY seller_category_name
ORDER BY volume_commandes DESC;
