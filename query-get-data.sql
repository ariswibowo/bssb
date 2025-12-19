psql -h 10.126.102.103 -p 5432 -d Fdr -U Elysian -c "\copy (select c.\"ReportingDate\", c.\"Entity\", cm.\"OriginSystemId\", cm.\"OriginContractId\", cm2.\"OriginCounterpartyId\", c.*,
cp.\"Data\"::jsonb->>'accountStatus',
cp.\"Data\"::jsonb->>'antasenaJenisPengguna',
cp.\"Data\"::jsonb->>'antasenaKategoriDebitur',
cp.\"Data\"::jsonb->>'branchCode',
cp.\"Data\"::jsonb->>'cashFlowType',
cp.\"Data\"::jsonb->>'cashflowFlag',
cp.\"Data\"::jsonb->>'dayCountConvention',
cp.\"Data\"::jsonb->>'gagalTagihAsuransi',
cp.\"Data\"::jsonb->>'idPihakLawan',
cp.\"Data\"::jsonb->>'initialCost',
cp.\"Data\"::jsonb->>'initialFee',
cp.\"Data\"::jsonb->>'interestPaymentFreq',
cp.\"Data\"::jsonb->>'interestType',
cp.\"Data\"::jsonb->>'isRevolving',
cp.\"Data\"::jsonb->>'isUncommitted',
cp.\"Data\"::jsonb->>'paymentCouponDate',
cp.\"Data\"::jsonb->>'principalPaymentFreq',
cp.\"Data\"::jsonb->>'principalPaymentFreq',
cp.\"Data\"::jsonb->>'purpose',
cp.\"Data\"::jsonb->>'statusJenisBankGaransi',
cp.\"Data\"::jsonb->>'totalHariGagalTagihAsuransi',
cp.\"Data\"::jsonb->>'unamortizedCost',
cp.\"Data\"::jsonb->>'unamortizedFee' from \"Contracts\" c 
left join \"ContractProps\" cp on c.\"ContractId\" = cp.\"ContractId\" 
left join \"ContractMaster\" cm on cm.\"ContractMasterId\" = c.\"ContractMasterId\" 
left join \"Counterparties\" c2 on c2.\"CounterpartyId\" = c.\"CounterpartyId\" 
left join \"CounterpartyMaster\" cm2 on cm2.\"CounterpartyMasterId\" = c2.\"CounterpartyMasterId\" 
where c.\"ReportingDate\" = '2025-08-31') TO STDOUT CSV HEADER" > FdrDataAug2025.csv