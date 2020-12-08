-- :name- insert-transaction-sample-data :!
insert into "transaction-sample-data" (:i*:fields) values :tuple*:tuples;

-- :name- upsert-transactions :? :*
select upsert_transaction("app-id", "transaction-name") as id
from (values :t*:args) as args("app-id", "transaction-name");
