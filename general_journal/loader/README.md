# Set Up

Instructions for setting up the databases. 

**NOTE**: the instructions below assume that you have downloaded the repository and have postgreSQL installed.

1. Open a terminal and navigate to your postgres account.
   
   `$ sudo -u postgres psql`
      
2. Run `postgres=# \i <project directory>/loader/setup.sql`

3. Connect to a database
  
   `postgres=# \c general_journal`
   
4. Create tables

   `lapd=# \i <project directory>/general_journal/schema.sql`
