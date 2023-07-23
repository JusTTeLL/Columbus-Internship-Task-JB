table 50110 "Finished Auto Rent Header"
{
    Caption = 'Finished Auto Rent Header List';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[35])
        {
            Caption = 'Number';
            TableRelation = "Auto Setup";
        }
        field(2; "Client No."; Code[20])
        {
            Caption = 'Client Number';
        }
        field(3; "Driving License"; Media)
        {
            Caption = 'Driving license';
        }
        field(4; "Date"; Date)
        {
            Caption = 'Date';
        }
        field(5; "Auto No."; Code[20])
        {
            Caption = 'Auto Number';
            TableRelation = Auto;
        }
        field(6; "Reserved From Header"; Date)
        {
            Caption = 'Reserved from';
        }
        field(7; "Reserved Till Header"; Date)
        {
            Caption = 'Reserved till';
        }
        field(8; "Rent Header Sum"; Decimal)
        {
            Caption = 'Sum';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }
}