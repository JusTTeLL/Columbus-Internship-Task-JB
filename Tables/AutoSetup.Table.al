table 50100 "Auto Setup"
{
    Caption = 'Auto Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary key';
        }
        field(2; "Car Number Series"; Code[35])
        {
            Caption = 'Car Number Series';
        }
        field(3; "Rent Card Series"; Code[20])
        {
            Caption = 'Rent Card Series';
        }
        field(4; "Attachment"; Code[100])
        {
            Caption = 'Attachment';
        }
    }

    keys
    {
        key(Key1; "Car Number Series")
        {
            Clustered = true;
        }
    }
}