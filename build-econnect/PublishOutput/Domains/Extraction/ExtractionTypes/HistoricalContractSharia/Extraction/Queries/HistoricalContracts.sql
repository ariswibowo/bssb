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
    , hr.recovery_date
    , hr.recovery_amount
FROM 
  historical_contracts_syariah hc
LEFT JOIN historical_recovery_syariah hr
ON 
  hc.origin_contract_id = hr.origin_contract_id 
  AND hc.reporting_date = hr.reporting_date
WHERE 
  1=1
  AND hc.reporting_date = @ReportingDate