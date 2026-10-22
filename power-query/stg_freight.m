let
    Source = Csv.Document(File.Contents(DataRoot & "/raw/freight.csv"), [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    Typed = Table.TransformColumnTypes(Headers, {{"ShipmentID", type text}, {"FreightPLN", type number}}, "en-US")
in
    Typed
