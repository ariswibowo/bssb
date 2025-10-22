SELECT
    reportingdate
  , entity
  , ltrim (rtrim (origincontractid)) AS origincontractid
  , ltrim (rtrim (upper(producttype))) AS producttype
  , ltrim (rtrim (upper(productsubtype))) AS productsubtype
  , creditrating
  , ltrim (rtrim ((creditratingagency))) AS creditratingagency
  , collectibility
  , currency
  , dayspastdue
  , effectiveinterestrate
  , effectiveinterestrateincludingfeesandcosts
  , ltrim (rtrim (upper(segment))) AS segment
  , interestrate
  , startdate
  , maturitydate
  , isnull (principalamount, 0) AS principalamount
  , isnull (outstandingamount, 0) AS outstandingamount
  , isnull (limitamount, 0) AS limitamount
  , isnull (undrawnamount, 0) AS undrawnamount
  , isnull (accruedinterest, 0) AS accruedinterest
  , isnull (presentvalue, 0) AS presentvalue
  , isnull (presentvalueincludingfeesandcosts, 0) AS presentvalueincludingfeesandcosts
  --extension
  , ltrim (rtrim (upper(branchcode))) AS branchcode
  , paymentflag AS paymentflag
  , custcreditrating AS custcreditrating
  , isnull (custdaypastdue, 0) AS custdayspastdue
  , origincounterpartyid
  , counterpartyname
  , deliveredcashflowflag
FROM
  contract_treasury
WHERE
  1 = 1
  AND reportingdate = @ReportingDate