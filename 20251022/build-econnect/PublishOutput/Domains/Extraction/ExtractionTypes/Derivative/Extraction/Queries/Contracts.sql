SELECT
	reporting_date
	, origin_system_id
	, entity
	, product_type
	, product_subtype
	, origin_contract_id
	, counterparty_type
	, origin_counterparty_id
	, customer_name
	, transaction_date
	, settlement_date
	, maturity_date
	, buy_sell_flag
	, broker_code
	, amount
	, currency_1
	, currency_2
	, amount_currency_1
	, amount_currency_2
	, exchange_rate
	, antasena_jenis_pengguna
	, antasena_kategori_debitur
	, branch_code
	, segment
	, credit_rating
	, credit_rating_agency
FROM
  derivative
WHERE
  1 = 1
  AND reporting_date = @ReportingDate