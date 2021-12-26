SELECT count(*)
from (select count("ДАТА_РОЖДЕНИЯ") as quantity from "Н_ЛЮДИ" group by "ДАТА_РОЖДЕНИЯ") as counting;