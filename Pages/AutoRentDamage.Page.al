page 50113 "Auto Rent Damage"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Rent Damage";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Document Number';
                }
                field("Column No."; Rec."Column No.")
                {
                    ToolTip = 'Column Number';
                }
                field(Date; Rec.Date)
                {
                    ToolTip = 'Date';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Description';
                }
            }
        }
    }
}