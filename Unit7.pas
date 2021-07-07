unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, ExtCtrls, StdCtrls, ComCtrls, DBCtrls, Grids,
  DBGrids;

type
  TForm10 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    DBRichEdit1: TDBRichEdit;
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N2: TMenuItem;
    Panel2: TPanel;
    ConfirmBtn: TButton;
    CancelBtn: TButton;
    Edit1: TEdit;
    Button1: TButton;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure SortBy(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DrawGridCheckBox(Canvas: TCanvas; Rect: TRect; Checked: boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DoWithStatusBar;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LoadPic;
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure ConfirmBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure CollumnsWidth;
    procedure Search;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses UMain, UAbout, Unit6, Unit1, UPrinting, Unit4, Unit14;

{$R *.dfm}

procedure TForm10.DBGrid1CellClick(Column: TColumn);
begin
  DoWithStatusBar;
  LoadPic;
    if Column.FieldName = 'Тип_услуга' then
    if ADOQuery1.FieldByName('Тип_услуга').Value = True then
      Begin
        ADOQuery1.Edit;
        ADOQuery1.FieldByName('Тип_услуга').Value := False;
        ADOQuery1.Post
      End
    else
      Begin
        ADOQuery1.Edit;
        ADOQuery1.FieldByName('Тип_услуга').Value := True;
        ADOQuery1.Post
      End;
end;

procedure TForm10.DBGrid1ColEnter(Sender: TObject);
begin
  with TDBGrid(Sender) do
      if SelectedField.FieldName = 'Тип_услуга' then //
        Options := Options - [dgEditing]
      else
        Options := Options + [dgEditing]
end;

procedure TForm10.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

if Column.FieldName = 'Цена_услуга' then
try
      if ADOQuery1.FieldByName('Цена_услуга').AsInteger <=500 then
       DBGrid1.Canvas.Brush.Color := Cllime;
except

end;
try
      if ADOQuery1.FieldByName('Цена_услуга').AsInteger >=1000 then
       DBGrid1.Canvas.Brush.Color := ClRed;
except

end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);


if Column.FieldName = 'Тип_услуга' then //
    if Column.Field.AsBoolean = True then
      DrawGridCheckBox(DBGrid1.Canvas, Rect, true)
    else
      DrawGridCheckBox(DBGrid1.Canvas, Rect, false);
end;

procedure TForm10.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  DoWithStatusBar;
  //LoadPic;
end;

procedure TForm10.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  LoadPic;
end;

procedure TForm10.DoWithStatusBar;
begin
  StatusBar1.Panels.Items[0].Text := 'Номер текущей записи: '+   IntToStr(ADOQuery1.RecNo);
  StatusBar1.Panels.Items[1].Text := 'Количество записей: '+   IntToStr(ADOQuery1.RecordCount);
end;

procedure TForm10.DrawGridCheckBox(Canvas: TCanvas; Rect: TRect;
  Checked: boolean);
var
  DrawFlags: Integer;
begin
 Canvas.TextRect(Rect, Rect.Left + 1, Rect.Top + 1, ' ');
  DrawFrameControl(Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT);
  DrawFlags := DFCS_BUTTONCHECK or DFCS_ADJUSTRECT;// DFCS_BUTTONCHECK
  if Checked then
    DrawFlags := DrawFlags or DFCS_CHECKED;
  DrawFrameControl(Canvas.Handle, Rect, DFC_BUTTON, DrawFlags);
end;

procedure TForm10.Edit1Change(Sender: TObject);
begin
  Search;
end;

procedure TForm10.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Button1Click(Self);

end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormSender := '';
end;

procedure TForm10.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if (fsModal in FormState) then Close else
begin
  CanClose := False;
  if Application.MessageBox('Закрыть?','Выход из программы', MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
    CanClose := True;
    Application.MainForm.Close;
  end;
end;
end;

procedure TForm10.FormCreate(Sender: TObject);
begin
 // FormatDateTime('dd.mm.yyyy',datetimepicker1.date)
end;

procedure TForm10.FormShow(Sender: TObject);
begin
  //Form1.DoConDB;
  ADOQuery1.Active := True;
  ADOQuery2.Active := True;
  CollumnsWidth;
  DoWithStatusBar;
  LoadPic;
  // Для авторизации клиента:
    DBGrid1.ReadOnly := True;
    ConfirmBtn.Visible := False;
    CancelBtn.Visible := False;
  // Для выбора id услуги
  if FormSender = 'idu' then
  begin
    ConfirmBtn.Visible := True;
    CancelBtn.Visible := True;
  end;
end;

procedure TForm10.LoadPic;
begin
  try
    image1.Picture.LoadFromFile(GetCurrentDir+'/Pics/'+ADOQuery1.FieldByName('Image').Text);
  except
    image1.Picture:=nil;
  end;
end;

procedure TForm10.N10Click(Sender: TObject);
begin
  Form9.Show;
  Form10.Visible := False;
  //Form10.Hide;
end;

procedure TForm10.N21Click(Sender: TObject);
begin
  SortBy(Sender);
  CollumnsWidth;
end;

procedure TForm10.N2Click(Sender: TObject);
begin
  Printing.Print;
end;

procedure TForm10.Button1Click(Sender: TObject);
begin
  Search;
end;

procedure TForm10.CancelBtnClick(Sender: TObject);
begin
  Form10.CloseModal;
end;

procedure TForm10.CollumnsWidth;
begin
  with DBGrid1.Columns do
  begin
    Items[5].Visible := False;
    Items[6].Visible := False;
    Items[3].Visible := False;
    Items[0].Width := 80;
    Items[1].Width := 250;
    Items[2].Width := 80;
    Items[4].Width := 140;
    Items[0].Title.Caption := 'ID';
    Items[1].Title.Caption := 'Название';
    Items[2].Title.Caption := 'Стоимость';
    Items[4].Title.Caption := 'Индивидуальная/групповая';
  end;
end;

procedure TForm10.ConfirmBtnClick(Sender: TObject);
var
  i: Integer;
begin
  Form14.DBEdit2.Text := ADOQuery1.FieldByName('id_услуга').Text;
{
    if DBGrid1.SelectedRows.Count>1 then
     for i := 1 to DBGrid1.SelectedRows.Count    do
      //ADOQuery1.Bookmark := DBGrid1.SelectedRows[i];
      ADOQuery3.Fields[i].Value := ADOQuery1.Fields[i].Value;
      ADOQuery1.Next;
}



  Form10.CloseModal;
end;

procedure TForm10.Search;
begin
  if Edit1.Text = '' then
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Услуги' + Edit1.Text);
    ADOQuery1.Open;
    CollumnsWidth;
  end
  else
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Услуги WHERE Имя_услуга LIKE ''' + Edit1.Text + '%''');
    //ShowMessage(ADOQuery1.SQL.Text);
    ADOQuery1.Open;
    CollumnsWidth;
  end;
end;

procedure TForm10.N3Click(Sender: TObject);
begin
  Form7.ShowModal;
end;

procedure TForm10.N9Click(Sender: TObject);
begin
  Close;
end;


procedure TForm10.SortBy;
var
  s: String;
begin
s := 'SELECT * FROM Услуги';
  case (Sender as TMenuItem).Tag of
  1: s := 'SELECT * FROM Услуги ORDER BY id_услуга' ;
  2: s := 'SELECT * FROM Услуги ORDER BY Имя_услуга';
  3: s := 'SELECT * FROM Услуги ORDER BY Цена_услуга *1';
  4: s := 'SELECT * FROM Услуги ORDER BY Тип_услуга';
  end;
  ADOQuery1.Active := False;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(s);
  ADOQuery1.Active := True;
end;

end.
