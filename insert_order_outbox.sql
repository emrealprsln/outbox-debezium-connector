BEGIN;

INSERT INTO  "application".orders (user_id, quantity, price, created_at)
VALUES ('example1', 1.00, 14.00, '2024-10-30 17:45:15+03');

INSERT INTO "application".outbox (id, aggregate_id, aggregate_type, idempotency_key, payload, timestamp)
VALUES ('b6379edf-b4ed-4d6b-8162-560458b7ce54', '53635611-57b7-4b1d-b6ef-a372d2687131', 'order.created', 'dd8a49e9-1238-48c5-85bb-963ad9bb5bf5', '{"user_id": "example1", "quantity": 1.00, "price": 14.00}', 1730299515071);

COMMIT;
