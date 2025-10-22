SELECT
	reporting_date
	, origin_system_id
	, entity
	, product_subtype
	, product_type
	, business_unit
	, origin_contract_id
	, origin_counterparty_id
	, customer_name
	, start_date
	, maturity_date
	, undrawn_amount
	, days_past_due
	, collectibility
	, is_uncommitted
	, is_restructured
	, day_count_convention
	, antasena_jenis_pengguna
	, antasena_kategori_debitur
	, branch_code
	, segment	
FROM
  credit_undrawn
WHERE
  1 = 1
  AND reporting_date = @ReportingDate