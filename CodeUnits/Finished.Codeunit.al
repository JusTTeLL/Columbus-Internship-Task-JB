codeunit 50100 "Finished Rent"
{
    trigger OnRun()
    // begin
    //     //perkelia duomenis i finished table
    //     //perkelia damage lentele is vienos i kita
    //     //istrina existing header irasa kiek supranta mano galva
    // end;

    begin
        Message(Text000, Today);
    end;

    var
        Text000: Label 'The current date is: %1';
}