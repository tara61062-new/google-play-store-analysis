use google_play_store;

-- 2. Does a paid apps secure higher user ratings and better engagement than a free model?

SELECT 
    type,
    COUNT(app) AS Total_Apps,
    ROUND(AVG(rating), 2) AS Avg_Rating,
    ROUND(AVG(reviews), 0) AS Avg_Reviews,
    ROUND(AVG(cleaned_install), 0) AS Avg_Installs
FROM apps
GROUP BY type;
