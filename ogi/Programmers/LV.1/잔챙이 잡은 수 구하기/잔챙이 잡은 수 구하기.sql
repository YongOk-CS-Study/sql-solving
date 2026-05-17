select count(*) as FISH_COUNT
from FISH_INFO
where LENGTH is Null;

---
select SUM(
    CASE
        WHEN LENGTH IS NULL THEN 1
        ELSE 0
    END
) AS FISH_COUNT
from FISH_INFO;