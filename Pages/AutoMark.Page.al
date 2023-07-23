page 50101 "Auto Mark"
{
    Caption = 'Auto Mark';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Mark";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Mark Code")
                {
                    ToolTip = 'Mark Code';
                }
                field("Description"; Rec."Description")
                {
                    ToolTip = 'Mark Description';
                }
            }
        }
    }
}