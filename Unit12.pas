unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm12 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    ConfirmBtn: TButton;
    CancelBtn: TButton;
    procedure FormShow(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure ConfirmBtnClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses UMain, Unit4, Unit14;

{$R *.dfm}

procedure TForm12.CancelBtnClick(Sender: TObject);
begin
  Form12.CloseModal;
end;

procedure TForm12.ConfirmBtnClick(Sender: TObject);
begin
  Form14.DBEdit3.Text := ADOQuery1.FieldByName('id_клиент').Text;
  Form12.CloseModal;
end;

procedure TForm12.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Close;
end;

procedure TForm12.FormShow(Sender: TObject);
begin
  ADOQuery1.Active := True;
   with DBGrid1.Columns do
  begin
    Items[0].Width := 25;
    Items[1].Width := 160;
    Items[2].Width := 45;
    Items[3].Width := 160;
    //Items[4].Width := 160;
   // Items[5].Width := 60;
    ////Items[6].Width := 400;
  end;
end;

end.
