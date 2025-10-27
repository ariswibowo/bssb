SELECT
	reporting_date
	, branch_code
	, origin_contract_id
	, id_pihak_lawan
	, nilai_ayda as outstanding_amount
	, customer_name
FROM
  ayda
WHERE
  1 = 1
  AND reporting_date = @ReportingDate