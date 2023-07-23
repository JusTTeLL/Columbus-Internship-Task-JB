table 50102 "Auto Model"
{
    Caption = 'Auto Model';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Mark Code"; Code[20])
        {
            Caption = 'Mark Code';
        }
        field(2; "Model Code"; Code[20])
        {
            Caption = 'Model Code';
        }
        field(3; "Description"; Code[20])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Model Code")
        {
            Clustered = true;
        }
        key(Key2; "Mark Code") { }
    }
}