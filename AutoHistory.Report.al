report 50101 "Auto Rent History Rent"
{
    Caption = 'Auto Rent History Rent';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = AutoHistoryReport;

    dataset
    {
        dataitem("Auto Rent Header"; "Auto Rent Header")
        {
            RequestFilterFields = "Reserved From Header", "Reserved Till Header";
            column(Auto_No_; "Auto No.") { }
            column(Reserved_From_Header; "Reserved From Header") { }
            column(Reserved_Till_Header; "Reserved Till Header") { }
            column(Client_No_; "Client No.") { }
            column(Rent_Header_Sum; "Rent Header Sum") { }

            dataitem(Auto; Auto)
            {
                DataItemLink = "Auto No." = field("Auto No.");
                column(Auto_Mark_Code; "Auto Mark Code") { }
                column(Auto_Model_Code; "Auto Model Code") { }
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
        layout(AutoHistoryReport)
        {
            Type = RDLC;
            LayoutFile = 'AutoHistory.rdl';
        }
    }

    var
        myInt: Integer;
}