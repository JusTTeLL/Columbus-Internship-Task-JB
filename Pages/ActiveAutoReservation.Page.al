page 50107 "Active Auto Reservations"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Reservation";
    SourceTableView = where("Reservered From" = filter(> '2023-07-24'));

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Auto No."; Rec."Auto No.")
                {
                    ToolTip = 'Auto Number';
                }
                field("Column No."; Rec."Column No.")
                {
                    ToolTip = 'Column Number';
                }
                field("Client No."; Rec."Client No.")
                {
                    ToolTip = 'Client Number';
                }
                field("Reservered From"; Rec."Reservered From")
                {
                    ToolTip = 'Auto reserved from';
                }
                field("Reservered Till"; Rec."Reservered Till")
                {
                    ToolTip = 'Auto reserved till';
                }
            }
        }
    }
}