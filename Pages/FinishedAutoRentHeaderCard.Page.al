page 50115 "Finished Auto Rent Header Card"
{
    Caption = 'Finished Auto Rent Header Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Auto Rent Header";
    Editable = false;

    layout
    {
        area(Content)
        {
            group(General)
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
            group("Details")
            {
                part("Finished Auto Rent Line"; "Finished Auto Rent Line")
                {
                    SubPageLink = "Column No." = field("Client No.");
                }
            }
        }
    }
}