unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, Mask, ExtCtrls, ToolWin, DB, ADODB, ComObj, oleserver;

type
  TForm14 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
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
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    Edit1: TEdit;
    DataSourceBin: TDataSource;
    ADOQueryBin: TADOQuery;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Panel1: TPanel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    Button2: TButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Loadpic;
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimeShow;
    procedure DateTimeChange;
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2DblClick(Sender: TObject);
    procedure DBEdit8DblClick(Sender: TObject);
    procedure DBEdit3DblClick(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses UMain, Unit7, Unit12, Unit13, Unit3;

{$R *.dfm}

procedure TForm14.Button1Click(Sender: TObject);
begin
try
begin
  if DBComboBox1.Text = '' then
    DBComboBox1.Text := '1';
   if DBEdit4.Text = '' then
        DBEdit4.Text := '0';
   if DBEdit6.Text = '' then
        DBEdit6.Text := '0';
    Edit1.Text := IntToStr((StrToInt(DBEdit5.Text) * StrToInt(DBComboBox1.Text) - StrToInt(DBEdit4.Text)));
    DBEdit6.Text := Edit1.Text;
end;
except;
end;
end;

procedure TForm14.Button2Click(Sender: TObject);   // ������ ������
var
discount: Double;
summa: double;
count: integer;
price: integer;
begin
case ComboBox1.ItemIndex of
  0: discount := 0;
  1: discount := 0.05;
  2: discount := 0.10;
  3: discount := 0.15;
  4: discount := 0.20;
  5: discount := 0.25;
  6: discount := 0.30;
  7: discount := 0.50;
  8: discount := 0.75;
end;
try
   if DBComboBox1.Text = '' then
    DBComboBox1.Text := '1';
   if DBEdit4.Text = '' then
        DBEdit4.Text := '0';
   if DBEdit6.Text = '' then
        DBEdit6.Text := '0';
   price := StrToInt(DBEdit5.Text);
   count:= StrToInt(DBComboBox1.Text);
   summa := price * count;
   discount := summa - (summa*discount);
   discount := Trunc(discount);
   DBEdit4.Text := FloatToStr(discount);
except

end;
end;

procedure TForm14.DateTimeChange;
begin
  ADOQueryBin.Edit;
  ADOQueryBin.FieldByName('����').Value := DateToStr(DateTimePicker1.Date);
  //ADOQueryBin.FieldByName('�����_������').AsDateTime := StrToDateTime(DateToStr(DateTimePicker1.Date)+' '+TimeToStr(DateTimePicker1.Time));
end;

procedure TForm14.DateTimePicker1Change(Sender: TObject);
begin
  DateTimeChange;
end;

procedure TForm14.DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in (['0'..'9', '.',',',#10, #8, #13])) then
    Key := #0;
  if (Key = #13) then
  if key = ',' then key := '.';
end;

procedure TForm14.DateTimeShow;
begin
   DateTimePicker1.Date := ADOQueryBin.FieldByName('����').AsDateTime;
end;

procedure TForm14.DBEdit2DblClick(Sender: TObject);
begin
  FormSender := 'idu';
  Form10.ShowModal;
end;

procedure TForm14.DBEdit3DblClick(Sender: TObject);
begin
  Form12.ShowModal;
end;

procedure TForm14.DBEdit8DblClick(Sender: TObject);
begin
  Form13.ShowModal;
end;

procedure TForm14.Edit1Click(Sender: TObject);
begin
try
begin
   if DBEdit4.Text = '' then
        DBEdit4.Text := '0';
   if DBEdit6.Text = '' then
        DBEdit6.Text := '0';
    Edit1.Text := IntToStr((StrToInt(DBEdit5.Text) * StrToInt(DBComboBox1.Text) - StrToInt(DBEdit4.Text)));
    DBEdit6.Text := Edit1.Text;
end;
except;
end;
end;

procedure TForm14.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in [',',#8,'0'..'9']) then key:=#0;
end;

procedure TForm14.FormActivate(Sender: TObject);
begin
  ADOQueryBin.Append;
  DBEdit3.Text := ClientId;
  ClientId := '';
end;

procedure TForm14.FormShow(Sender: TObject);
begin
  ADOQueryBin.Open;
  ADOQueryBin.Active := True;
  DateTimeShow;
  //ADOQueryBin.RecNo := Form1.ADOQuery4.Recno;
  Loadpic;
  // ��������� ������� ����
  DateTimePicker1.Date := Now;
end;

procedure TForm14.Loadpic;
begin
  try
   // image1.Picture.LoadFromFile(GetCurrentDir+'/Pics/'+ADOQueryBin.FieldByName('image').Text);
  except
   // image1.Picture:=nil;
  end;
end;

procedure TForm14.ToolButton1Click(Sender: TObject);
begin
try
  ADOQueryBin.Post;
  Form1.ADOQueryBin.Close;
  Form1.ADOQueryBin.Open;
  Form1.SetDBGrid;
except
    Application.MessageBox('��������� ��������� ����������','������',MB_OK);

end;
end;

procedure TForm14.ToolButton3Click(Sender: TObject);
var WordApp, WD, NewDoc : OleVariant;
  i: Integer;
begin
  WD := ExtractFilePath(ParamStr(0))+'�����\���.dot';
  try
    WordApp := CreateOleObject('Word.Application');
  except
    ShowMessage('');
    exit;
  end;
  WordApp.visible := True;
    NewDoc := WordApp.documents.add(WD);
    NewDoc.bookmarks.item('z1').range.insertafter(ADOQueryBin.FieldByName('�').Value);
    NewDoc.bookmarks.item('z2').range.insertafter(ADOQueryBin.FieldByName('����').Value);
    NewDoc.bookmarks.item('z3').range.insertafter(ADOQueryBin.FieldByName('�������').Value);
    NewDoc.bookmarks.item('z31').range.insertafter(ADOQueryBin.FieldByName('���').Value);
    NewDoc.bookmarks.item('z32').range.insertafter(ADOQueryBin.FieldByName('��������').Value);
    NewDoc.bookmarks.item('z4').range.insertafter(ADOQueryBin.FieldByName('���_������').Value);
    NewDoc.bookmarks.item('z5').range.insertafter(ADOQueryBin.FieldByName('����������').Value);
    NewDoc.bookmarks.item('z6').range.insertafter(ADOQueryBin.FieldByName('����_������').Value);
end;

end.
