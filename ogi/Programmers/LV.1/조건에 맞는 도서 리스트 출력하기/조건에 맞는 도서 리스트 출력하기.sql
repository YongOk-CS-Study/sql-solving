select BOOK_ID, PUBLISHED_DATE
from Book
where PUBLISHED_DATE between '2021-01-01' and '2021-12-31'
    AND CATEGORY = '인문'
group by PUBLISHED_DATE;
