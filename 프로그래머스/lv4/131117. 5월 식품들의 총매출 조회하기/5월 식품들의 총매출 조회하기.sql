SELECT p.PRODUCT_ID, PRODUCT_NAME, SUM(AMOUNT * PRICE) as TOTAL_SALES
FROM FOOD_PRODUCT p JOIN FOOD_ORDER o ON p.PRODUCT_ID = o.PRODUCT_ID
WHERE DATE_FORMAT(PRODUCE_DATE, "%Y-%m") = "2022-05" 
GROUP BY PRODUCT_ID
ORDER BY TOTAL_SALES DESC, PRODUCT_ID asc