SELECT
	reporting_date
	, origin_counterparty_id
	, rating_agency
	, rating_code
FROM
  counterparty_ratings
WHERE
  1 = 1
  AND reporting_date = @ReportingDate