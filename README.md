# TRANSLATIONS - Database
Versioned database schema.
* It is necessary to update *liquibase.properties* and *liquibase.h2.properties* 
  and insert correct credentials. Do not forget change URL address to current database.

### Create PostgreSQL database schema
* **lb_install.bat** - create PostgreSQL database schema
* **lb_insert.bat** - insert data into database
* **lb_rollback.bat** - revert database schema to specific version

### Create H2 database for testing
* **lb_install_h2.bat** - create H2 database schema
* **lb_test.bat** - run tests
* **lb_rollback_h2.bat** - revert database schema to specific version

### Jenkins auto install
* **lb_autoinstall_jenkins.bat** - script allows automatic installation of database schema on Jenkins server.
  
