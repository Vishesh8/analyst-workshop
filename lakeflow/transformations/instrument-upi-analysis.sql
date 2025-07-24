CREATE OR REPLACE MATERIALIZED VIEW upi_transactions
AS
select *
from cost_by_instrument
where lower(trim(instrument_type)) = 'upi'