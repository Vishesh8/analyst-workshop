USE CATALOG `dbdemos_vishesh`;
USE SCHEMA `contest_mock`;

CREATE OR REPLACE MATERIALIZED VIEW sports_by_state
AS
select c.contest_sport, u.origin_state, count(distinct u.user_id) as user_count
from users u
left join contests_tx ct on u.user_id = ct.user_id
left join contests c on ct.contest_id = c.contest_id
group by all
order by all