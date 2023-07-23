table 50107 "Auto Rent Header"
{
    Caption = 'Auto Rent Header List';
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
            TableRelation = Customer;

            trigger OnValidate()
            begin
                CheckBlockedClient();
                CheckClientWallet();
            end;
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

            trigger OnValidate()
            begin
                CheckReservationFromDate();
            end;
        }
        field(7; "Reserved Till Header"; Date)
        {
            Caption = 'Reserved till';

            trigger OnValidate()
            begin
                CheckReservationTillDate();
            end;
        }
        field(8; "Rent Header Sum"; Decimal)
        {
            Caption = 'Sum';

            trigger OnLookup()
            begin
                GetFinalSum();
            end;
        }
        field(9; "Status Rent Header"; Enum "Auto Rent Header Enum")
        {
            Caption = 'Status';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    local procedure CheckBlockedClient()
    var
        Customer: Record Customer;
    begin
        if Customer.Get(Rec."Client No.") then begin
            Customer.TestField(Blocked, Customer.Blocked::" ");
        end;
    end;

    local procedure CheckClientWallet()
    var
        CustomerWallet: Record "Cust. Ledger Entry";
        TotalSum: Decimal;
        BadSum: Label 'This customer has negative amount in bank';
    begin
        CustomerWallet.SetRange("Customer No.", rec."Client No.");
        if CustomerWallet.FindSet then begin
            repeat
                TotalSum += CustomerWallet."Amount";
            until CustomerWallet.Next = 0;
        end;
        if TotalSum > 0 then
            Error(BadSum);
    end;

    local procedure GetFinalSum()
    var
        Sums: Record "Auto Rent Line";
        TotalSum: Decimal;
    begin
        Sums.SetRange("Column No.", rec."Client No.");
        if Sums.FindSet then begin
            repeat
                TotalSum += Sums.QntSum;
            until Sums.Next = 0;
        end;
        "Rent Header Sum" := TotalSum;
    end;

    local procedure CheckReservationFromDate()
    var
        ReservationDate: Record "Auto Reservation";
        BadReservationDate: Label 'Date does not match with reservation date';
    begin
        ReservationDate.SetRange("Auto No.", rec."Auto No.");
        if ReservationDate.FindSet then begin
            if ("Reserved From Header" <> ReservationDate."Reservered From") then
                Error(BadReservationDate);
        end;
    end;

    local procedure CheckReservationTillDate()
    var
        ReservationDate: Record "Auto Reservation";
        BadReservationDate: Label 'Date does not match with reservation date';
    begin
        ReservationDate.SetRange("Auto No.", rec."Auto No.");
        if ReservationDate.FindSet then begin
            if ("Reserved Till Header" <> ReservationDate."Reservered Till") then
                Error(BadReservationDate);
        end;
    end;
}