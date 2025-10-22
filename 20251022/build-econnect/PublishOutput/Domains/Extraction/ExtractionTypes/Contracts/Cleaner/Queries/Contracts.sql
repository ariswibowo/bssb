
DELETE
  FROM [Contracts]
 WHERE [ReportingDate] = @ReportingDate AND [Segment] NOT IN ('TREASURY');