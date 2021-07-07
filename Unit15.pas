unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, ToolWin, ComCtrls, ADODB, StdCtrls, Mask, oleserver, comobj;

type
  TForm15 = class(TForm)
    ADOQueryBin: TADOQuery;
    ToolBar1: TToolBar;
    DataSourceBin: TDataSource;
    DBNavigator1: TDBNavigator;
    ToolButton1: TToolButton;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label7: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQueryMover: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimeShow;
    procedure DateTimeChange;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Edit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

uses UMain, Unit7, Unit13;

{$R *.dfm}

procedure TForm15.DateTimeChange;
begin
  ADOQueryBin.Edit;
  ADOQueryBin.FieldByName('Дата').Value := DateToStr(DateTimePicker1.Date);
 // ADOQueryBin.FieldByName('Время_заказа').AsDateTime := StrToDateTime(DateToStr(DateTimePicker1.Date)+' '+TimeToStr(DateTimePicker1.Time));
end;

procedure TForm15.DateTimePicker1Change(Sender: TObject);
begin
  DateTimeChange;
end;

procedure TForm15.DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in (['0'..'9', '.',',',#10, #8, #13])) then
    Key := #0;
  if (Key = #13) then
  if key = ',' then key := '.';
end;

procedure TForm15.DateTimeShow;
begin
   DateTimePicker1.Date := ADOQueryBin.FieldByName('Дата').AsDateTime;
end;

procedure TForm15.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  DateTimeShow;
end;

procedure TForm15.Edit1Click(Sender: TObject);
begin
try


except

end;
end;

procedure TForm15.FormShow(Sender: TObject);
begin
  ADOQueryBin.Open;
  Form15.ADOQueryBin.RecNo := Form1.ADOQueryBin.RecNo;
  DateTimeShow;
end;

procedure TForm15.ToolButton1Click(Sender: TObject);
var
  WordApp, WD, NewDoc : OleVariant;
  i: Integer;
begin
 WD := ExtractFilePath(ParamStr(0))+'Отчет\Чек.dot';
  try
    WordApp := CreateOleObject('Word.Application');
  except
    ShowMessage('');
    exit;
  end;
  WordApp.visible := True;
    NewDoc := WordApp.documents.add(WD);
    NewDoc.bookmarks.item('z1').range.insertafter(ADOQueryBin.FieldByName('№').Value);
    NewDoc.bookmarks.item('z2').range.insertafter(ADOQueryBin.FieldByName('дата').Text);
    NewDoc.bookmarks.item('z3').range.insertafter(ADOQueryBin.FieldByName('Фамилия').Value);
    NewDoc.bookmarks.item('z31').range.insertafter(ADOQueryBin.FieldByName('Имя').Value);
    NewDoc.bookmarks.item('z32').range.insertafter(ADOQueryBin.FieldByName('Отчество').Value);
    NewDoc.bookmarks.item('z4').range.insertafter(ADOQueryBin.FieldByName('Имя_услуга').Value);
    NewDoc.bookmarks.item('z5').range.insertafter(ADOQueryBin.FieldByName('количество').Text);
    NewDoc.bookmarks.item('z6').range.insertafter(ADOQueryBin.FieldByName('Цена_услуга').Value);

end;

procedure TForm15.ToolButton3Click(Sender: TObject);
var
  i: Integer;
begin
{
    ADOQuery1.Open;
    ADOQuery2.Open;
    ADOQuery2.Append;
    ADOQuery1.RecNo := ADOQueryBin.RecNo;
    for I := 1 to ADOQuery1.FieldCount -1 do
    begin
      ADOQuery2.Fields[i].Value := ADOQuery1.Fields[i].Value;
      ADOQuery2.Post;
    end;
    ADOQuery1.Delete;
}
try
begin
  ADOQueryMover.Close;
  ADOQueryMover.SQL.Add('INSERT INTO Заказы SELECT * FROM Корзина WHERE id_заказ = ' + DBEdit1.Text);
  ADOQueryMover.ExecSQL;
  ADOQueryMover.Close;
  ADOQueryMover.SQL.Clear;
  ADOQueryMover.SQL.Add('DELETE FROM Корзина WHERE id_заказ = ' + DBEdit1.Text);
  ADOQueryMover.ExecSQL;
  ADOQueryMover.Close;
  Form1.ADOQuery4.Close;
  Form1.ADOQuery4.Open;
  Form1.ADOQueryBin.Close;
  Form1.ADOQueryBin.Open;
  Form1.SetDBGrid;
end;
except
end;
end;

end.
