SELECT CAR_ID, IF(AVAILABILITY IS NULL, "대여 가능", AVAILABILITY) AS AVAILABILITY FROM (SELECT h.CAR_ID, AVAILABILITY
FROM
CAR_RENTAL_COMPANY_RENTAL_HISTORY h LEFT JOIN
(SELECT CAR_ID, IF (DATE_FORMAT(START_DATE, "%Y-%m-%d") > "2022-10-16" OR DATE_FORMAT(END_DATE, "%Y-%m-%d") < "2022-10-16", "대여 가능", "대여중") AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY h
 WHERE IF (DATE_FORMAT(START_DATE, "%Y-%m-%d") > "2022-10-16" OR DATE_FORMAT(END_DATE, "%Y-%m-%d") < "2022-10-16", "대여 가능", "대여중") = "대여중"
ORDER BY CAR_ID DESC, AVAILABILITY DESC) AS t
ON h.CAR_ID = t.CAR_ID
GROUP BY h.CAR_ID) as p
ORDER BY CAR_ID DESC