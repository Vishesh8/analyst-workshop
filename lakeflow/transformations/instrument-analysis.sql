CREATE OR REPLACE MATERIALIZED VIEW amount_by_instrument 
AS
select year(tx_end_timestamp) as year, instrument_type, instrument,
sum(amount) as amount, sum(discount_points) as discount_points, sum(net_amount) as net_amount
from wallet_tx
group by all
order by all;