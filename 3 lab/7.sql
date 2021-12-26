select *
from "Н_УЧЕНИКИ"
         join "Н_ЛЮДИ" on "Н_ЛЮДИ"."ИД" = "Н_УЧЕНИКИ"."ЧЛВК_ИД"
where "ЧЛВК_ИД" in (select "ИД"
                    from "Н_ЛЮДИ"
                    where "ОТЧЕСТВО" in (select "ОТЧЕСТВО" from "Н_ЛЮДИ" group by "ОТЧЕСТВО" having count("ОТЧЕСТВО") > 1)
                      and "ИД" in (select "ИД" from "Н_ЛЮДИ" group by "ИД" having count("ИД") = 1));

