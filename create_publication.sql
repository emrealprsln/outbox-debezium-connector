SHOW wal_level;

CREATE PUBLICATION dbz_publication FOR TABLE "application".outbox WITH (publish = 'insert');

SELECT * FROM pg_publication;
SELECT * FROM pg_publication_tables;
