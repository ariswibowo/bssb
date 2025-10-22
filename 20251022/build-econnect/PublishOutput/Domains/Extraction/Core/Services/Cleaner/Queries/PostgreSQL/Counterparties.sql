DO
$$
DECLARE
    dynamic_table_name text;
    reporting_date date := @ReportingDate;
    data_feed text := @DataFeed;
BEGIN
    dynamic_table_name := 'TempContracts_' || data_feed || '_' || to_char(reporting_date, 'YYYYMMDD');
    EXECUTE 'DELETE FROM "Counterparties" cpt ' ||
            'USING ' || quote_ident(dynamic_table_name) || ' tmp ' ||
            'WHERE cpt."CounterpartyId" = tmp."CounterpartyId";';
END
$$;