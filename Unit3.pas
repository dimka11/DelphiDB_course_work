unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, umain, DB, ADODB, StdCtrls, Mask, ComCtrls,oleserver, comobj,
  ToolWin;

type
  TForm4 = class(TForm)
    DBNavigator1: TDBNavigator;
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
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBRichEdit1: TDBRichEdit;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton3Click(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  ClientId: string;

implementation

uses Unit14;

{$R *.dfm}

procedure TForm4.DBEdit2Change(Sender: TObject);
var
  l: Integer;
begin
  if Length(TDBEdit(Sender).Text)>0 then
  begin
    l:=TDBEdit(Sender).SelStart;
    TDBEdit(Sender).Text:=AnsiUpperCase(TEdit(Sender).Text[1])+Copy(TEdit(Sender).Text, 2, Length(TEdit(Sender).Text));
    TDBEdit(Sender).SelStart:=l;
  end;
end;

procedure TForm4.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in [#8,' ','а'..'я','А'..'Я']) then key:=#0;
end;


procedure TForm4.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in [',',#8,'0'..'9']) then key:=#0;
end;

procedure TForm4.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in [',',' ',#8,'0'..'9']) then key:=#0;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  ADOQuery1.Active := True;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  ADOQuery1.Open;
  ADOQuery1.RecNo := Form1.ADOQuery3.Recno;
end;

procedure TForm4.ToolButton1Click(Sender: TObject);
begin
  if Application.MessageBox('Добавить?','',MB_YESNO)=IDYES then
  begin
    ADOQuery1.Append;
    DBEdit2.SetFocus;
  end;
end;

procedure TForm4.ToolButton2Click(Sender: TObject);
begin
  if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
  begin
    ADOQuery1.Delete;
    Form1.ADOQuery3.Close;
    Form1.ADOQuery3.Open;
    Form1.SetDBGrid;
  end;
end;

procedure TForm4.ToolButton3Click(Sender: TObject);
var WordApp, WD, NewDoc : OleVariant;
  i: Integer;
begin
 WD := ExtractFilePath(ParamStr(0))+'Отчет\Договор.dot';
  try
    WordApp := CreateOleObject('Word.Application');
  except
    ShowMessage('');
    exit;
  end;
  WordApp.visible := True;
  try
  begin
    NewDoc := WordApp.documents.add(WD);
    NewDoc.bookmarks.item('z2').range.insertafter(ADOQuery1.FieldByName('Фамилия').Value);
    NewDoc.bookmarks.item('z3').range.insertafter(ADOQuery1.FieldByName('Имя').Value);
    NewDoc.bookmarks.item('z4').range.insertafter(ADOQuery1.FieldByName('Отчество').Value);
    NewDoc.bookmarks.item('z5').range.insertafter(ADOQuery1.FieldByName('Фамилия').Value);
    NewDoc.bookmarks.item('z6').range.insertafter(ADOQuery1.FieldByName('Имя').Value);
    NewDoc.bookmarks.item('z7').range.insertafter(ADOQuery1.FieldByName('Отчество').Value);
    NewDoc.bookmarks.item('z8').range.insertafter(ADOQuery1.FieldByName('Телефон').Value);
    NewDoc.bookmarks.item('z1').range.insertafter(Date).Value;
  end;
  except

  end;
end;


procedure TForm4.ToolButton7Click(Sender: TObject);
begin
try
  ADOQuery1.Post;
  Form1.ADOQuery3.Close;
  Form1.ADOQuery3.Open;
  Form1.SetDBGrid;
except
   Application.MessageBox('Проверьте введенныю информацию','Ошибка',MB_OK);
end;
end;

procedure TForm4.ToolButton9Click(Sender: TObject);
begin
  ClientId := DBEdit1.Text;
  Form14.ShowModal;
end;

end.
