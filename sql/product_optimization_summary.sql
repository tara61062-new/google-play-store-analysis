use google_play_store;

-- 3. How does an app’s file size impact its downloads and ratings?

SELECT 
    CASE 
        WHEN size_in_mb < 10 THEN 'Lightweight (<10MB)'
        WHEN size_in_mb BETWEEN 10 AND 50 THEN 'Midrange (10-50MB)'
        ELSE 'Heavy (>50MB)'
    END AS Size_Tier,
    COUNT(app) AS Total_Apps,
    ROUND(AVG(rating), 2) AS Avg_Rating,
    ROUND(AVG(cleaned_install), 0) AS Avg_Installs
FROM apps
GROUP BY Size_Tier
ORDER BY Avg_Installs DESC;