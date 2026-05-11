SELECT b.BOOK_ID, a.AUTHOR_NAME, b.PUBLISHED_DATE
from BOOK as b
join AUTHOR as a
    on a.AUTHOR_ID = b.AUTHOR_ID 
where b.CATEGORY = '경제'
order by PUBLISHED_DATE;