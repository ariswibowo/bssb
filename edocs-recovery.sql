CREATE OR REPLACE FUNCTION edocs_cleanup_recovery(reporting_date timestamp)
RETURNS void
AS $$
begin
	DROP TABLE IF EXISTS recoveries_contracts;

	-- create temp table to get the list of contract id
	CREATE TEMP TABLE recoveries_contracts AS
		  SELECT distinct 
		   "OriginContractId",
	       "Recoveries"
	FROM "HistoricalContractDocs",
	     jsonb_array_elements("Recoveries"::jsonb -> 'recoveries') WITH ORDINALITY arr(item, position)
	WHERE TO_CHAR(TO_DATE(item ->> 'recoveryDate', 'YYYY-MM-DD'), 'YYYY-MM') = to_char(reporting_date, 'YYYY-MM');

	-- aggregate the items
	WITH rec AS (
	    SELECT "OriginContractId",
	        COALESCE((SELECT jsonb_agg(item)
    		FROM jsonb_array_elements("Recoveries"::jsonb -> 'recoveries') AS item
    		WHERE TO_CHAR(TO_DATE(item ->> 'recoveryDate', 'YYYY-MM-DD'), 'YYYY-MM') != to_char(reporting_date, 'YYYY-MM')
    		),'[]') as new_value
	    FROM "recoveries_contracts"
	)
	
	UPDATE "HistoricalContractDocs"
	   SET "Recoveries" = jsonb_set("Recoveries"::jsonb, '{recoveries}', rec.new_value::jsonb)
	  FROM rec WHERE "HistoricalContractDocs"."OriginContractId" = "rec"."OriginContractId";
RETURN;
END;
$$ LANGUAGE plpgsql;

ALTER FUNCTION public."edocs_cleanup_recovery"(timestamp without time zone)
    OWNER TO "Elysian";
	
--select * from edocs_cleanup_recovery(@ReportingDate)