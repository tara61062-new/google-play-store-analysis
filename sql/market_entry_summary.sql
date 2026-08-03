use google_play_store;

-- 1. Which app categories show high user demand (high installations)?

SELECT 
    category_clean,
    COUNT(app) AS Total_Apps_Saturation,
    ROUND(AVG(cleaned_install), 0) AS Avg_Installs_Demand
FROM apps
GROUP BY category_clean
ORDER BY Total_Apps_Saturation DESC;









