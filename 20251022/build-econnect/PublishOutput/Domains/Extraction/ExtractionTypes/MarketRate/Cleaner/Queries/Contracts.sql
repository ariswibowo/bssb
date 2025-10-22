DO
$$
DECLARE
    contract_table text;
    contract_master_table text := 'ContractMaster';
    reporting_date date := @ReportingDate;
    entity text := @Entity;
BEGIN
    contract_table := 'Contracts' || '_' || to_char(reporting_date, 'YYYYMMDD');

    EXECUTE format(
        'DELETE FROM %I c
         USING %I cm
         WHERE c."ContractMasterId" = cm."ContractMasterId"
           AND c."ReportingDate" = $1
           AND c."Entity" = $2
           AND cm."OriginSystemId" = $3',
        contract_table,
        contract_master_table
    )
    USING reporting_date, entity, 'credit';
END $$;