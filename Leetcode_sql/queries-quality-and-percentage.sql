SELECT 
     query_name, 
     ROUND(SUM(rating * 1.0/ position) / count(*), 2) AS quality,
     ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 1.0 / count(*) * 100, 2) AS poor_query_percentage
FROM 
    queries
WHERE query_name is not null
GROUP BY 
    query_name 