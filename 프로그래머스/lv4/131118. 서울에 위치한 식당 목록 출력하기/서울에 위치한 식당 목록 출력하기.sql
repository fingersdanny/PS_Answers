SELECT i.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, ROUND(SUM(REVIEW_SCORE) / COUNT(REVIEW_SCORE), 2) as SCORE
FROM REST_INFO i left join REST_REVIEW r on i.rest_id = r.rest_id
WHERE ADDRESS LIKE "서울%"
GROUP BY REST_ID
HAVING SCORE IS NOT NULL
ORDER BY SCORE DESC, FAVORITES DESC

# SELECT i.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, ROUND(AVG(REVIEW_SCORE), 2) as SCORE
# FROM REST_REVIEW r right JOIN REST_INFO i on r.REST_ID = i.REST_ID
# WHERE ADDRESS LIKE "%서울%"
# GROUP BY REST_ID
# ORDER BY SCORE DESC, FAVORITES DESC