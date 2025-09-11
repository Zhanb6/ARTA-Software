# ARTA-Software — Business Analytics

## About the company & project
ARTA-Software — внутренний аналитический отдел. Проект: **College Analytics** — анализ данных колледжа (студенты, курсы, зачисления, посещаемость, оценки, отзывы) в MySQL с возможностью JOIN/AGG запросов.

## Dataset & schema
База -> `college_db` содержит таблицы:
- `students` (500) 
- `courses` (50)
- `enrollments` (500)
- `attendance` (1000)
- `grades` (1000)
- `feedback` (500)


## Launch
1.create DB
```sql
CREATE DATABASE college_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
2.Run schema (Workbench → open sql/schema.sql → Run).
3.Import CSV (Workbench → Table Data Import Wizard) в существующие таблицы
Import CSV <button> Table Data Import Wizard
``` 
## Tools (used)
- `VsCode`
- `MySQL`
- `MySQL Workbench`
 

## Screenshots
<img width="1028" height="676" alt="image" src="https://github.com/user-attachments/assets/63199c88-e09f-45f7-a620-62c41c7c0704" />
<img width="963" height="835" alt="image" src="https://github.com/user-attachments/assets/2ab682c6-b766-4b74-b3c2-77be23d7158a" />
<img width="949" height="831" alt="image" src="https://github.com/user-attachments/assets/50b4e705-684f-4159-936d-323476355abb" />

