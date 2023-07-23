page 50109 "Auto Rent Header List"
{
    Caption = 'Auto Rent Header List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Rent Header";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Number';
                    TableRelation = "Auto Setup";
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
                    TableRelation = Auto;
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