program Project1;

uses
  Forms,
  UMain in 'UMain.pas' {Form1},
  Unit1 in 'Unit1.pas' {Form2},
  Unit2 in 'Unit2.pas' {Form3},
  Unit3 in 'Unit3.pas' {Form4},
  Unit4 in 'Unit4.pas' {Form5},
  Unit5 in 'Unit5.pas' {Form6},
  UAbout in 'UAbout.pas' {Form7},
  Unit8 in 'Unit8.pas' {Form8},
  Unit6 in 'Unit6.pas' {Form9},
  Unit7 in 'Unit7.pas' {Form10},
  UPrinting in 'UPrinting.pas',
  UPic in 'UPic.pas' {Form11},
  Unit12 in 'Unit12.pas' {Form12},
  Unit13 in 'Unit13.pas' {Form13},
  Unit14 in 'Unit14.pas' {Form14},
  Unit15 in 'Unit15.pas' {Form16},
  Unit17 in 'Unit17.pas' {Form17},
  Unit18 in 'Unit18.pas' {Form18};

{$R *.res}

begin
  Application.Initialize;
  //Application.ShowMainForm := False;
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm17, Form17);
  Application.CreateForm(TForm18, Form18);
  //Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
    Application.CreateForm(TForm14, Form14);
    Application.CreateForm(TForm13, Form13);
   Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm15, Form15);
  Application.Run;
end.
