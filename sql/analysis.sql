-- SQLite; run: python scripts/validate.py
-- Read-only analysis of the independently loaded curated tables.
SELECT c.Client, SUM(s.NetRevenuePLN) AS Revenue, SUM(s.NetRevenuePLN-s.COGSPLN-s.AllocatedFreightPLN) AS Contribution, SUM(s.NetRevenuePLN-s.COGSPLN-s.AllocatedFreightPLN)/NULLIF(SUM(s.NetRevenuePLN),0) AS Margin FROM Sales s JOIN Client c ON s.ClientID=c.ClientID GROUP BY c.Client ORDER BY Margin;
