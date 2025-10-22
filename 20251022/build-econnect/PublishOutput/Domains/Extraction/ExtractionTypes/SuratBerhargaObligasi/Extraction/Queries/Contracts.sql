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
	, accrued_interest
	, interest_rate
	, effective_interest_rate
	, effective_interest_rate_including_discount_premium
	, initial_discount
	, initial_premium
	, unamortized_discount
	, unamortized_premium
	, present_value
	, present_value_including_discount_premium
	, days_past_due
	, collectibility
	, credit_rating
	, credit_rating_agency
	, segment
	, is_restructured
	, day_count_convention
	, cash_flow_type
	, interest_payment_freq
	, principal_payment_freq
	, account_status
	, antasena_jenis_pengguna
	, antasena_kategori_debitur
	, branch_code
	, interest_type
	, payment_coupon_date
	, instrument_purpose
FROM
  suratberharga_obligasi
WHERE
  1 = 1
  AND reporting_date = @ReportingDate