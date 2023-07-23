table 50111 "Finished Auto Rent Line"
{
    Caption = 'Finished Auto Rent Line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document Number';
        }
        field(2; "Column No."; Code[20])
        {
            Caption = 'Column Number';
        }
        field(3; "Type"; Enum "Auto Rent Line Enum")
        {
            Caption = 'Service Type';
        }
        field(4; "No."; Code[20])
        {
            Caption = 'Number';
        }
        field(5; "Description"; Code[100])
        {
            Caption = 'Description';
        }
        field(6; "Quantity"; Decimal)
        {
            Caption = 'Quantity';
        }
        field(7; "Price"; Decimal)
        {
            Caption = 'Price';
        }
        field(8; "QntSum"; Decimal)
        {
            Caption = 'Sum';
        }

    }

    keys
    {
        key(Key1; "Document No.")
        {
            Clustered = true;
        }
    }
}