--
-- GENERAL JOURNAL SCHEMA
--

DROP TABLE IF EXISTS entry CASCADE;
DROP TABLE IF EXISTS transaction CASCADE;

--
-- Name: entry
-- Relation: entry(ID, date, total)
-- Keys: ID
-- FD(s): ID -> date, total
--
-- Attributes:
-- ID - user defined ID describing the reason for the entry
-- date - date of the entry
-- total - entry amount in USD
--
CREATE TABLE entry (
  ID VARCHAR(127) PRIMARY KEY,
  date DATE,
  total FLOAT CHECK (total > 0)
);

--
-- Name: transaction
-- Relation: transaction(entry_id, amount, PR)
-- Keys: entry_id
-- FD(s): entry_id -> amount, PR
--
-- Attributes:
-- entry_id - ID describing which entry the transaction belongs to
-- amount - transaction amount in USD
-- PR - account debited or credited in general ledger
-- code - DR (debit), CR (credit)
--
CREATE TABLE transaction (
  entry_id VARCHAR(127),
  amount FLOAT CHECK (amount > 0),
  PR VARCHAR(3),
  code VARCHAR(2)
);

ALTER TABLE transaction
  ADD CONSTRAINT belongs_to_entry_fk FOREIGN KEY
  (entry_id) REFERENCES entry(ID)
  ON UPDATE CASCADE
  ON DELETE SET NULL;
