page 50104 "Auto Number Setup"
{
    Caption = 'Auto Number Setup';
    PageType = Card;
    UsageCategory = Administration;
    ApplicationArea = All;
    SourceTable = "Auto Number Setup";
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Auto Nos"; Rec."Auto Nos")
                {
                    ToolTip = 'Auto No Series';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;
}