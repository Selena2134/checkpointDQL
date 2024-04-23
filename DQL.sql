

SELECT * FROM clients;


SELECT nom_du_produit, catégorie FROM produits WHERE prix BETWEEN 5000 AND 10000;


SELECT * FROM produits ORDER BY prix DESC;


SELECT COUNT(*) AS total_orders,
       AVG(montant) AS average_amount,
       MAX(montant) AS maximum_total_amount,
       MIN(montant) AS minimum_total_amount,
       product_id,
       COUNT(*) AS number_of_orders_per_product
FROM commandes
GROUP BY product_id;


SELECT customer_id FROM commandes GROUP BY customer_id HAVING COUNT(*) > 2;


SELECT EXTRACT(MONTH FROM date_commande) AS month, COUNT(*) AS number_of_orders
FROM commandes
WHERE EXTRACT(YEAR FROM date_commande) = 2020
GROUP BY EXTRACT(MONTH FROM date_commande);


SELECT produits.nom_du_produit, clients.nom_client, commandes.date_commande
FROM commandes
JOIN produits ON commandes.product_id = produits.product_id
JOIN clients ON commandes.customer_id = clients.customer_id;


SELECT * FROM commandes WHERE date_commande >= CURRENT_DATE - INTERVAL '3 months';


SELECT customer_id FROM clients WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM commandes);

