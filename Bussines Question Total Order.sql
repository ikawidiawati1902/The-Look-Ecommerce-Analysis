# 5 Country dengan jumlah order terbesar?

select 
u.country,
COUNT(DISTINCT(oi.order_id)) as total_order
FROM bigquery-public-data.thelook_ecommerce.users as u 
INNER JOIN bigquery-public-data.thelook_ecommerce.order_items as oi on u.id = oi.user_id
WHERE oi.status = 'Complete'
GROUP BY u.country 
ORDER BY total_order DESC
LIMIT 5;

