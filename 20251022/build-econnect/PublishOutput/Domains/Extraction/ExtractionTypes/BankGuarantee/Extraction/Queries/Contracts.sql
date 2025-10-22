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
	, currency
	, principal_amount
	, outstanding_amount
	, accrued_interest
	, interest_rate
	, effective_interest_rate
	, effective_interest_rate_including_fees_and_costs
	, initial_fee
	, unamortized_fee
	, present_value
	, present_value_including_fees_and_costs
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
	, status_jenis_bank_garansi
	, total_hari_gagal_tagih_asuransi
FROM
  bank_guarantee
WHERE
  1 = 1
  AND reporting_date = @ReportingDate