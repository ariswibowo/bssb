DO
$$
DECLARE
    counterparty_table text;
    contract_table text;
    contract_master_table text := 'ContractMaster';
    reporting_date date := @ReportingDate;
BEGIN
    --counterparty_table := 'Counterparties' || '_' || to_char(reporting_date, 'YYYYMMDD');
    --contract_table := 'Contracts' || '_' || to_char(reporting_date, 'YYYYMMDD');

    counterparty_table := 'Counterparties';
    contract_table := 'Contracts';

    EXECUTE format(
        'DELETE FROM %I cpt
         USING %I c
         JOIN %I cm ON c."ContractMasterId" = cm."ContractMasterId"
         WHERE cpt."CounterpartyId" = c."CounterpartyId"
           AND c."ContractMasterId" = cm."ContractMasterId"
           AND c."ReportingDate" = $1
           AND cm."OriginSystemId" = $2',
        counterparty_table,
        contract_table,
        contract_master_table
    )
    USING reporting_date, 'credit';
END $$;