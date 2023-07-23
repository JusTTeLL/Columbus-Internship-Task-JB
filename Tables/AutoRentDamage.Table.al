table 50109 "Auto Rent Damage"
{
    Caption = 'Auto Rent Damage';
    DataClassification = ToBeClassified;

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
        field(3; "Date"; Date)
        {
            Caption = 'Date';
        }
        field(4; "Description"; Text[100])
        {
            Caption = 'Desription';
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