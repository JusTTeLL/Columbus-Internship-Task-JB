table 50103 "Auto"
{
    Caption = 'Auto Model';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Auto No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Auto Name"; Text[20])
        {
            Caption = 'Name';
        }
        field(3; "Auto Mark Code"; Code[20])
        {
            Caption = 'Mark';
            TableRelation = "Auto Mark";
        }
        field(4; "Auto Model Code"; Code[20])
        {
            Caption = 'Model';
            TableRelation = "Auto Model" where("Mark Code" = field("Auto Mark Code"));
        }
        field(5; "Year Of Manufacture"; Integer)
        {
            Caption = 'Year Of Manufacture';
            trigger OnValidate()
            var
                BadYearError: Label 'Year Of Manufacture can not be greater then this year';
            begin
                if "Year Of Manufacture" > 2023 then
                    Error(BadYearError);
            end;
        }
        field(6; "Civil Insurance"; Date)
        {
            Caption = 'Civil Insurance Date';
        }
        field(7; "Auto TI"; Date)
        {
            Caption = 'Technical Insurance Date';
        }
        field(8; "Location Code"; Code[25])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(9; "Rent Service"; Code[25])
        {
            Caption = 'Rent Service';
            TableRelation = Resource;
        }
        field(10; "Rent Price"; Decimal)
        {
            Caption = 'Rent Price';
            FieldClass = FlowField;
            CalcFormula = lookup(Resource."Unit Price" where("No." = field("Rent Service")));
        }
    }

    keys
    {
        key(Key1; "Auto No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        AutoNumberSetup: Record "Auto Number Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
    begin
        if "Auto No." = '' then begin
            AutoNumberSetup.Get();
            AutoNumberSetup.TestField("Auto Nos");
            "Auto No." := NoSeriesManagement.GetNextNo(AutoNumberSetup."Auto Nos", WorkDate(), true);
        end;
    end;
}