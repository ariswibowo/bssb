DELETE FROM
  "CounterpartyRatings" cpr USING "Contracts" c
WHERE
  cpr."CounterpartyId" = c."CounterpartyId"
  AND c."ReportingDate" = @ReportingDate