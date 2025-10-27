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
  , OtherAmount
  , RemainingOutstandingAmount
FROM
  cash_flow
WHERE
  1 = 1
  AND SnapshotDate = @ReportingDate
ORDER BY
  OriginContractId,
  CashFlowDate