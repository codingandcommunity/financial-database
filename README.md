# financial-database
Financial database code for club transactions and bookkeeping.

## Purpose

The financial database will allow fututre treasurers to easily view and query transactions as the club's financial activity grows.

## Database Structure

![Database Structure](/images/database-diagram.jpg)

The system consists of four innterconnected sections. ERDs and further details on each database can be found in their respective folders.

### Transactions

The master database that holds information on all club transactions, also used for transaction analysis.

### General Journal

All transactions are required to be recorded in the general journal as an entry and two or more debit or credit transactions.

### General Ledger

The general ledger holds all general accounts, all journal entries are immediately posted to the general ledger once they are recorded to the general journal.

### Sudsidiary Ledgers

Similar structure as the general ledger. Each susidiary account recieves its own database. 

Current Sudsidiary Ledgers:

1. Cash
2. Accounts Payable
3. Accounts Receivable

## Disclaimer

This repository contains **only code for database set up and data loading**. Official club transactions should **never** be posted to a public repository. 
