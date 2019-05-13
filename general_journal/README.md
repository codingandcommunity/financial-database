# General Journal

All transactions are **required** to be recorded to the general journal before posting to the general ledger and subsequent subsidiary ledgders if needed.

## ER Diagram

![General Journal ERD](/images/general-journal-erd.jpg)

## Tables & Attributes

### entry

Records the total debited and credited account transfers from a single transaction.

#### Attributes

* ID : a unique treasurer defined ID for the entry. This ID can be arbitrary but must be unique
* date : date of the entry
* amount : records the initial amount of the entry in USD

### transfer

A debit or credit amount from a specified account, belongs to a certain entry. Each **entry** must have at **at least two** rows in the transfer table.

#### Attributes

* entry_id : the unique ID for the entry the transfer belongs
* amount : amount debited or credited
* PR : account number
* code : DR (debit), or CR (credit)

## Requirements

1. Amount is in US Dollars.
2. At least two accounts must be noted as debited or credited.
3. Must have a unqiue ID.
4. Accounts must be valid (i.e. have an account number in the general ledger's chart of accounts).

Checks will be in place during data loading to ensure all requirements are met before recording a journal entry. Members can read more about requirements for journal entries in the coding&&community financial handbook.

