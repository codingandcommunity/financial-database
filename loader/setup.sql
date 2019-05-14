--
-- General Journal
--
DROP DATABASE IF EXISTS general_journal;
CREATE DATABASE general_journal;

DROP USER IF EXISTS general_journal;
CREATE USER general_journal WITH PASSWORD 'general_journal';

GRANT ALL PRIVILEGES ON DATABASE general_journal TO general_journal;
GRANT postgres TO general_journal;


--
-- General Ledger
--
DROP DATABASE IF EXISTS general_ledger;
CREATE DATABASE general_ledger;

DROP USER IF EXISTS general_ledger;
CREATE USER general_ledger WITH PASSWORD 'general_ledger';

GRANT ALL PRIVILEGES ON DATABASE general_ledger TO general_ledger;
GRANT postgres TO general_ledger;


--
-- Accounts Payable Ledger
--
DROP DATABASE IF EXISTS ap_ledger;
CREATE DATABASE ap_ledger;

DROP USER IF EXISTS ap_ledger;
CREATE USER ap_ledger WITH PASSWORD 'ap_ledger';

GRANT ALL PRIVILEGES ON DATABASE ap_ledger TO ap_ledger;
GRANT postgres TO ap_ledger;


--
-- Accounts Receivable Ledger
--
DROP DATABASE IF EXISTS ar_ledger;
CREATE DATABASE ar_ledger;

DROP USER IF EXISTS ar_ledger;
CREATE USER ar_ledger WITH PASSWORD 'ar_ledger';

GRANT ALL PRIVILEGES ON DATABASE ar_ledger TO ar_ledger;
GRANT postgres TO ar_ledger;


--
-- Cash Ledger
--
DROP DATABASE IF EXISTS cash_ledger;
CREATE DATABASE cash_ledger;

DROP USER IF EXISTS;
CREATE USER cash_ledger WITH PASSWORD 'cash_ledger';

GRANT ALL PRIVILEGES ON DATABASE cash_ledger TO cash_ledger;
GRANT postgres TO cash_ledger;

