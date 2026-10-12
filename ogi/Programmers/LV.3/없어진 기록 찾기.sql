select ou.ANIMAL_ID, ou.NAME
from ANIMAL_INS as ins
right outer join ANIMAL_OUTS as ou
on ins.ANIMAL_ID = ou.ANIMAL_ID
where ins.ANIMAL_ID is null
order by ou.ANIMAL_ID;
