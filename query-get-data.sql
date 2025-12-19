psql -h 10.126.102.103 -p 5432 -d Fdr -U Elysian -c "\copy (select c.\"ReportingDate\", c.\"Entity\", cm.\"OriginSystemId\", cm.\"OriginContractId\", cm2.\"OriginCounterpartyId\", cm2.\"Name\", c.*,
cp.\"Data\"::jsonb->>'accountStatus' as \"accountStatus\",
cp.\"Data\"::jsonb->>'antasenaJenisPengguna' as \"antasenaJenisPengguna\",
cp.\"Data\"::jsonb->>'antasenaKategoriDebitur' as \"antasenaKategoriDebitur\",
cp.\"Data\"::jsonb->>'branchCode' as \"branchCode\",
cp.\"Data\"::jsonb->>'cashFlowType' as \"cashFlowType\",
cp.\"Data\"::jsonb->>'cashflowFlag' as \"cashflowFlag\",
cp.\"Data\"::jsonb->>'dayCountConvention' as \"dayCountConvention\",
cp.\"Data\"::jsonb->>'gagalTagihAsuransi' as \"gagalTagihAsuransi\",
cp.\"Data\"::jsonb->>'idPihakLawan' as \"idPihakLawan\",
cp.\"Data\"::jsonb->>'initialCost' as \"initialCost\",
cp.\"Data\"::jsonb->>'initialFee' as \"initialFee\",
cp.\"Data\"::jsonb->>'interestPaymentFreq' as \"interestPaymentFreq\",
cp.\"Data\"::jsonb->>'interestType' as \"interestType\",
cp.\"Data\"::jsonb->>'isRevolving' as \"isRevolving\",
cp.\"Data\"::jsonb->>'isUncommitted' as \"isUncommitted\",
cp.\"Data\"::jsonb->>'paymentCouponDate' as \"paymentCouponDate\",
cp.\"Data\"::jsonb->>'principalPaymentFreq' as \"principalPaymentFreq\",
cp.\"Data\"::jsonb->>'principalPaymentFreq' as \"principalPaymentFreq\",
cp.\"Data\"::jsonb->>'purpose' as \"purpose\",
cp.\"Data\"::jsonb->>'statusJenisBankGaransi' as \"statusJenisBankGaransi\",
cp.\"Data\"::jsonb->>'totalHariGagalTagihAsuransi' as \"totalHariGagalTagihAsuransi\",
cp.\"Data\"::jsonb->>'unamortizedCost' as \"unamortizedCost\",
cp.\"Data\"::jsonb->>'unamortizedFee' as \"unamortizedFee\" from \"Contracts\" c 
left join \"ContractProps\" cp on c.\"ContractId\" = cp.\"ContractId\" 
left join \"ContractMaster\" cm on cm.\"ContractMasterId\" = c.\"ContractMasterId\" 
left join \"Counterparties\" c2 on c2.\"CounterpartyId\" = c.\"CounterpartyId\" 
left join \"CounterpartyMaster\" cm2 on cm2.\"CounterpartyMasterId\" = c2.\"CounterpartyMasterId\" 
where c.\"ReportingDate\" = '2025-08-31') TO STDOUT CSV HEADER" > FdrDataAug2025.csv