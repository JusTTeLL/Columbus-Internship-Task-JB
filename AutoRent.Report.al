report 50100 "AutoRentReport"
{
    Caption = 'Auto Rent Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = AutoRentReport;

    dataset
    {
        dataitem("AutoRentHeader"; "Auto Rent Header")
        {
            RequestFilterFields = "Auto No.";
            column(Auto_No_; "Auto No.") { }
            column(Client_No_; "Client No.") { }
            column(Reserved_From_Header; "Reserved From Header") { }
            column(Reserved_Till_Header; "Reserved Till Header") { }
            column(Rent_Header_Sum; "Rent Header Sum") { }

            dataitem(Auto_; Auto)
            {
                DataItemLink = "Auto No." = field("Auto No.");
                column(Auto_Mark_Code; "Auto Mark Code") { }
                column(Auto_Model_Code; "Auto Model Code") { }
                column(Rent_Price; "Rent Price") { }
            }

            dataitem("Auto Rent Line"; "Auto Rent Line")
            {
                DataItemLink = "Column No." = field("Client No.");
                column(Price; Price) { }
                column(QntSum; QntSum) { }
                column(Quantity; Quantity) { }
                column(Description; Description) { }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Name; myInt)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    rendering
    {
        layout(AutoRentReport)
        {
            Type = RDLC;
            LayoutFile = 'AutoRentReport.rdl';
        }
    }

    var
        myInt: Integer;
}