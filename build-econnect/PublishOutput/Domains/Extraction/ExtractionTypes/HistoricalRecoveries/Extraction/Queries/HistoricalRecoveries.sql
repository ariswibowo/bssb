SELECT
    SnapshotDate AS SnapshotDate
  , ltrim (rtrim (ContractId)) AS ContractId
  , Currency AS Currency
  , RecoveryDate AS RecoveryDate
  , RecoveryAmount AS RecoveryAmount
FROM
  HISTORICAL_RECOVERY
WHERE
  1 = 1
  AND SnapshotDate = @ReportingDate
ORDER BY
  ltrim (rtrim (ContractId))