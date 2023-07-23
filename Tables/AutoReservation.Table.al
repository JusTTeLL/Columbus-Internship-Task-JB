table 50105 "Auto Reservation"
{
    Caption = 'Auto Reservation';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Auto No."; Code[20])
        {
            Caption = 'Auto number';
            TableRelation = Auto;
        }
        field(2; "Column No."; Code[20])
        {
            Caption = 'Column number';
        }
        field(3; "Client No."; Code[20])
        {
            Caption = 'Client number';
            TableRelation = Customer;
        }
        field(4; "Reservered From"; Date)
        {
            Caption = 'Auto reserved from';

            trigger OnLookup()
            var
                BadReserved: Label 'Reservation ending date can not be earlier than starting date';
                DublicateDate: Label 'Reservation date dublicates for the same auto';
            begin
                if "Reservered Till" < "Reservered From" then
                    Error(BadReserved);
            end;
        }
        field(5; "Reservered Till"; Date)
        {
            Caption = 'Auto reserved till';

            trigger OnLookup()
            var
                BadReserved: Label 'Reservation ending date can not be earlier than starting date';
                DublicateDate: Label 'Reservation date dublicates for the same auto';
            begin
                if "Reservered Till" < "Reservered From" then
                    Error(BadReserved);
            end;
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