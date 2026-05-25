select COUNT(ID) as FISH_COUNT, name.FISH_NAME
from FISH_INFO as info
join FISH_NAME_INFO as name
on name.FISH_TYPE = info.FISH_TYPE
group by name.FISH_TYPE 
order by FISH_COUNT DESC;