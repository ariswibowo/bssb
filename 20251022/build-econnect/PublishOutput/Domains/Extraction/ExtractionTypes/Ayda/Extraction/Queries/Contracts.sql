SELECT
	reporting_date
	, origin_contract_id
	, id_pihak_lawan
	, nilai_ayda as outstanding_amount
FROM
  ayda
WHERE
  1 = 1
  AND reporting_date = @ReportingDate