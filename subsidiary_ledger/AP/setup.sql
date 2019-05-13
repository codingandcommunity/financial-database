DROP DATABASE IF EXISTS ap_ledger;
CREATE DATABASE ap_ledger;

DROP USER IF EXISTS ap_ledger;
CREATE USER ap_ledger WITH PASSWORD 'ap_ledger';

GRANT ALL PRIVILEGES ON DATABASE ap_ledger TO ap_ledger;
GRANT postgres TO ap_ledger;
