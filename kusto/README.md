# Hello World in Multiple Languages Extravaganza: Kusto
Hello world project extravaganza, the Kusto Query Language (KQL) version.
## Synopsis
This repository contains a version of "Hello World" programs written in Kusto;Kusto Query Language (KQL), is a query language designed for Azure Data Explorer and other data services in the Azure ecosystem. It is not a general purpouse programming language, it is used for querying large datasets and analyzing log data. So this is an unconventional use of Kusto, and this query is overly complex for educational purposes only; indeed this is part of a fun and educational project that showcases how to print "Hello World" in different programming languages. The goal is to have a "Hello World" program in every programming language. This project is inspired by the [GitHub Hello World](https://docs.github.com/en/get-started/quickstart/hello-world) project.
 
## check out the code
To get started, clone this repository to your local machine:
```bash
git clone https://github.com/silviotorre/helloworld.git
```
## Getting Started
To run the "Hello World" program navigate to the project directory and run the program. Follow the instructions below to run the "Hello World" [Kusto](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/) query. 
Some info: A Kusto query is a read-only request to process data and return results. The request is stated in plain text, using a data-flow model that is easy to read, author, and automate. Kusto queries are made of one or more query statements. Code is provided in hello_world.kql (Kusto Query Language) or hello_world.csl (Cougar Query Language).

- Log in to the Azure portal: [https://portal.azure.com/].
- Go to your Azure Data Explorer cluster, or create one if you don't have one already.
- In the Azure Data Explorer Web UI, open the query editor.
- import or paste the query code from the file hello_world.kql or hello_world.csl in the query editor.
- Click "Run" to execute the query.

## Azure data studio
Azure Data Studio is a cross-platform database tool for data professionals using the Microsoft family of on-premises and cloud data platforms on Windows, MacOS, and Linux. To run the "Hello World" program in Azure Data Studio follow the instructions below:
- Download and install Azure Data Studio: [https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15].
- Open Azure Data Studio.
- Connect to your Azure Data Explorer cluster.
- Open a new query window.
- import or paste the query from the file hello_world.kql or hello_world.csl in the query editor.
- Click "Run" to execute the query.


## tasks
- [x]  basic "Hello World" command-line batch program
- [x]  Advanced "Hello World" command-line batch program char by char

# Extra Credit
- [ ] Add encoding to the output

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