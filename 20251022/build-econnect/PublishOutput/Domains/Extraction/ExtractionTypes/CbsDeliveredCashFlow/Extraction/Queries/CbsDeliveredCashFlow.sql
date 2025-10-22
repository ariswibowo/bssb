SELECT
    SnapshotDate
  , Entity
  , ltrim (rtrim (OriginContractId)) AS OriginContractId
  , OriginSystemId
  , CashFlowDate
  , CashFlowType
  , Currency
  , PrincipalAmount
  , InterestAmount
  , 0 AS OtherAmount
  , RemainingOutstandingAmount
FROM
  cbsdeliveredcashflow
WHERE
  1 = 1
  AND SnapshotDate = @ReportingDate
ORDER BY
  OriginContractId,
  CashFlowDate