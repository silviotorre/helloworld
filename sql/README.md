# Hello World in Multiple Languages Extravaganza: Sql
Hello world project extravaganza, the Sql version.
## Synopsis
This repository contains a version of "Hello World" statements written in Sql;

indeed this is part of a fun and educational project that showcases how to print "Hello World" in different programming languages. The goal is to have a "Hello World" program in every programming language. This project is inspired by the [GitHub Hello World](https://docs.github.com/en/get-started/quickstart/hello-world) project and you can found it in [Hello World Extravaganza website](https://silviotorre.github.io/helloworld/).
 
## check out the code
To get started, clone this repository to your local machine:
```bash
git clone https://github.com/silviotorre/helloworld.git
```
## Prerequisites
To run the "Hello World" statement _you need to have a Sql database installed on your machine_. You can use [MySql](https://www.mysql.com) or [PostgreSQL](https://www.postgresql.org) or any other Sql database.

**SQL** stands for **Structured Query Language** and is a standard language for storing, manipulating and retrieving data in databases. Our "Hello World" statement will use the [MySql](https://www.mysql.com) database.
Info about Sql can be found at [Sql Wikipedia](https://en.wikipedia.org/wiki/SQL) and [Sql Tutorial](https://www.w3schools.com/sql/default.asp). 

The standard of Sql language is defined by the [ISO/IEC 9075](https://en.wikipedia.org/wiki/SQL:2016) standard.

## Getting Started
To run the "Hello World" statement navigate to the project directory and run the statement. Follow the instructions below to run the "Hello World".

- Open a terminal or command prompt: Launch your terminal or command prompt application.
- Navigate to the Sql directory.
- run the following command to execute the Sql statement like in [MySql](https://www.mysql.com) example below

```bash
mysql -u root -p < helloworld.sql
```

This was an example of a more complex "Hello, World!" in Sql using a simple **DML statement**: In SQL DML is Data Manipulation Language and is used to retrieve, store, modify, delete, insert and update data in database. DML statements are SELECT, INSERT, UPDATE and DELETE.


## Advanced "Hello World" Sql statements

**Using CTE**
This one is made using **Common Table Expression (CTE)** and is a bit more complex than the previous one. A CTE is a temporary result set that is defined within the execution scope of a single SQL statement. A CTE is similar to a derived table in that it is not stored as an object and lasts only for the duration of the query. Unlike a derived table, a CTE can be self-referencing and can be referenced multiple times in the same query.

```bash
mysql -u root -p < helloworld2.sql
```

**Using DDL**
A bit more complex example of "Hello, World!" in Sql using a simple **DDL statement**: In SQL DDL is Data Definition Language and is used to create and modify the structure of database objects in Sql. DDL statements are CREATE, ALTER, DROP, RENAME and TRUNCATE.

```bash
mysql -u root -p < helloDML.sql
```

## tasks
- [x]  basic "Hello World"  Sql statement using select. Select is a DML statement and is used to query data in a database. 
- [x]  Advanced "Hello World" Sql statement

# Extra Credit
- [x] Add a flexibile example to make an advanced statement
- [x] Add a DDL example to the statement. DDL is Data Definition Language and is used to create and modify the structure of database objects in Sql. DDL statements are CREATE, ALTER, DROP, RENAME and TRUNCATE.

## Contributing
Feel free to contribute your own "Hello World" programs to this repository. Simply create a new directory with the name of the programming language and add a file named hello-world.<extension> with your implementation. Don't forget to update the README file to include your contribution!

## Contributors
- Silvio Torre (silviotorre)  - creator, maintainer

## License
- This project is licensed under the MIT License - see the [MIT](https://choosealicense.com/licenses/mit/) file for details

## References
- [GitHub Hello World](https://docs.github.com/en/get-started/quickstart/hello-world)

## Home of this project
- [GitHub Hello World Extravaganza](https://github.com/silviotorre/helloworld/)

Enjoy and happy coding!