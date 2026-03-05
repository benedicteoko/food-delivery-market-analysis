-- =====================================================
-- Analyse du marché de la livraison de repas
-- Dataset : livraison_de_repas
-- =====================================================


-- 1️⃣ Nombre de commandes par plateforme
-- Objectif : identifier la plateforme dominante

SELECT
  nom_du_marchand,
  COUNT(id_order) AS total_commandes
FROM `commandes_de_livraison_de_nourriture`
GROUP BY nom_du_marchand
ORDER BY total_commandes DESC;



-- 2️⃣ Top catégories de restaurants
-- Objectif : identifier les cuisines les plus populaires

SELECT
  seller_category_name,
  COUNT(id_order) AS total_commandes
FROM `commandes_de_livraison_de_nourriture`
GROUP BY seller_category_name
ORDER BY total_commandes DESC
LIMIT 10;


-- 3️⃣ Panier moyen par catégorie
-- Objectif : identifier les cuisines à forte valeur

SELECT
  seller_category_name,
  AVG(order_total_paid) AS panier_moyen
FROM `commandes_de_livraison_de_nourriture`
GROUP BY seller_category_name
ORDER BY panier_moyen DESC;
