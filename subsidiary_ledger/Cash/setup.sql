DROP DATABASE IF EXISTS cash_ledger;
CREATE DATABASE cash_ledger;

DROP USER IF EXISTS;
CREATE USER cash_ledger WITH PASSWORD 'cash_ledger';

GRANT ALL PRIVILEGES ON DATABASE cash_ledger TO cash_ledger;
GRANT postgres TO cash_ledger;
