page 50100 "Auto Setup"
{
    Caption = 'Auto Setup';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Auto Setup";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Primary Key"; Rec."Primary Key")
                {
                    ToolTip = 'Primary key';
                }
                field("Car Number Series"; Rec."Car Number Series")
                {
                    ToolTip = 'Car Number Series';
                }
                field("Rent Card Series"; Rec."Rent Card Series")
                {
                    ToolTip = 'Rent Card Series';
                }
                field("Attachment"; Rec."Attachment")
                {
                    ToolTip = 'Attachment';
                }
            }
        }
    }
}