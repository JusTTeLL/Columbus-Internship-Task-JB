page 50103 "Auto Card"
{
    Caption = 'Auto Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Auto;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Auto No."; Rec."Auto No.")
                {
                    ToolTip = 'Auto Number';
                }
                field("Auto Name"; Rec."Auto Name")
                {
                    ToolTip = 'Auto Name';
                }
                field("Auto Mark Code"; Rec."Auto Mark Code")
                {
                    ToolTip = 'Auto Mark';
                }
                field("Auto Model Code"; Rec."Auto Model Code")
                {
                    ToolTip = 'Auto Model';
                }
                field("Year Of Manufacture"; Rec."Year Of Manufacture")
                {
                    ToolTip = 'Year Of Car Manufacture';
                }
                field("Civil Insurance"; Rec."Civil Insurance")
                {
                    ToolTip = 'Civil Insurance Valid Till';
                }
                field("Auto TI"; Rec."Auto TI")
                {
                    ToolTip = 'Technical Insurance Valid Till';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ToolTip = 'Location Code';
                }
                field("Rent Service"; Rec."Rent Service")
                {
                    ToolTip = 'Rent Service';
                }
                field("Rent Price"; Rec."Rent Price")
                {
                    ToolTip = 'Rent Price';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(OpenReservation)
            {
                Caption = 'Open Auto Reservation List';
                ToolTip = 'Opens Auto Reservations List';
                Image = List;
                RunObject = page "Auto Reservation";
            }
            action("Generate Auto History Report")
            {
                Caption = 'Auto Rent History';
                ToolTip = 'Opens Auto Rent History Report';
                Image = History;
                RunObject = report "Auto Rent History Rent";
            }
        }
    }
}