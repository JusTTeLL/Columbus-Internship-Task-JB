table 50104 "Auto Number Setup"
{
    Caption = 'Auto Number Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(10; "Auto Nos"; Code[20])
        {
            Caption = 'Auto No Series';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Primary Key") { Clustered = true; }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Primary Key") { }
        fieldgroup(Brick; "Primary Key") { }
    }

    trigger OnInsert()
    begin
        InitDefaultValues();
    end;

    procedure InsertIfNotExists()
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert(true);
        end;
    end;

    local procedure InitDefaultValues()
    begin

    end;
}