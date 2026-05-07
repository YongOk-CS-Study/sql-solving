select ID, LENGTH
from FISH_INFO
where LENGTH IS NOT NULL
order by LENGTH DESC, ID ASC
limit 10;