DO
$$
DECLARE
    dynamic_table_name text;
    reporting_date date := @ReportingDate;
    data_feed text := @DataFeed;
BEGIN
    -- Create dynamic table name
    dynamic_table_name := 'TempContracts_' || data_feed || '_' || to_char(reporting_date, 'YYYYMMDD');

    -- Drop the table if it exists, then create the new table
    EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(dynamic_table_name) || ';';

    -- Execute the dynamic SQL to create the table
    EXECUTE 'CREATE TABLE ' || quote_ident(dynamic_table_name) || ' AS
             SELECT c."ContractId", c."CounterpartyId"
             FROM "Contracts" c
             JOIN "ContractProps" cp ON c."ContractId" = cp."ContractId"
             WHERE c."ReportingDate" = $1
             AND cp."Data"::jsonb->>''dataFeed'' = $2;'
    USING reporting_date, data_feed;
END
$$;
