SELECT
  COUNT(DISTINCT contractid) AS RowsLoaded
FROM
  HistoricalContractRecoveries hcr
  JOIN HistoricalSnapshots hs ON hcr.SnapshotId = hs.SnapshotId
  JOIN HistoricalDatasets hd ON hs.DatasetId = hd.DatasetId
WHERE
  hd.Name = 'Dataset-One-Obligor'
  AND hs.SnapshotDate = @ReportingDate;