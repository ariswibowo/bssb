DO
$$
DECLARE
    dynamic_table_name text;
    reporting_date date := @ReportingDate;
    data_feed text := @DataFeed;
BEGIN
    dynamic_table_name := 'TempContracts_' || data_feed || '_' || to_char(reporting_date, 'YYYYMMDD');
    EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(dynamic_table_name) || ';';
END
$$;
