page 50111 "Released Auto Header List"
{
    Caption = 'Released Auto Header List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Rent Header";
    SourceTableView = where("Status Rent Header" = const(Released));
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Number';
                }
                field("Client No."; Rec."Client No.")
                {
                    ToolTip = 'Client Number';
                }
                field("Driving License"; Rec."Driving License")
                {
                    ToolTip = 'Driving license';
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Date';
                }
                field("Auto No."; Rec."Auto No.")
                {
                    ToolTip = 'Auto number';
                }
                field("Reserved From Header"; Rec."Reserved From Header")
                {
                    ToolTip = 'Reserved from';
                }
                field("Reserved Till Header"; Rec."Reserved Till Header")
                {
                    ToolTip = 'Reserved till';
                }
                field("Rent Header Sum"; Rec."Rent Header Sum")
                {
                    ToolTip = 'Sum';
                }
                field("Status Rent Header"; Rec."Status Rent Header")
                {
                    ToolTip = 'Status';
                    Editable = false;
                }
            }
        }
    }
}