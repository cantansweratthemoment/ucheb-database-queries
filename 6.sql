select "Н_УЧЕНИКИ"."ГРУППА",
       "Н_ЛЮДИ"."ИД",
       "Н_ЛЮДИ"."ФАМИЛИЯ",
       "Н_ЛЮДИ"."ИМЯ",
       "Н_ЛЮДИ"."ОТЧЕСТВО",
       "Н_УЧЕНИКИ"."П_ПРКОК_ИД",
       "Н_УЧЕНИКИ"."СОСТОЯНИЕ"
from "Н_УЧЕНИКИ"
         join "Н_ЛЮДИ" on "Н_ЛЮДИ"."ИД" = "Н_УЧЕНИКИ"."ЧЛВК_ИД"
         join "Н_ПЛАНЫ" on "Н_УЧЕНИКИ"."ПЛАН_ИД" = "Н_ПЛАНЫ"."ИД"
         join "Н_ФОРМЫ_ОБУЧЕНИЯ" on "Н_ПЛАНЫ"."ФО_ИД" = "Н_ФОРМЫ_ОБУЧЕНИЯ"."ИД"
         join "Н_НАПРАВЛЕНИЯ_СПЕЦИАЛ" on "Н_ПЛАНЫ"."НАПС_ИД" = "Н_НАПРАВЛЕНИЯ_СПЕЦИАЛ"."ИД"
         join "Н_НАПР_СПЕЦ" on "Н_НАПРАВЛЕНИЯ_СПЕЦИАЛ"."НС_ИД" = "Н_НАПР_СПЕЦ"."ИД"
where "Н_УЧЕНИКИ"."НАЧАЛО" > '2005-09-01'
  and ("Н_ФОРМЫ_ОБУЧЕНИЯ"."НАИМЕНОВАНИЕ" = 'Очная' or "Н_ФОРМЫ_ОБУЧЕНИЯ"."НАИМЕНОВАНИЕ" = 'Заочная')
  and "Н_НАПР_СПЕЦ"."НАИМЕНОВАНИЕ" = 'Программная инженерия';
