SELECT
	"AsLb",
	"IsCommitted",
	"ProductType",
	"ProductSubtypeCode",
	"ProductSubtypeDesc",
	"UndrawnAmount",
	"AOutstandingAmount",
	"LOutstandingAmount"
FROM (
	SELECT 
	CASE 
		WHEN cp."Data"::jsonb->>'isCommitted' = 'N' THEN 'Uncommitted'
		WHEN cp."Data"::jsonb->>'isCommitted' = 'Y' THEN 'Committed' ELSE cp."Data"::jsonb->>'isCommitted' END AS "IsCommitted",
	ct."ProductType",
	ct."ProductSubtype" as "ProductSubtypeCode",
	ps."Name" as "ProductSubtypeDesc",
	ct."AsLb",
	SUM(ct."UndrawnAmount") AS "UndrawnAmount",
	SUM(ct."OutstandingAmount") AS "AOutstandingAmount",
	null AS "LOutstandingAmount"
FROM
    "Contracts" ct
    INNER JOIN "ContractMaster" cm ON ct."ContractMasterId" = cm."ContractMasterId"
    LEFT JOIN "ProductSubtypes" ps ON ps."Code" = ct."ProductSubtype"  -- Left join with ProductSubtypes
    INNER JOIN "ContractProps" cp ON cp."ContractId" = ct."ContractId"
WHERE 
    ct."ReportingDate" = @ReportingDate
    AND ct."Entity" = @Entity
    AND ct."AsLb" = 'A'
	AND cm."OriginSystemId" NOT IN ('GL', 'MNL-GL')
GROUP BY
	cp."Data"::jsonb->>'isCommitted',
	ct."ProductType",
	ct."ProductSubtype",
	ps."Name",
	ct."AsLb"
	) AS dat 
ORDER BY "AsLb"