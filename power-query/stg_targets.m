let
    Source = Csv.Document(File.Contents(DataRoot & "/raw/targets.csv"), [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    Typed = Table.TransformColumnTypes(Headers, {{"ClientID", type text}, {"TargetMargin", type number}}, "en-US")
in
    Typed
