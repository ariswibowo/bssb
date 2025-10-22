DO
$$
DECLARE
    contract_table text;
    contract_master_table text := 'ContractMaster';
    reporting_date date := @ReportingDate;
BEGIN
    --contract_table := 'Contracts' || '_' || to_char(reporting_date, 'YYYYMMDD');
    contract_table := 'Contracts';

    EXECUTE format(
        'DELETE FROM %I c
         USING %I cm
         WHERE c."ContractMasterId" = cm."ContractMasterId"
           AND c."ReportingDate" = $1
           AND cm."OriginSystemId" = $2',
        contract_table,
        contract_master_table
    )
    USING reporting_date, 'credit';
END $$;