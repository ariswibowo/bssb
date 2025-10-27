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
	, principal_amount
	, outstanding_amount
	, accrued_profit
	, profit_rate
	, effective_profit_rate
	, effective_profit_rate_including_fees_and_costs
	, discount_rate
	, limit_amount
	, undrawn_amount
	, initial_fee
	, unamortized_fee
	, present_value
	, present_value_including_fees_and_costs
	, days_past_due
	, collectibility
	, segment
	, is_revolving
	, is_uncommitted
	, is_restructured
	, cashflow_flag
	, day_count_convention
	, cash_flow_type
	, profit_type
	, interest_payment_freq
	, principal_payment_freq
	, account_status
	, antasena_jenis_pengguna
	, antasena_kategori_debitur
	, branch_code
FROM
  nominative_syariah
WHERE
  1 = 1
  AND reporting_date = @ReportingDate