DROP DATABASE IF EXISTS ar_ledger;
CREATE DATABASE ar_ledger;

DROP USER IF EXISTS ar_ledger;
CREATE USER ar_ledger WITH PASSWORD 'ar_ledger';

GRANT ALL PRIVILEGES ON DATABASE ar_ledger TO ar_ledger;
GRANT postgres TO ar_ledger;
