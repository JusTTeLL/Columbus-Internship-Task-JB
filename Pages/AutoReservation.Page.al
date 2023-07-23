page 50106 "Auto Reservation"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Reservation";

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