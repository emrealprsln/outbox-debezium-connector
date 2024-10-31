CREATE SCHEMA IF NOT EXISTS "application";

CREATE TABLE "application".outbox
(
    id              uuid        DEFAULT gen_random_uuid() constraint outbox_pk primary key,
    aggregate_id    varchar(50) NOT NULL,
    aggregate_type  varchar(50) NOT NULL,
    idempotency_key varchar(50) NOT NULL,
    payload         jsonb       NOT NULL,
    timestamp       bigint      NOT NULL
);

CREATE TABLE "application".orders
(
    id              bigserial                constraint order_pk primary key,
    user_id         varchar(36)              NOT NULL,
    quantity        numeric,
    price           numeric,
    created_at      timestamp with time zone NOT NULL,
    updated_at      timestamp with time zone
);
