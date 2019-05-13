--
-- General Ledger
--

--
-- Name: chart_of_accounts
-- Relation: chart_of_accounts(acct_number, name)
-- Keys: acct_number
-- FD(s): acct_number -> name
--
-- Attributes:
--  acct_number - a unique three-digit number associated with an account
--  name - name of the account
--
CREATE TABLE chart_of_accounts(
  acct_number INT NOT NULL,
  name VARCHAR(255) NOT NULL,

  CONSTRAINT pk_acct PRIMARY KEY(acct_number),
  CONSTRAINT chk_acct_number CHECK (acct_number > 0 AND acct_number < 1000)
);

--
-- Name: account
-- Relation: account(acct_number, balance, balCode, subCode)
-- Keys: acct_number
-- FD(s): acct_number -> balance, balCode, subCode
--
-- Attributes:
--  acct_number - a unique three-digit number associated with an account
--  balance - current account balance
--  balCode - CR (Credit balance), DR (Debit balance)
--  subCode - AP (Accounts Payable), AR (Accounts Receivable), C (Cash), X (None)
--
CREATE TABLE account(
  acct_number INT NOT NULL,
  balance FLOAT DEFAULT 0,
  balCode VARCHAR(2) NOT NULL,
  subCode VARCHAR(2) NOT NULL DEFAULT 'X',

  CONSTRAINT pk_acct_number PRIMARY KEY(acct_number),
  CONSTRAINT chk_balance CHECK(balance > 0),
  CONSTRAINT chk_balCode CHECK(balCode = 'CR' OR balCode = 'DR'),
  CONSTRAINT chk_subCode CHECK(subCode = 'AP' OR subCode = 'AR' OR subCode = 'C' OR subCode = 'X')
);

--
-- Name: transfer
-- Relation: transfer(acct_number, date, amount, date)
-- Keys: None
-- FD(s): None
--
-- Attributes:
--  acct_number - a unique three-digit number associated with an account
--  date : date of transfer
--  amount : transfer amount
--  PR : account number for subsidiary ledger chart
--
CREATE TABLE transfer(
  acct_number INT NOT NULL,
  date DATE NOT NULL,
  amount FLOAT NOT NULL,
  PR INT NOT NULL,

  CONSTRAINT fk_account_transfer FOREIGN KEY (acct_number) REFERENCES account(acct_number),
  CONSTRAINT chk_amount CHECK(amount > 0),
  CONSTRAINT chk_PR CHECK(PR > 99 AND PR < 1000)
);


