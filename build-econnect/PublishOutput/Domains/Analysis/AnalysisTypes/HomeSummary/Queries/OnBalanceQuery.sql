SELECT 
	ct."AsLb",
	ct."ProductType",
	ct."ProductSubtype" as "ProductSubtypeCode",
	ps."Name" as "ProductSubtypeDesc",
	SUM(ct."UndrawnAmount") AS "UndrawnAmount",
	SUM(ct."OutstandingAmount") AS "OutstandingAmount"
FROM
    "Contracts" ct
	INNER JOIN "ContractMaster" cm ON ct."ContractMasterId" = cm."ContractMasterId"
    INNER JOIN "ContractProps" cp ON cp."ContractId" = ct."ContractId"
    LEFT JOIN "ProductSubtypes" ps ON ps."Code" = ct."ProductSubtype"
WHERE 
    ct."ReportingDate" = @ReportingDate
    AND ct."Entity" = @Entity
    AND ct."ProductSubtype" NOT IN ('COLLATERAL_RR')
	AND cm."OriginSystemId" NOT IN ('GL', 'MNL-GL', 'BOND-ENCUMBERED')
GROUP BY
	ct."AsLb",
	ct."ProductType",
	ct."ProductSubtype",
	ps."Name"
