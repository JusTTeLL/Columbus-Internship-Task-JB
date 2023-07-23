page 50102 "Auto Models List"
{
    Caption = 'Auto Model';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Model";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Mark Code"; Rec."Mark Code")
                {
                    ToolTip = 'Mark Code';
                    TableRelation = "Auto Mark";
                }
                field("Model Code"; Rec."Model Code")
                {
                    ToolTip = 'Code';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Description';
                }
            }
        }
    }
}