unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, DB, ADODB, umain, ComCtrls,
  ToolWin;

type
  TForm3 = class(TForm)
    GridPanel1: TGridPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    DBMemo1: TDBMemo;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in [#8,' ','А'..'Я','a'..'я']) then key:=#0;
end;

procedure TForm3.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in [',',#8,'0'..'9']) then key:=#0;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  ADOQuery1.Active := True;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  ADOQuery1.Open;
  ADOQuery1.RecNo := Form1.ADOQuery2.Recno;
end;

procedure TForm3.ToolButton1Click(Sender: TObject);
begin
  if Application.MessageBox('Добавить?','',MB_YESNO)=IDYES then
  begin
    ADOQuery1.Append;
  end;
end;

procedure TForm3.ToolButton2Click(Sender: TObject);
begin
  if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
  begin
    ADOQuery1.Delete;
  end;
end;

procedure TForm3.ToolButton7Click(Sender: TObject);
begin
try
  ADOQuery1.Post;
  Form1.ADOQuery2.Close;
  Form1.ADOQuery2.Open;
  Form1.SetDBGrid;
except
   Application.MessageBox('Проверьте введенныю информацию','Ошибка',MB_OK);
end;
end;

end.
