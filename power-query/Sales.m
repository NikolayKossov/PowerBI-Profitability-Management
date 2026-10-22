let
    A = Table.NestedJoin(stg_sales, {"LineID"}, stg_cogs, {"LineID"}, "Cost", JoinKind.LeftOuter),
    B = Table.ExpandTableColumn(A, "Cost", {"COGSPLN"}),
    ShipmentTotals = Table.Group(stg_sales, {"ShipmentID"}, {{"ShipmentRevenue", each List.Sum([NetRevenuePLN]), type number}}),
    C = Table.NestedJoin(B, {"ShipmentID"}, ShipmentTotals, {"ShipmentID"}, "Total", JoinKind.LeftOuter),
    D = Table.ExpandTableColumn(C, "Total", {"ShipmentRevenue"}),
    E = Table.NestedJoin(D, {"ShipmentID"}, stg_freight, {"ShipmentID"}, "Freight", JoinKind.LeftOuter),
    F = Table.ExpandTableColumn(E, "Freight", {"FreightPLN"}),
    G = Table.NestedJoin(F, {"ClientID"}, stg_targets, {"ClientID"}, "Target", JoinKind.LeftOuter),
    H = Table.ExpandTableColumn(G, "Target", {"TargetMargin"}),
    Checked = if Table.RowCount(H) <> Table.RowCount(stg_sales) or List.Contains(H[COGSPLN], null) or List.Contains(H[FreightPLN], null) or List.Contains(H[TargetMargin], null) or List.Min(H[ShipmentRevenue]) <= 0 then error "Invalid join or nonpositive allocation denominator" else H,
    I = Table.AddColumn(Checked, "AllocatedFreightPLN", each [FreightPLN]*[NetRevenuePLN]/[ShipmentRevenue], type number),
    J = Table.AddColumn(I, "TargetContributionPLN", each [NetRevenuePLN]*[TargetMargin], type number)
in J
