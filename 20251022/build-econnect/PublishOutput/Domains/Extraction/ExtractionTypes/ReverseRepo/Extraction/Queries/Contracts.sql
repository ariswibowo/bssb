SELECT
	reporting_date
	, origin_system_id
	, entity
	, product_subtype
	, product_type
	, business_unit
	, origin_contract_id
	, counterparty_type
	, origin_counterparty_id
	, customer_name
	, start_date
	, maturity_date
	, currency
	, outstanding_amount
	, days_past_due
	, collectibility
	, credit_rating
	, credit_rating_agency
	, segment
	, is_restructured
	, cash_flow_type
	, account_status
	, antasena_jenis_pengguna
	, antasena_kategori_debitur
	, branch_code
FROM
  reverse_repo
WHERE
  1 = 1
  AND reporting_date = @ReportingDate