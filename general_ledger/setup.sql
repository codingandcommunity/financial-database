DROP DATABASE IF EXISTS general_ledger;
CREATE DATABASE general_ledger;

DROP USER IF EXISTS general_ledger;
CREATE USER general_ledger WITH PASSWORD 'general_ledger';

GRANT ALL PRIVILEGES ON DATABASE general_ledger TO general_ledger;
GRANT postgres TO general_ledger;
