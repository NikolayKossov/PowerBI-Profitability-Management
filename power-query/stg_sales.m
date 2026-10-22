let
    Source = Csv.Document(File.Contents(DataRoot & "/raw/sales.csv"), [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    Typed = Table.TransformColumnTypes(Headers, {{"LineID", type text}, {"ShipmentID", type text}, {"Date", type date}, {"ClientID", type text}, {"ProductID", type text}, {"Quantity", Int64.Type}, {"GrossPLN", type number}, {"DiscountPLN", type number}, {"NetRevenuePLN", type number}}, "en-US")
in
    Typed
