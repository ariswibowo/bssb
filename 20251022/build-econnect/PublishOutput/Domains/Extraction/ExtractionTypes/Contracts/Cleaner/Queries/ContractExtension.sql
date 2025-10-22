DELETE
  FROM [ContractExtensionBmt]
 WHERE [ContractId] IN 
 (
	SELECT 
		[ContractId] 
	FROM 
		[Contracts] 
	WHERE [ReportingDate] = @ReportingDate AND [Segment] NOT IN ('TREASURY')
 );