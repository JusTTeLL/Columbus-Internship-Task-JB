page 50108 "Auto Damage"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Damage";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Auto No."; Rec."Auto No.")
                {
                    ToolTip = 'Damaged Auto Number';
                }
                field("Column No."; Rec."Column No.")
                {
                    ToolTip = 'Column Number';
                }
                field("Damage Date"; Rec."Damage Date")
                {
                    ToolTip = 'Damage date';
                }
                field("Damage Description"; Rec."Damage Description")
                {
                    ToolTip = 'Damage description';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Status of damage';
                }
            }
        }
    }
}