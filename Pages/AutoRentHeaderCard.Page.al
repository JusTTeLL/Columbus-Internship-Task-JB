page 50110 "Auto Rent Header Card"
{
    Caption = 'Auto Rent Header Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Auto Rent Header";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Number';
                    Editable = Rec."Status Rent Header" = Rec."Status Rent Header"::Open;
                }
                field("Client No."; Rec."Client No.")
                {
                    ToolTip = 'Client Number';
                    Editable = Rec."Status Rent Header" = Rec."Status Rent Header"::Open;
                }
                field("Driving License"; Rec."Driving License")
                {
                    ToolTip = 'Driving license';
                    Editable = Rec."Status Rent Header" = Rec."Status Rent Header"::Open;
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Date';
                    Editable = Rec."Status Rent Header" = Rec."Status Rent Header"::Open;
                }
                field("Auto No."; Rec."Auto No.")
                {
                    ToolTip = 'Auto number';
                    Editable = Rec."Status Rent Header" = Rec."Status Rent Header"::Open;
                }
                field("Reserved From Header"; Rec."Reserved From Header")
                {
                    ToolTip = 'Reserved from';
                    Editable = Rec."Status Rent Header" = Rec."Status Rent Header"::Open;
                }
                field("Reserved Till Header"; Rec."Reserved Till Header")
                {
                    ToolTip = 'Reserved till';
                    Editable = Rec."Status Rent Header" = Rec."Status Rent Header"::Open;
                }
                field("Rent Header Sum"; Rec."Rent Header Sum")
                {
                    ToolTip = 'Sum';
                    Editable = Rec."Status Rent Header" = Rec."Status Rent Header"::Open;
                }
                field("Status Rent Header"; Rec."Status Rent Header")
                {
                    ToolTip = 'Status';
                    Editable = false;
                }
            }
            group("Details")
            {
                part("Auto Rent Line"; "Auto Rent Line")
                {
                    Editable = Rec."Status Rent Header" = Rec."Status Rent Header"::Open;
                    SubPageLink = "Column No." = field("Client No.");
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Change Status To Released")
            {
                Caption = 'Release';
                ToolTip = 'Change Status To Released';

                trigger OnAction();
                begin
                    Rec."Status Rent Header" := Rec."Status Rent Header"::Released;
                end;
            }
            action("Finish Auto Rent")
            {
                Caption = 'Finish Auto Rent';
                ToolTip = 'Finish Current Auto Rent';

                trigger OnAction();
                begin
                    Codeunit.Run(Codeunit::"Finished Rent", Rec);
                end;
            }
        }
    }
}