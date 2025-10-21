SELECT 'ayda' AS table_name, reporting_date, COUNT(*) AS total_rows FROM ayda GROUP BY reporting_date
UNION ALL
SELECT 'bank_guarantee', reporting_date, COUNT(*) FROM bank_guarantee GROUP BY reporting_date
UNION ALL
SELECT 'counterparty_ratings', reporting_date, COUNT(*) FROM counterparty_ratings GROUP BY reporting_date
UNION ALL
SELECT 'credit', reporting_date, COUNT(*) FROM credit GROUP BY reporting_date
UNION ALL
SELECT 'credit_undrawn', reporting_date, COUNT(*) FROM credit_undrawn GROUP BY reporting_date
UNION ALL
SELECT 'delivered_cashflow_konven', reporting_date, COUNT(*) FROM delivered_cashflow_konven GROUP BY reporting_date
UNION ALL
SELECT 'delivered_cashflow_syariah', reporting_date, COUNT(*) FROM delivered_cashflow_syariah GROUP BY reporting_date
UNION ALL
SELECT 'historical_contracts_konven', reporting_date, COUNT(*) FROM historical_contracts_konven GROUP BY reporting_date
UNION ALL
SELECT 'historical_contracts_syariah', reporting_date, COUNT(*) FROM historical_contracts_syariah GROUP BY reporting_date
UNION ALL
SELECT 'historical_recovery_konven', reporting_date, COUNT(*) FROM historical_recovery_konven GROUP BY reporting_date
UNION ALL
SELECT 'historical_recovery_syariah', reporting_date, COUNT(*) FROM historical_recovery_syariah GROUP BY reporting_date
UNION ALL
SELECT 'market_rate', reporting_date, COUNT(*) FROM market_rate GROUP BY reporting_date
UNION ALL
SELECT 'nominative_syariah', reporting_date, COUNT(*) FROM nominative_syariah GROUP BY reporting_date
UNION ALL
SELECT 'penyertaan', reporting_date, COUNT(*) FROM penyertaan GROUP BY reporting_date
UNION ALL
SELECT 'placement', reporting_date, COUNT(*) FROM placement GROUP BY reporting_date
UNION ALL
SELECT 'reverse_repo', reporting_date, COUNT(*) FROM reverse_repo GROUP BY reporting_date
UNION ALL
SELECT 'skbdn', reporting_date, COUNT(*) FROM skbdn GROUP BY reporting_date
UNION ALL
SELECT 'suratberharga_obligasi', reporting_date, COUNT(*) FROM suratberharga_obligasi GROUP BY reporting_date
ORDER BY reporting_date, table_name;
