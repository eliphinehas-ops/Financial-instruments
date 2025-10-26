-- Clean and standardize financial instrument data
SELECT
  InstrumentID,
  UPPER(InstrumentType) AS InstrumentType,
  UPPER(Issuer) AS Issuer,
  UPPER(Sector) AS Sector,
  CreditRating,
  MarketValue,
  ROUND(Volatility, 2) AS Volatility,
  CASE
    WHEN ComplianceFlag = 'Yes' THEN 'Compliant'
    ELSE 'Non-Compliant'
  END AS ComplianceStatus
FROM financial_instruments;

