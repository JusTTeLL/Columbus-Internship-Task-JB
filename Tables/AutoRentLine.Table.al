table 50108 "Auto Rent Line"
{
    Caption = 'Auto Rent Line';
    DataClassification = CustomerContent;

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
        field(3; "Type"; Enum "Auto Rent Line Enum")
        {
            Caption = 'Service Type';
        }
        field(4; "No."; Code[20])
        {
            Caption = 'Number';
            TableRelation =
                if ("Type" = const(Item)) Item
            else
            if (Type = const(Resource)) Resource;
        }
        field(5; "Description"; Code[100])
        {
            Caption = 'Description';
            trigger OnLookup()
            var
                Item: Record Item;
                Resource: Record Resource;
            begin
                case "Type" of
                    "Type"::Item:
                        if "No." <> '' then begin
                            Item.Get("No.");
                            Description := Item.Description;
                        end;
                    "Type"::Resource:
                        if "No." <> '' then begin
                            Resource.Get("No.");
                            Description := Resource.Name;
                        end;
                end;
            end;
        }
        field(6; "Quantity"; Decimal)
        {
            Caption = 'Quantity';
        }
        field(7; "Price"; Decimal)
        {
            Caption = 'Price';
            trigger OnLookup()
            var
                Item: Record Item;
                Resource: Record Resource;
            begin
                case "Type" of
                    "Type"::Item:
                        if "No." <> '' then begin
                            Item.Get("No.");
                            Price := Item."Unit Cost";
                        end;
                    "Type"::Resource:
                        if "No." <> '' then begin
                            Resource.Get("No.");
                            Price := Resource."Unit Cost";
                        end;
                end;
            end;
        }
        field(8; "QntSum"; Decimal)
        {
            Caption = 'Sum';
            trigger OnLookup()
            begin
                QntSum := Quantity * Price;
            end;
        }

    }

    keys
    {
        key(Key1; "Document No.")
        {
            Clustered = true;
        }
    }

    // trigger OnInsert()
    // var
    //     Item: Record "Item";
    //     Resource: Record "Resource";
    // begin
    //     case "Type" of
    //         "Type"::Item:
    //             if "No." <> '' then begin
    //                 Item.Get("No.");
    //                 Description := Item.Description;
    //                 Price := Item."Unit Cost";
    //             end;
    //         "Type"::Resource:
    //             if "No." <> '' then begin
    //                 Resource.Get("No.");
    //                 Description := Resource.Name;
    //                 Price := Resource."Unit Cost";
    //             end;
    //     end;
    // end;
}