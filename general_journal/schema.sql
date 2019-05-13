--
-- GENERAL JOURNAL SCHEMA
--

--
-- Name: entry
-- Relation: entry(ID, date, total)
-- Keys: ID
-- FD(s): ID -> date, total
--
-- Attributes:
-- ID - user defined ID
-- date - date of the entry
-- total - entry amount in USD
--
CREATE TABLE entry (
  ID VARCHAR(63) NOT NULL,
  date DATE NOT NULL,
  total FLOAT NOT NULL,

  CONSTRAINT pk_entry PRIMARY KEY(ID),

  CONSTRAINT chk_total CHECK (total > 0)
);

--
-- Name: transfer
-- Relation: transfer(entry_id, amount, PR, code)
-- Keys: None
-- FD(s): None
--
-- Attributes:
-- entry_id - ID describing which entry the transfer belongs to
-- amount - transfer amount in USD
-- PR - account debited or credited in general ledger
-- code - DR (debit), CR (credit)
--
CREATE TABLE transfer (
  entry_id VARCHAR(127) NOT NULL,
  amount FLOAT NOT NULL,
  PR VARCHAR(3) NOT NULL,
  code VARCHAR(2) NOT NULL,

  CONSTRAINT fk_entry_id FOREIGN KEY (entry_id) REFERENCES entry(ID),

  CONSTRAINT chk_amount CHECK (amount > 0),
  CONSTRAINT chk_PR CHECK (PR > 0 AND PR < 1000),
  CONSTRAINT chk_code CHECK (code = "CR" OR code = "DR")
);

