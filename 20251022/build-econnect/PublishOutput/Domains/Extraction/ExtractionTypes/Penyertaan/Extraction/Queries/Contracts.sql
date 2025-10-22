SELECT
	reporting_date
	, reporting_date + INTERVAL '1 month' AS reporting_date_plus_1month
	, origin_contract_id
	, id_pihak_lawan
	, nilai_tercatat as outstanding_amount
	, hari_tunggakan
FROM
  penyertaan
WHERE
  1 = 1
  AND reporting_date = @ReportingDate