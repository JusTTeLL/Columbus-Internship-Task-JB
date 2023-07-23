table 50106 "Auto Damage"
{
    Caption = 'Auto Damage';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Auto No."; Code[20])
        {
            Caption = 'Auto Number';
            TableRelation = Auto;
        }
        field(2; "Column No."; Code[20])
        {
            Caption = 'Column Number';
        }
        field(3; "Damage Date"; Date)
        {
            Caption = 'Date';
        }
        field(4; "Damage Description"; Text[100])
        {
            Caption = 'Desription';
        }
        field(5; "Status"; Enum "Auto Damage Status")
        {
            Caption = 'Status';
        }
    }

    keys
    {
        key(Key1; "Column No.")
        {
            Clustered = true;
        }
    }
}