# Słownik danych

| Tabela | Pole | Typ źródła | Znaczenie / jednostka |
|---|---|---|---|
| sales | `LineID` | str | klucz |
| sales | `ShipmentID` | str | klucz |
| sales | `Date` | str | ISO 8601 |
| sales | `ClientID` | str | klucz |
| sales | `ProductID` | str | klucz |
| sales | `Quantity` | int | patrz metodyka i nazwa pola |
| sales | `GrossPLN` | float | PLN, bez VAT |
| sales | `DiscountPLN` | float | PLN, bez VAT |
| sales | `NetRevenuePLN` | float | PLN, bez VAT |
| cogs | `LineID` | str | klucz |
| cogs | `COGSPLN` | float | PLN, bez VAT |
| freight | `ShipmentID` | str | klucz |
| freight | `FreightPLN` | float | PLN, bez VAT |
| targets | `ClientID` | str | klucz |
| targets | `TargetMargin` | float | patrz metodyka i nazwa pola |
| Date | `Date` | str | ISO 8601 |
| Date | `Year` | int | patrz metodyka i nazwa pola |
| Date | `Month` | int | patrz metodyka i nazwa pola |
| Date | `YearMonth` | str | patrz metodyka i nazwa pola |
| Date | `Quarter` | str | patrz metodyka i nazwa pola |
| Client | `ClientID` | str | klucz |
| Client | `Client` | str | patrz metodyka i nazwa pola |
| Client | `Segment` | str | patrz metodyka i nazwa pola |
| Client | `Market` | str | patrz metodyka i nazwa pola |
| Product | `ProductID` | str | klucz |
| Product | `Product` | str | patrz metodyka i nazwa pola |
| Product | `Family` | str | patrz metodyka i nazwa pola |
| Product | `StandardUnitCost` | int | patrz metodyka i nazwa pola |
| Sales | `LineID` | str | klucz |
| Sales | `ShipmentID` | str | klucz |
| Sales | `Date` | str | ISO 8601 |
| Sales | `ClientID` | str | klucz |
| Sales | `ProductID` | str | klucz |
| Sales | `Quantity` | int | patrz metodyka i nazwa pola |
| Sales | `GrossPLN` | float | PLN, bez VAT |
| Sales | `DiscountPLN` | float | PLN, bez VAT |
| Sales | `NetRevenuePLN` | float | PLN, bez VAT |
| Sales | `COGSPLN` | float | PLN, bez VAT |
| Sales | `AllocatedFreightPLN` | float | PLN, bez VAT |
| Sales | `TargetContributionPLN` | float | PLN, bez VAT |
