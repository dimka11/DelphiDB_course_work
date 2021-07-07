unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  TForm13 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

uses UMain, Unit4, Unit14;

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
  Form14.DBEdit8.Text := ADOQuery1.FieldByName('id_сотрудник').Text;
  Form13.CloseModal;
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
  Form13.CloseModal;
end;

procedure TForm13.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Close;
end;

procedure TForm13.FormShow(Sender: TObject);
begin
  ADOQuery1.Active := True;
 with DBGrid1.Columns do
  begin
    Items[0].Width := 25;
    Items[1].Width := 160;
    Items[2].Width := 45;
    Items[3].Width := 160;
   // Items[4].Width := 160;
   // Items[5].Width := 60;
    //Items[6].Width := 400;
  end;
end;

end.
