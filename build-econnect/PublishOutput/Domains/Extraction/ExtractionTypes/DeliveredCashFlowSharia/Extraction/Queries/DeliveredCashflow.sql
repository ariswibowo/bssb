SELECT
	reporting_date
	, entity
	, origin_contract_id
	, principal_amount
	, profit_margin_amount
	, remaining_principal
FROM
  delivered_cashflow_syariah
WHERE
  1 = 1
  AND reporting_date = @ReportingDate
ORDER BY
  origin_contract_id