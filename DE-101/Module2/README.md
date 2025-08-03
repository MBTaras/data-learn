# Practice Module 2

## Установка Postgres

✅ База данных Postgres была установленна

❔При установке возникла проблема, с отсутствием доступа к базе. Так как при установке БД обычно предлагает создать пароль, в моем случае не было окна с созданием пароля, сразу происходила установка. Данную проблему удалось решить с помощью документации, где было указано, что при отсутсвии запроса на создания пароля, устанавливается базовый пароль. 

✅ После указания базового пароля, доступ был получен. 

## Отработка практической часть из модуля 1 с помощью SQL 

#### Создание и загрузка таблиц
Для создания таблиц использовался код [create_tables.sql](#)
все данные были загружены по примеру [DE - 101 Lab 2.1](https://github.com/Data-Learn/data-engineering/tree/master/DE-101%20Modules/Module02/DE%20-%20101%20Lab%202.1)

#### Аналитика с помощью SQL

Осневные цели и показатели для аналитики:

1. Overview
- Total Sales
- Total Profit
- Profit Ratio
- Profit per Order
- Sales per Customer
- Avg. Discount
- Monthly Sales by Segment ( табличка и график)
- Monthly Sales by Product Category (табличка и график)

2. Customer Analysis
- Sales and Profit by Customer
- Customer Ranking
- Sales per region

##### 📌 Весь SQL код [analysis_queries.sql](#)