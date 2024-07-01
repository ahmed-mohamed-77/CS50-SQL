CREATE INDEX "search_messages_from_id" ON "messages"("id");

EXPLAIN QUERY PLAN
SELECT * FROM messages WHERE id = 151;
