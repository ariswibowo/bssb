SELECT 
    hc.reporting_date
    , hc.observation_date
    , hc.entity
    , hc.origin_contract_id
    , hc.origin_system_id
    , hc.origin_counterparty_id
    , hc.product_type
    , hc.product_subtype
    , hc.currency
    , hc.start_date
    , hc.maturity_date
    , hc.outstanding_amount
    , hc.days_past_due
    , hc.collectability
    , hc.interest_rate
    , hc.antasena_jenis_pengguna
    , hc.antasena_kategori_debitur
    , hc.branch_code
    , hc.is_restructured
    , rec.recovery_date
    , rec.recovery_amount
FROM 
  historical_contracts_konven hc
LEFT JOIN
(
  select 
    reporting_date,
    origin_contract_id,
    coalesce(recovery_date, reporting_date) as recovery_date,
    sum(coalesce(recovery_amount,0) + coalesce(insurance_recovery,0)) as recovery_amount
  from historical_recovery_konven
  group by
    reporting_date,
    origin_contract_id,
    recovery_date
) rec
ON 
  hc.origin_contract_id = rec.origin_contract_id 
  AND hc.reporting_date = rec.reporting_date
WHERE 
  1=1
  AND hc.reporting_date = @ReportingDate
ORDER BY hc.reporting_date, hc.origin_contract_id ASC