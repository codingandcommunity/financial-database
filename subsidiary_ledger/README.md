# Subsidiary Ledgers

Contains multiple databases, each corresponding to a subsidiary ledger. A subsidiary ledger is a group of accounts whose total balance is equal to the balance of an account in the general ledger. 

All subsidiary ledger databases have the same general format.

## ER Diagram

-- image goes here --

## Avaliable Ledgers

### Cash

Contains all accounts contains a cash balance.

### Accounts Payable

Contains accounts for all vendors previously ordered from.

### Accounts Receivable

Contains an account for all parties owning the club any money.

## Tables & Attributes

### chart_of_accounts

#### Attributes

* **acct_number** : a unique three-digit number associated with an account
* **name** : name of the account

### account

#### Attributes

* **acct_number** : a unique three-digit number associated with an account
* **balance** : current account balance
* **balCode** : CR (Credit balance), DR (Debit balance)

