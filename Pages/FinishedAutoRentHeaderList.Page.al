page 50114 "Finished Auto Rent Header List"
{
    Caption = 'Finished Auto Rent Header List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Rent Header";
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
            }
        }
    }
}