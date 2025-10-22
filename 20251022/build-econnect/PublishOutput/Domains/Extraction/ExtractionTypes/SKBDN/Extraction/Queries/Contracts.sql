SELECT
	reporting_date
	, origin_system_id
	, entity
	, product_type
	, product_subtype
	, business_unit
	, origin_contract_id
	, origin_counterparty_id
	, customer_name
	, start_date
	, maturity_date
	, currency
	, outstanding_amount
	, accrued_interest
	, interest_rate
	, present_value
	, days_past_due
	, is_restructured
	, account_status
	, antasena_jenis_pengguna
	, antasena_kategori_debitur
	, branch_code
FROM
  skbdn
WHERE
  1 = 1
  AND reporting_date = @ReportingDate