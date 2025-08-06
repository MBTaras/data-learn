# Practice Module 2

## Установка Postgres

✅ База данных Postgres была установленна

❔При установке возникла проблема, с отсутствием доступа к базе. Так как при установке БД обычно предлагает создать пароль, в моем случае не было окна с созданием пароля, сразу происходила установка. Данную проблему удалось решить с помощью документации, где было указано, что при отсутсвии запроса на создания пароля, устанавливается базовый пароль. 

✅ После указания базового пароля, доступ был получен. 

## Отработка практической часть из модуля 1 с помощью SQL 

#### Создание и загрузка таблиц
Для создания таблиц использовался код [create_tables.sql](https://github.com/MBTaras/data-learn/blob/main/DE-101/Module2/sql_queries/create_tables.sql)

Все данные были загружены по примеру [DE - 101 Lab 2.1](https://github.com/Data-Learn/data-engineering/tree/master/DE-101%20Modules/Module02/DE%20-%20101%20Lab%202.1)

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

##### 📌 Весь SQL код [analysis_queries.sql](https://github.com/MBTaras/data-learn/blob/main/DE-101/Module2/sql_queries/analysis_queries.sql)

## Модели Данных

В ходе практики было нарисовано модель данных для файла Superstore:
- Концептуальную
- Логическую
- Физическую 

##### 📌 Концептуальная:

![Концептуальная](https://github.com/MBTaras/data-learn/blob/main/DE-101/Module2/data%20model/concept.png?raw=true)

##### 📌 Логическая:

![Логическая](https://github.com/MBTaras/data-learn/blob/main/DE-101/Module2/data%20model/logical.png?raw=true)

##### 📌 Физическая:

![Физическая](https://github.com/MBTaras/data-learn/blob/main/DE-101/Module2/data%20model/physical.png?raw=true)
