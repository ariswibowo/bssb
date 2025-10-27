SELECT
	reporting_date
	, origin_system_id
	, product_code
	, market_rate
FROM
  market_rate
WHERE
  1 = 1
  AND reporting_date = @ReportingDate