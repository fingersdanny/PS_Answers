SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, case when STATUS = 'DONE' then '거래완료' when status = 'SALE' then '판매중' ELSE '예약중' end as STATUS
FROM USED_GOODS_BOARD
WHERE DATE_FORMAT(CREATED_DATE, "%Y-%m-%d") = '2022-10-05'
ORDER BY BOARD_ID desc