### Global Variable Web Application

### Introduction
-----------------------
Global Variable web application provides CRUD actions on a global variable
database. This application should be used in conjunction with Silver Fabric Global Variable Provider.

### Web Application Framework
-------------------------------------------
Global Variable web application is a Java web application based on [Spring Roo] framework. [Spring Roo Tutorial] is a very good
introduction to Sprng Roo framework.

###  Download and Install Spring Roo
------------------------------------------------
You must download and install  [Spring Roo] on your build machine.

### Configure MySQL Database Properties
-------------------------------------------------------
Before you build this application, you must configure  MySQL global variable database properties in `src/resources/META-INF/spring/database.properties` file.
If needed, the database tables are automatically created by this application. 

### Configure Security LDAP
----------------------------------------
To secure the application, you must configure LDAP settings in `src/resources/META-INF/spring/applicationContext-security.xml`.

### Building Application
------------------------------

To build this application, start [Spring Roo] shell in the project directory. In ]Spring Roo] shell, run
`perform package` command. This build command will produce a web application WAR file under `target`
project directory. Before deploying the WAR file to a supported application server, we recommend renaming it to
`globalvar.war`, although you may choose any name you prefer. 

Deploy the web application WAR in a web application server supported by [Spring Roo]. 
This web application was developed and tested using Apache Tomcat application server.

[Spring Roo]:<http://projects.spring.io/spring-roo/>
[Spring Roo Tutorial]:<http://docs.spring.io/spring-roo/reference/html/beginning.html>