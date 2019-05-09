DROP DATABASE IF EXISTS general_journal;
CREATE DATABASE general_journal;

DROP USER IF EXISTS general_journal;
CREATE USER general_journal WITH PASSWORD 'general_journal';

GRANT ALL PRIVILEGES ON DATABASE general_journal TO general_journal;
GRANT postgres TO general_journal;
