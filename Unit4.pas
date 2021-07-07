unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, ComCtrls, Mask, UMain, DB, ADODB, comobj, oleserver,
  ToolWin;

type
  TForm5 = class(TForm)
    GridPanel1: TGridPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label7: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label8: TLabel;
    DBComboBox1: TDBComboBox;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    Image1: TImage;
    DBNavigator1: TDBNavigator;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBEdit7: TDBEdit;
    DBRichEdit1: TDBRichEdit;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    Edit1: TEdit;
    ToolButton6: TToolButton;
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure DBEdit2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Loadpic;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBEdit1Change(Sender: TObject);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
    procedure Edit1Click(Sender: TObject);
    procedure DBEdit3DblClick(Sender: TObject);
    procedure DBEdit8DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    procedure DateTimeShow;
    procedure DateTimeChange;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit7, Unit6, Unit12, Unit13, Unit14;

{$R *.dfm}

procedure TForm5.DateTimePicker1Change(Sender: TObject);
begin
  DateTimeChange;
end;

procedure TForm5.DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in (['0'..'9', '.',',',#10, #8, #13])) then
    Key := #0;
  if (Key = #13) then
  if key = ',' then key := '.';
end;

procedure TForm5.DateTimePicker2Change(Sender: TObject);
begin
  DateTimeChange;
end;

procedure TForm5.DateTimeShow;
begin
  DateTimePicker1.Date := ADOQuery1.FieldByName('Дата_заказа').AsDateTime;
  //DateTimePicker1.Time := ADOQuery1.FieldByName('Время_заказа').AsDateTime;
  //DateTimePicker1.Time := (ADOQuery1.FieldByName('Время_заказа') as TDateField).DisplayFormat := 'hh : mm : ss'
end;

procedure TForm5.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
  DateTimeShow;
end;

procedure TForm5.DateTimeChange;
begin
  ADOQuery1.Edit;
  ADOQuery1.FieldByName('Дата_заказа').Value := DateToStr(DateTimePicker1.Date);
  ADOQuery1.FieldByName('Время_заказа').AsDateTime := StrToDateTime(DateToStr(DateTimePicker1.Date)+' '+TimeToStr(DateTimePicker1.Time));
end;

procedure TForm5.DBEdit1Change(Sender: TObject);
begin
  //Loadpic;
end;

procedure TForm5.DBEdit2DblClick(Sender: TObject);
begin
  FormSender := 'idu';
  Form10.ShowModal;
end;

procedure TForm5.DBEdit3DblClick(Sender: TObject);
begin
  Form12.ShowModal;
end;

procedure TForm5.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in [',',#8,'0'..'9']) then key:=#0;
end;

procedure TForm5.DBEdit8DblClick(Sender: TObject);
begin
  Form13.ShowModal;
end;

procedure TForm5.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  Loadpic;
end;

procedure TForm5.Edit1Change(Sender: TObject);
begin
  DBEdit7.Text := Edit1.Text;
end;

procedure TForm5.Edit1Click(Sender: TObject);
begin
try
begin
    if DBEdit6.Text = '' then
      DBEdit6.Text := '0';
    Edit1.Text := IntToStr((StrToInt(DBEdit5.Text) * StrToInt(DBComboBox1.Text) - StrToInt(DBEdit6.Text)));
    DBEdit6.Text := Edit1.Text;
end;
except;
end;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
  ADOQuery1.Active := True;
  DateTimeShow;
  ADOQuery1.RecNo := Form1.ADOQuery4.Recno;
  Loadpic;
end;

procedure TForm5.Loadpic;
begin
  try
    image1.Picture.LoadFromFile(GetCurrentDir+'/Pics/'+ADOQuery1.FieldByName('image').Text);
  except
    image1.Picture:=nil;
  end;
end;

procedure TForm5.ToolButton1Click(Sender: TObject); // Печать чека
var WordApp, WD, NewDoc : OleVariant;
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
    NewDoc.bookmarks.item('z1').range.insertafter(ADOQuery1.FieldByName('id_заказ').Value);
    NewDoc.bookmarks.item('z2').range.insertafter(ADOQuery1.FieldByName('дата_заказа').Value);
    NewDoc.bookmarks.item('z3').range.insertafter(ADOQuery1.FieldByName('Фамилия').Value);
    NewDoc.bookmarks.item('z31').range.insertafter(ADOQuery1.FieldByName('Имя').Value);
    NewDoc.bookmarks.item('z32').range.insertafter(ADOQuery1.FieldByName('Отчество').Value);
    NewDoc.bookmarks.item('z4').range.insertafter(ADOQuery1.FieldByName('Имя_услуга').Value);
    NewDoc.bookmarks.item('z5').range.insertafter(ADOQuery1.FieldByName('количество_заказ').Value);
    NewDoc.bookmarks.item('z6').range.insertafter(ADOQuery1.FieldByName('Цена_услуга').Value);
end;

procedure TForm5.ToolButton3Click(Sender: TObject);
begin
  Form14.ShowModal;
    {
    if Application.MessageBox('Добавить?','',MB_YESNO)=IDYES then
      begin
        ADOQuery1.Append;
      end;
  }
end;

procedure TForm5.ToolButton5Click(Sender: TObject);
begin
  if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
  begin
    ADOQuery1.Delete;
    Form1.ADOQuery4.Refresh;
  end;
end;

procedure TForm5.ToolButton7Click(Sender: TObject);
begin
  try
    ADOQuery1.Post;
    Form1.ADOQuery4.Refresh;
  except
    Application.MessageBox('Проверьте введенныю информацию','Ошибка',MB_OK);
  end;
end;

end.
