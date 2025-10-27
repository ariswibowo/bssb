
DELETE
  FROM [Counterparties]
 WHERE [ReportingDate] = @ReportingDate
 AND [CounterpartyId] IN 
 (
	SELECT 
		[CounterpartyId] 
	FROM 
		[Contracts] 
	WHERE  [ReportingDate] = @ReportingDate AND [Segment] IN ('TREASURY') 
 );
