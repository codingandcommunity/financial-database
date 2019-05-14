# Set Up

Instructions for setting up the databases. 

**NOTE**: the instructions below assume that you have downloaded the repository and have postgreSQL installed.

1. Open a terminal and navigate to your postgres account.
   
   `$ sudo -u postgres psql`
      
2. Run `postgres=# \i <project directory>/loader/setup.sql`

3. Connect to a database
  
   `postgres=# \c <name of user>`
   
4. Create tables

   `lapd=# \i <project directory>/<database*>/schema.sql`
  
    *database can be `general_ledger`, `general_ledger`, `subsidiary_ledgers/AP`, `subsidiary_ledgers/AR`, or `subsidiary_ledgers/Cash`
