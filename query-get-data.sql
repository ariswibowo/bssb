psql -h 10.126.102.103 -p 5432 -d Fdr -U Elysian -c "\copy (select c."ReportingDate", cm."OriginContractId", cm2."OriginCounterpartyId", c.*, cp."Data" from "Contracts" c 
left join "ContractProps" cp on c."ContractId" = cp."ContractId" 
left join "ContractMaster" cm on cm."ContractMasterId" = c."ContractMasterId" 
left join "Counterparties" c2 on c2."CounterpartyId" = c."CounterpartyId" 
left join "CounterpartyMaster" cm2 on cm2."CounterpartyMasterId" = c2."CounterpartyMasterId" 
where c."ReportingDate" = '2025-08-31') TO STDOUT CSV HEADER" > FdrDataAug2025.csv