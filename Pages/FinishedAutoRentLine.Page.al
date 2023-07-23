page 50116 "Finished Auto Rent Line"
{
    Caption = 'Finished Auto Rent Line';
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = "Auto Rent Line";

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
                    ToolTip = 'Column Number That Should Be Matching With Header Number';
                }
                field(Type; Rec.Type)
                {
                    ToolTip = 'Service Type';
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Number';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Description';
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Quantity';
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Price';
                }
                field(QntSum; Rec.QntSum)
                {
                    ToolTip = 'Total Sum';
                }
            }
        }
    }
}