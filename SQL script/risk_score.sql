-- Assign risk scores based on volatility and credit rating
SELECT
  InstrumentID,
  InstrumentType,
  Issuer,
  Sector,
  CreditRating,
  MarketValue,
  Volatility,
  CASE
    WHEN CreditRating = 'A' AND Volatility < 0.10 THEN 'Low Risk'
    WHEN CreditRating IN ('B', 'C') OR Volatility BETWEEN 0.10 AND 0.20 THEN 'Medium Risk'
    ELSE 'High Risk'
  END AS RiskScore
FROM financial_instruments;

