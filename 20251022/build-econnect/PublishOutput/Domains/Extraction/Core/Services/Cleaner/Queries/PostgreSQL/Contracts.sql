DO
$$
DECLARE
    dynamic_table_name text;
    reporting_date date := @ReportingDate;
    data_feed text := @DataFeed;
BEGIN
    dynamic_table_name := 'TempContracts_' || data_feed || '_' || to_char(reporting_date, 'YYYYMMDD');
    EXECUTE 'DELETE FROM "Contracts" c ' ||
            'USING ' || quote_ident(dynamic_table_name) || ' tmp ' ||
            'WHERE c."ContractId" = tmp."ContractId";';
END
$$;