CREATE OR REPLACE MATERIALIZED VIEW amount_upi_transactions
AS
select *
from amount_by_instrument
where lower(trim(instrument_type)) = 'upi'