# General Ledger

Contains a record of all club accounts.

## ER Diagram

![General Ledger ERD](/images/general-ledger-erd.jpg)

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
* **subCode** : AP (Accounts Payable), AR (Accounts Receivable), C (Cash), X (None)

### transfer

#### Attributes

* **acct_number** : a unique three-digit number associated with an account
* **date** : date of transfer
* **amount** : transfer amount
* **PR** : account number for subsidiary ledger chart
