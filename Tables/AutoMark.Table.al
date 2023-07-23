table 50101 "Auto Mark"
{
    Caption = 'Auto Mark';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Mark Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; "Description"; Code[20])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Mark Code")
        {
            Clustered = true;
        }
    }
}