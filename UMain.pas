unit UMain;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, ExtCtrls, DB, ADODB, Grids, DBGrids, ToolWin,
  StdCtrls, DBCtrls, Buttons, ImgList, IWImageList,OleServer, ComObj;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    fvr1: TMenuItem;
    StatusBar1: TStatusBar;
    N1: TMenuItem;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;                                          
    DBRichEdit1: TDBRichEdit;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    BtnAddOrder: TButton;
    Panel2: TPanel;
    Image1: TImage;
    N2: TMenuItem;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Image2: TImage;
    ImageList1: TImageList;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    Edit1: TEdit;
    Label1: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton2: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    N8: TMenuItem;
    N501: TMenuItem;
    N502: TMenuItem;
    N503: TMenuItem;
    N504: TMenuItem;
    N505: TMenuItem;
    Panel3: TPanel;
    ToolButton10: TToolButton;
    ToolButton8: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    PopupMenu1: TPopupMenu;
    Button2: TButton;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    ADOQuery5: TADOQuery;
    ADOQuery6: TADOQuery;
    ADOQuery7: TADOQuery;
    ADOQuery8: TADOQuery;
    TabSheet5: TTabSheet;
    ADOQueryBin: TADOQuery;
    DataSourceBin: TDataSource;
    DBGrid5: TDBGrid;
    ToolButton4: TToolButton;
    procedure BtnAddOrderClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure LoadPicsToBitButtons;
    procedure SetDBGrid;
    procedure DoWithStatusBar;
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid3DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure DBGrid3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure LoadPic;
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Search;
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure N501Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure N12Click(Sender: TObject);
    procedure CreateWord(const visible: Boolean);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
   procedure DoConDB;
    { Public declarations }
  end;

var
  Form1: TForm1;
  FormSender: String;
  otag: String;
  sa1, sa2, sa3, sa4: String;  // ���������� SQL ��������
  Word1: Variant;

implementation

uses Unit1, UAbout, Unit2, Unit3, Unit4, Unit5, Unit8, Unit6, UPic, Unit14,
  Unit15;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  if Application.MessageBox('��������?','',MB_YESNO)=IDYES then
  begin
  case PageControl1.ActivePageIndex of
  0:  ADOQuery1.Append;
  1:  ADOQuery2.Append;
  2:  ADOQuery3.Append;
  3:  ADOQuery4.Append;
  end;
  end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:  Form2.ShowModal;
    1:  Form3.ShowModal;
    2:  Form4.ShowModal;
    3:  Form5.ShowModal;
    4:  begin Form15.ShowModal;    end;
  end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
  id: Integer;
  sqlTextStore: string;
begin
  if Application.MessageBox('�������?','',MB_YESNO)=IDYES then
  begin
  case PageControl1.ActivePageIndex of
  0:  ADOQuery1.Delete;
  1:  ADOQuery2.Delete;
  2:  ADOQuery3.Delete;
  3:  begin
    id := ADOQuery4.Fields[0].AsInteger;
    sqlTextStore := ADOQuery4.SQL.Text;
    ADOQuery4.Active := False;
    ADOQuery4.SQL.Clear;
    ADOQuery4.SQL.Add('DELETE FROM ������ WHERE id_����� = '+IntToStr(id));
    ADOQuery4.ExecSQL;
    ADOQuery4.Active := False;
    ADOQuery4.SQL.Clear;
    ADOQuery4.SQL.Text := sqlTextStore;
    ADOQuery4.Active := True;
    SetDBGrid;
  end;
  4:  begin
    id := ADOQueryBin.Fields[0].AsInteger;
    sqlTextStore := ADOQueryBin.SQL.Text;
    ADOQueryBin.Active := False;
    ADOQueryBin.SQL.Clear;
    ADOQueryBin.SQL.Add('DELETE FROM ������� WHERE id_����� = '+IntToStr(id));
    ADOQueryBin.ExecSQL;
    ADOQueryBin.Active := False;
    ADOQueryBin.SQL.Clear;
    ADOQueryBin.SQL.Text := sqlTextStore;
    ADOQueryBin.Active := True;
    SetDBGrid;
  end;
  end;
  end;
end;

procedure TForm1.BtnAddOrderClick(Sender: TObject);
begin
  Form14.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Search;
end;

procedure TForm1.CreateWord(const visible: Boolean);
begin
  Word1 := CreateOleObject('Word.Application');
  Word1.visible := visible;
  Word1.Documents.Add;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
{
    ADOQuery1.Edit;
    ADOQuery2.Edit;
    ADOQuery3.Edit;
    ADOQuery4.Edit;
}
  LoadPic;
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if  (Column.FieldName='��������������/ ���������')  then begin
  with  DBGrid1.Canvas do begin
  Brush.Color:=clWhite;
  FillRect(Rect);
  //Font.Name:='Wingdings';
  //Font.Size:=-14;
if (ADOQuery1.FieldByName('��������������/ ���������').Value= True) then begin
  Font.Color:=clblack;
  TextOut(Rect.Right-2-
  DBGrid1.Canvas.TextWidth('��'),
  Rect.Top+1,'��');
end else begin
 Font.Color:=clBlack;
 TextOut(Rect.Right-2- DBGrid1.Canvas.TextWidth('���'),
  Rect.Top+1,'���');
end;
end;
end;
end;

procedure TForm1.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect; // ����������� ����������� WideMemo
  Field: TField; State: TGridDrawState);
var
  Grid : TStringGrid;
  Texto : String;
  Rectangulo : TRect;
begin
  Rectangulo:=Rect;
  Grid := TStringGrid(Sender);
  if Field.IsBlob then begin
    Grid.Canvas.FillRect(Rect);
    Texto := Field.AsString;
    DrawText( Grid.Canvas.Handle,
    PChar(Texto),
    StrLen(PChar(Texto)),
    Rectangulo,
    DT_WORDBREAK);
    end;

end;

procedure TForm1.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  LoadPic;
end;

procedure TForm1.DBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
var
  Grid : TStringGrid;
  Texto : String;
  Rectangulo : TRect;
begin
  Rectangulo:=Rect;
  Grid := TStringGrid(Sender);
  if Field.IsBlob then begin
    Grid.Canvas.FillRect(Rect);
    Texto := Field.AsString;
    DrawText( Grid.Canvas.Handle,
    PChar(Texto),
    StrLen(PChar(Texto)),
    Rectangulo,
    DT_WORDBREAK);
    end;

end;

procedure TForm1.DBGrid3DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
var
  Grid : TStringGrid;
  Texto : String;
  Rectangulo : TRect;
begin
  Rectangulo:=Rect;
  Grid := TStringGrid(Sender);
  if Field.IsBlob then begin
    Grid.Canvas.FillRect(Rect);
    Texto := Field.AsString;
    DrawText( Grid.Canvas.Handle,
    PChar(Texto),
    StrLen(PChar(Texto)),
    Rectangulo,
    DT_WORDBREAK);
    end;
end;

procedure TForm1.DBGrid3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  PopUpPt : TPoint;
begin
  PopUpPt := DBGrid1.ClientToScreen(point(X, Y));
  if button = mbRight then PopupMenu1.Popup(PopUpPt.X, PopUpPt.Y);
end;

procedure TForm1.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.FieldName = '��������' then
try
      if ADOQuery4.FieldByName('��������').AsInteger = 0 then
       DBGrid4.Canvas.Brush.Color := ClRed;
except
end;
try
if Column.FieldName = '����������' then
      if ADOQuery4.FieldByName('����������').AsInteger > 1 then
       DBGrid4.Canvas.Brush.Color := ClYellow;
except
end;
if Column.FieldName = '�� ����������' then
      if ADOQuery4.FieldByName('�� ����������').Text = 'True' then
       DBGrid4.Canvas.Brush.Color := ClLime;
    DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
if  (Column.FieldName='�� ����������')  then begin
  with  DBGrid4.Canvas do begin
  Brush.Color:=clWhite;
  FillRect(Rect);
  //Font.Name:='Wingdings';
  //Font.Size:=-14;
if (ADOQuery4.FieldByName('�� ����������').Value= True) then begin
  Font.Color:=clblack;
  TextOut(Rect.Right-2-
  DBGrid4.Canvas.TextWidth('��'),
  Rect.Top+1,'��');
end else begin
 Font.Color:=clBlack;
 TextOut(Rect.Right-2- DBGrid4.Canvas.TextWidth('���'),
  Rect.Top+1,'���');
end;
end;
end;
end;

procedure TForm1.DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.FieldName = '��������' then
  try
      if ADOQueryBin.FieldByName('��������').AsInteger = 0 then
       DBGrid5.Canvas.Brush.Color := ClRed; except

  end;
if Column.FieldName = '����������' then
      if ADOQueryBin.FieldByName('����������').AsInteger > 1 then
       DBGrid5.Canvas.Brush.Color := ClYellow;
if Column.FieldName = '�� ����������' then
      if ADOQueryBin.FieldByName('�� ����������').Text = 'True' then
       DBGrid5.Canvas.Brush.Color := ClLime;
    DBGrid5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
if  (Column.FieldName='�� ����������')  then begin
  with  DBGrid5.Canvas do begin
  Brush.Color:=clWhite;
  FillRect(Rect);
  //Font.Name:='Wingdings';
  //Font.Size:=-14;
if (ADOQueryBin.FieldByName('�� ����������').Value= True) then begin
  Font.Color:=clblack;
  TextOut(Rect.Right-2-
  DBGrid5.Canvas.TextWidth('��'),
  Rect.Top+1,'��');
end else begin
 Font.Color:=clBlack;
 TextOut(Rect.Right-2- DBGrid4.Canvas.TextWidth('���'),
  Rect.Top+1,'���');
end;
end;
end;
end;


procedure TForm1.DoWithStatusBar;
var
  n, c: Integer;
begin
  case PageControl1.ActivePageIndex of
  0: begin n := ADOQuery1.RecNo; c := ADOQuery1.RecordCount end  ;
  1: begin n := ADOQuery2.RecNo; c := ADOQuery2.RecordCount end  ;
  2: begin n := ADOQuery3.RecNo; c := ADOQuery3.RecordCount end  ;
  3: begin n := ADOQuery4.RecNo; c := ADOQuery4.RecordCount end  ;
  end;

  StatusBar1.Panels.Items[0].Text := '����� ������� ������: ' + IntToStr(n);
  StatusBar1.Panels.Items[1].Text := '���������� �������: ' + IntToStr(c);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  Search;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Button2Click(Self);
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False;
  if Application.MessageBox('�������?','����� �� ���������', MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
    CanClose := True;
    Application.MainForm.Close;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DoConDB;
  // ����� ��������
  LoadPicsToBitButtons;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ADOQuery5.Active := True;
  ADOQuery6.Active := True;
  ADOQuery7.Active := True;
  ADOQuery8.Active := True;
//  Form9.Visible := False;
  Image2.Picture.LoadFromFile('Pics\LOGO.jpg');
  LoadPic;
  DoWithStatusBar;
  //// ���������� SQL ��������
  sa1 := ADOQuery1.SQL.Text;
  sa2 := ADOQuery2.SQL.Text;
  sa3 := ADOQuery3.SQL.Text;
  sa4 := ADOQuery4.SQL.Text;
  SetDBGrid;
  Form15.ADOQueryBin.Active := True;
end;

procedure TForm1.N501Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery2.Close;
  ADOQuery3.Close;
  ADOQuery4.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery2.SQL.Clear;
  ADOQuery3.SQL.Clear;
  ADOQuery4.SQL.Clear;
  if Sender = N501 then
  begin                     // ���������� �� ID
    ADOQuery1.SQL.Add(sa1+' ORDER BY id_������');
    ADOQuery2.SQL.Add(sa2+' ORDER BY id_���������');
    ADOQuery3.SQL.Add(sa3+' ORDER BY id_������');
    ADOQuery4.SQL.Add(sa4+' ORDER BY id_�����');
  end;
  if Sender = N502 then     // �� �������
  begin
    ADOQuery1.SQL.Add(sa1+'ORDER BY id_������');
    ADOQuery2.SQL.Add(sa2+'ORDER BY id_���������');
    ADOQuery3.SQL.Add(sa3+'ORDER BY �������');
    ADOQuery4.SQL.Add(sa4+'ORDER BY �������.�������');
  end;
  if Sender = N503 then //    �� ���������
  begin
    ADOQuery1.SQL.Add(sa1+'ORDER BY ����_������');
    ADOQuery2.SQL.Add(sa2+'ORDER BY id_���������');
    ADOQuery3.SQL.Add(sa3+'ORDER BY id_������');
    ADOQuery4.SQL.Add(sa4+'ORDER BY ������.����_������');
  end;
  if Sender = N504 then // �� ��������
  begin
    ADOQuery1.SQL.Add(sa1+'ORDER BY ���_������');
    ADOQuery2.SQL.Add(sa2+'ORDER BY id_���������');
    ADOQuery3.SQL.Add(sa3+'ORDER BY id_������');
    ADOQuery4.SQL.Add(sa4+'ORDER BY ������.���_������');
  end;
  if Sender = N505 then // �� ����
  begin
    ADOQuery1.SQL.Add(sa1+'ORDER BY ���_������');
    ADOQuery2.SQL.Add(sa2+'ORDER BY id_���������');
    ADOQuery3.SQL.Add(sa3+'ORDER BY id_������');
    ADOQuery4.SQL.Add(sa4+'ORDER BY ���������_�����');
  end;
  ADOQuery1.SQL.SaveToFile('Test.txt');
  ADOQuery1.Open;
  ADOQuery2.Open;
  ADOQuery3.Open;
  ADOQuery4.Open;
  SetDBGrid;
end;

procedure TForm1.Image1DblClick(Sender: TObject);
begin
  Form11.ShowModal;
end;

procedure TForm1.LoadPic;
begin
  try
    image1.Picture.LoadFromFile(GetCurrentDir+'/Pics/'+ADOQuery1.FieldByName('Image').Text);
  except
    image1.Picture:=nil;
  end;
end;

procedure TForm1.LoadPicsToBitButtons;
begin
  imagelist1.GetBitmap(0,bitbtn1.Glyph);
  imagelist1.GetBitmap(2,bitbtn2.Glyph);
  imagelist1.GetBitmap(1,bitbtn3.Glyph);
  ImageList1.GetBitmap(3, SpeedButton1.Glyph);
end;

procedure TForm1.N12Click(Sender: TObject); // ������ ������ �����
var
  WordTable, WordRow: OleVariant;
  I: Integer;
begin
  ADOQuery5.RecNo := 1;
   CreateWord(False);
  Word1.activeDocument.PageSetup.Orientation := 0; // �������
  Word1.ActiveDocument.Range.InsertBefore ('�����-����');
  Word1.ActiveDocument.Range.InsertAfter (#13+#10+'�� ������'+#13+#10);
  Word1.ActiveDocument.Range.InsertAfter ('������ ����� D-Fitness'+#13+#10+#13+#10);
  Word1.ActiveDocument.Range.ParagraphFormat.Alignment := 1;
  Word1.ActiveDocument.Range.Font.Name := 'Times New Roman';
  Word1.ActiveDocument.Range.Font.Size := 16;
  Word1.ActiveDocument.Range.Font.Bold := True;
  Word1.ActiveDocument.Range.Characters.Last.Font.Size := 12;
  Word1.ActiveDocument.Range.Characters.Last.Font.Bold := False;
  Word1.ActiveDocument.Tables.Add(Word1.ActiveDocument.Range.Characters.Last,1,ADOQuery5.Fields.Count);
  WordTable := Word1.ActiveDocument.Tables.Item(1);
  begin
    Word1.ActiveDocument.tables.item(1).columns.item(1).PreferredWidth := 50;
    Word1.ActiveDocument.tables.item(1).columns.item(2).PreferredWidth := 250;
    Word1.ActiveDocument.tables.item(1).columns.item(3).PreferredWidth := 90;
  end;
    for I := 1 to ADOQuery5.fieldcount do
      begin
      WordTable.Cell(1,i).range.text := (ADOQuery5.Fields[i-1].FieldName);
      WordTable.Cell(1,i).range.font.bold := True;
      end;
  with ADOQuery5 do
    while not eof do begin
    WordRow := WordTable.Rows.Add;
    WordTable.Cell(WordRow.Index, 1).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 2).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 3).Range.ParagraphFormat.Alignment := 0;
    for I := 1 to FieldCount do
      begin
      WordTable.Cell(WordRow.Index, i).Range.Text := Fields[i-1].AsString;
      WordTable.Cell(WordRow.Index,i).range.font.bold := False;
      end;
      ADOQuery5.Next;
    end;
    WordTable.borders.enable := True;
    Word1.ActiveDocument.Range.Characters.Last.ParagraphFormat.Alignment := 0;
    Word1.ActiveDocument.Range.InsertAfter(#13+#10);
    Word1.ActiveDocument.Range.InsertAfter(#13+#10);
    Word1.ActiveDocument.Range.InsertAfter ('����:  ');
    Word1.ActiveDocument.Range.InsertAfter (Date);
    Word1.visible := True;
end;

procedure TForm1.N13Click(Sender: TObject); // ������ ������ �����������
var
  WordTable, WordRow: OleVariant;
  I: Integer;
begin
  ADOQuery7.RecNo := 1;
  CreateWord(True);
  Word1.activeDocument.PageSetup.Orientation := 0;
  Word1.ActiveDocument.Range.InsertBefore ('������ �����������');
  Word1.ActiveDocument.Range.InsertAfter (#13+#10+'��������'+#13+#10);
  Word1.ActiveDocument.Range.InsertAfter ('������ ���� D-Fitness'+#13+#10+#13+#10);
  Word1.ActiveDocument.Range.ParagraphFormat.Alignment := 1;
  Word1.ActiveDocument.Range.Font.Name := 'Times New Roman';
  Word1.ActiveDocument.Range.Font.Size := 16;
  Word1.ActiveDocument.Range.Font.Bold := True;
  Word1.ActiveDocument.Range.Characters.Last.Font.Size := 12;
  Word1.ActiveDocument.Range.Characters.Last.Font.Bold := False;
  Word1.ActiveDocument.Tables.Add(Word1.ActiveDocument.Range.Characters.Last,1,ADOQuery7.Fields.Count);
  WordTable := Word1.ActiveDocument.Tables.Item(1);
  begin
    Word1.ActiveDocument.tables.item(1).columns.item(1).PreferredWidth := 50;
    Word1.ActiveDocument.tables.item(1).columns.item(2).PreferredWidth := 250;
    Word1.ActiveDocument.tables.item(1).columns.item(3).PreferredWidth := 90;
  end;
    for I := 1 to ADOQuery7.fieldcount do
      begin
      WordTable.Cell(1,i).range.text := (ADOQuery6.Fields[i-1].FieldName);
      WordTable.Cell(1,i).range.font.bold := True;
      end;
  with ADOQuery7 do
    while not eof do begin
    WordRow := WordTable.Rows.Add;
    WordTable.Cell(WordRow.Index, 1).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 2).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 3).Range.ParagraphFormat.Alignment := 0;
    for I := 1 to FieldCount do
      begin
      WordTable.Cell(WordRow.Index, i).Range.Text := Fields[i-1].AsString;
      WordTable.Cell(WordRow.Index,i).range.font.bold := False;
      end;
      ADOQuery7.Next;
    end;
    WordTable.borders.enable := True;
    Word1.ActiveDocument.Range.Characters.Last.ParagraphFormat.Alignment := 0;
    Word1.ActiveDocument.Range.InsertAfter(#13+#10);
    Word1.ActiveDocument.Range.InsertAfter(#13+#10);
    Word1.ActiveDocument.Range.InsertAfter ('����:  ');
    Word1.ActiveDocument.Range.InsertAfter (Date);
    Word1.visible := True;
end;

procedure TForm1.N14Click(Sender: TObject); // ������ ������ ��������
var
  WordTable, WordRow: OleVariant;
  I: Integer;
begin
  Adoquery7.RecNo := 1;
   CreateWord(True);
  Word1.activeDocument.PageSetup.Orientation := 0; // �������
  Word1.ActiveDocument.Range.InsertBefore ('������ ��������');
  Word1.ActiveDocument.Range.InsertAfter (#13+#10+'������ �����'+#13+#10);
  Word1.ActiveDocument.Range.InsertAfter ('D-Fitness'+#13+#10+#13+#10);
  Word1.ActiveDocument.Range.ParagraphFormat.Alignment := 1;
  Word1.ActiveDocument.Range.Font.Name := 'Times New Roman';
  Word1.ActiveDocument.Range.Font.Size := 16;
  Word1.ActiveDocument.Range.Font.Bold := True;
  Word1.ActiveDocument.Range.Characters.Last.Font.Size := 12;
  Word1.ActiveDocument.Range.Characters.Last.Font.Bold := False;
  Word1.ActiveDocument.Tables.Add(Word1.ActiveDocument.Range.Characters.Last,1,Adoquery7.Fields.Count);
  WordTable := Word1.ActiveDocument.Tables.Item(1);
  begin
    Word1.ActiveDocument.tables.item(1).columns.item(1).PreferredWidth := 50;
    Word1.ActiveDocument.tables.item(1).columns.item(2).PreferredWidth := 250;
    Word1.ActiveDocument.tables.item(1).columns.item(3).PreferredWidth := 90;
  end;
    for I := 1 to Adoquery7.fieldcount do
      begin
      WordTable.Cell(1,i).range.text := (Adoquery7.Fields[i-1].FieldName);
      WordTable.Cell(1,i).range.font.bold := True;
      end;
  with Adoquery7 do
    while not eof do begin
    WordRow := WordTable.Rows.Add;
    WordTable.Cell(WordRow.Index, 1).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 2).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 3).Range.ParagraphFormat.Alignment := 0;
    for I := 1 to FieldCount do
      begin
      WordTable.Cell(WordRow.Index, i).Range.Text := Fields[i-1].AsString;
      WordTable.Cell(WordRow.Index,i).range.font.bold := False;
      end;
      Adoquery7.Next;
    end;
    WordTable.borders.enable := True;
    Word1.ActiveDocument.Range.Characters.Last.ParagraphFormat.Alignment := 0;
    Word1.ActiveDocument.Range.InsertAfter(#13+#10);
    Word1.ActiveDocument.Range.InsertAfter(#13+#10);
    Word1.ActiveDocument.Range.InsertAfter ('����:  ');
    Word1.ActiveDocument.Range.InsertAfter (Date);
    Word1.visible := True;
end;

procedure TForm1.N15Click(Sender: TObject); // ������ ������ �������
var
  WordTable, WordRow: OleVariant;
  I: Integer;
begin
  adoquery8.RecNo := 1;
   CreateWord(False);
  Word1.activeDocument.PageSetup.Orientation := 1;
  Word1.ActiveDocument.Range.InsertBefore ('������ �������');
  Word1.ActiveDocument.Range.InsertAfter ('������ ����� D-Fitness'+#13+#10+#13+#10);
  Word1.ActiveDocument.Range.ParagraphFormat.Alignment := 1;
  Word1.ActiveDocument.Range.Font.Name := 'Times New Roman';
  Word1.ActiveDocument.Range.Font.Size := 16;
  Word1.ActiveDocument.Range.Font.Bold := True;
  Word1.ActiveDocument.Range.Characters.Last.Font.Size := 12;
  Word1.ActiveDocument.Range.Characters.Last.Font.Bold := False;
  Word1.ActiveDocument.Tables.Add(Word1.ActiveDocument.Range.Characters.Last,1,adoquery8.Fields.Count);
  WordTable := Word1.ActiveDocument.Tables.Item(1);
  begin
    Word1.ActiveDocument.tables.item(1).columns.item(1).PreferredWidth := 50;
    Word1.ActiveDocument.tables.item(1).columns.item(2).PreferredWidth := 150;
    Word1.ActiveDocument.tables.item(1).columns.item(3).PreferredWidth := 90;
  end;
    for I := 1 to adoquery8.fieldcount do
      begin
      WordTable.Cell(1,i).range.text := (adoquery8.Fields[i-1].FieldName);
      WordTable.Cell(1,i).range.font.bold := True;
      end;
  with adoquery8 do
    while not eof do begin
    WordRow := WordTable.Rows.Add;
    WordTable.Cell(WordRow.Index, 1).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 2).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 3).Range.ParagraphFormat.Alignment := 0;
    for I := 1 to FieldCount do
      begin
      WordTable.Cell(WordRow.Index, i).Range.Text := Fields[i-1].AsString;
      WordTable.Cell(WordRow.Index,i).range.font.bold := False;
      end;
      adoquery8.Next;
    end;
    WordTable.borders.enable := True;
    Word1.ActiveDocument.Range.Characters.Last.ParagraphFormat.Alignment := 0;
    Word1.ActiveDocument.Range.InsertAfter(#13+#10);
    Word1.ActiveDocument.Range.InsertAfter(#13+#10);
    Word1.ActiveDocument.Range.InsertAfter ('����:  ');
    Word1.ActiveDocument.Range.InsertAfter (Date);
    Word1.visible := True;
end;

procedure TForm1.N16Click(Sender: TObject);
begin
  BitBtn2Click(Self);
end;

procedure TForm1.N17Click(Sender: TObject);
begin
  BitBtn3Click(Self);
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  UAbout.Form7.ShowModal;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  BitBtn1Click(Self);
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  BitBtn2Click(Self);
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  BitBtn3Click(Self);
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
  DoWithStatusBar;
  case PageControl1.ActivePageIndex of
  0: begin
    DBRichEdit1.Visible := True;
    BtnAddOrder.Visible := True;
    Image1.Visible := True;
    N501.Enabled := True;
    N502.Enabled := False;
    N503.Enabled := True;
    N504.Enabled := True;
  end;
  1: begin
    DBRichEdit1.Visible := False;
    BtnAddOrder.Visible := True;
    Image1.Visible := False;
    N501.Enabled := False;
    N502.Enabled := True;
    N503.Enabled := False;
    N504.Enabled := False;
  end;
  2: begin
    DBRichEdit1.Visible := False;
    BtnAddOrder.Visible := True;
    Image1.Visible := False;
    N501.Enabled := False;
    N502.Enabled := True;
    N503.Enabled := False;
    N504.Enabled := False;
  end;
  3: begin
    DBRichEdit1.Visible := False;
    BtnAddOrder.Visible := True;
    Image1.Visible := False;
    N501.Enabled := True;
    N502.Enabled := True;
    N503.Enabled := True;
    N504.Enabled := True;
    end;
  4: begin
    DBRichEdit1.Visible := False;
    BtnAddOrder.Visible := True;
    Image1.Visible := False;
    N501.Enabled := True;
    N502.Enabled := True;
    N503.Enabled := True;
    N504.Enabled := True;
    end;
end;
end;

procedure TForm1.Search;
begin
  ADOQuery1.Close;
  ADOQuery2.Close;
  ADOQuery3.Close;
  ADOQuery4.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery2.SQL.Clear;
  ADOQuery3.SQL.Clear;
  ADOQuery4.SQL.Clear;
  if Edit1.Text = '' then
  begin
    ADOQuery1.SQL.Add(sa1);
    ADOQuery2.SQL.Add(sa2);
    ADOQuery3.SQL.Add(sa3);
    ADOQuery4.SQL.Add(sa4);
  end else
  begin
    ADOQuery1.SQL.Add(sa1 + ' WHERE ���_������ LIKE ''' + Edit1.Text + '%''');
    ADOQuery2.SQL.Add(sa2 + ' WHERE ������� LIKE ''' + Edit1.Text + '%''');
    ADOQuery3.SQL.Add(sa3 + ' WHERE ������� LIKE ''' + Edit1.Text + '%''');
    ADOQuery4.SQL.Add('SELECT id_����� AS �, ������.���_������, �������.�������, �������.���, �������.��������, ����_������ AS ����, �����_������ AS �����, ���������.������� AS ���������, ���������_����� AS [�� ����������],');
    ADOQuery4.SQL.Add(' ����������_����� AS ����������, ��������_����� AS ��������, ��������_������ AS ��������, ������');
    ADOQuery4.SQL.Add('FROM ������, ������, �������, ���������');
    ADOQuery4.SQL.Add('WHERE (������.id_������ = ������.id_������ AND ������.id_������ = �������.id_������ AND ������.id_��������� = ���������.id_���������)');
    ADOQuery4.SQL.Add(' AND ������.���_������ LIKE '''+  Edit1.Text + '%''');
  end;
  ADOQuery1.Open;
  ADOQuery2.Open;
  ADOQuery3.Open;
  ADOQuery4.Open;
  ADOQueryBin.Open;
  SetDBGrid;
end;

procedure TForm1.SetDBGrid;
begin
  with DBGrid1.Columns do
  begin
   Items[5].Visible := False;
   Items[6].Visible := False;
   Items[0].Width := 25;
   Items[1].Width := 180;
   Items[2].Width := 45;
   Items[3].Width := 400;
   Items[4].Width := 100;
   Items[5].Width := 200;
  end;
  with DBGrid2.Columns do
  begin
    Items[0].Width := 25;
    Items[1].Width := 160;
    Items[2].Width := 45;
    Items[3].Width := 160;
    Items[4].Width := 160;
    Items[5].Width := 60;
    Items[6].Width := 400;
  end;
  with DBGrid3.Columns do
  begin
    Items[0].Width := 25;
    Items[1].Width := 135;
    Items[2].Width := 135;
    Items[3].Width := 135;
    Items[4].Width := 75;
    Items[5].Width := 60;
    Items[6].Width := 200;
    Items[7].Width := 200;
  end;
  with DBGrid4.Columns do
  begin
    Items[0].Width := 25;
    Items[1].Width := 135;
    Items[2].Width := 135;
    Items[3].Width := 135;
    Items[4].Width := 75;
    Items[5].Width := 60;
    Items[6].Width := 100;
    Items[7].Width := 100;
  end;
  with DBGrid5.Columns do
  begin
    Items[0].Width := 25;
    Items[1].Width := 135;
    Items[2].Width := 135;
    Items[3].Width := 135;
    Items[4].Width := 75;
    Items[5].Width := 60;
    Items[6].Width := 100;
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  DBGrid: TDBGrid;
  i: Integer;
begin
    for I := 0 to 3 do
    begin
      DBGrid := FindComponent('DBGrid'+IntToStr(i+1)) as TDBGrid;
      if DBGrid.ReadOnly = True then
      begin
        DBGrid.ReadOnly := False;
        SpeedButton1.Glyph.Assign(nil);
        ImageList1.GetBitmap(4, SpeedButton1.Glyph);
      end
        else
        begin
          DBGrid.ReadOnly := True;
          SpeedButton1.Glyph.Assign(nil);
          ImageList1.GetBitmap(3, SpeedButton1.Glyph);
        end;
    end;
end;

procedure TForm1.ToolButton11Click(Sender: TObject);
begin
  Form8.ShowModal;
end;

procedure TForm1.ToolButton15Click(Sender: TObject);
begin
  Form1.Visible := False;
  Form9.Show;
end;


procedure TForm1.ToolButton1Click(Sender: TObject);
begin
case (Sender As TControl).Tag of
  1: Form2.ShowModal;
  2: Form3.ShowModal;
  3: Form4.ShowModal;
  4: Form5.ShowModal;
  5: begin  otag := '0'; Form6.ShowModal; end;
  6: begin  otag := '1'; Form6.ShowModal; end;
  7: Form9.ShowModal;
end;
end;


procedure TForm1.DoConDB;
const
  ConnStr = 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=%s;Persist Security Info=True;Jet OLEDB:Database Password= 123���';
begin
  // ����������� � ��
  if ADOConnection1.Connected = True then
    ADOConnection1.Connected := False;
  try
    if ADOConnection1.Connected = False then
    begin
      ADOConnection1.Close;
      ADOConnection1.ConnectionString := Format(ConnStr,[ ExtractFilePath(ParamStr(0))+'�������_��������.accdb' ]);
      ADOConnection1.Open;
      ADOQuery1.Active := True;
      ADOQuery2.Active := True;
      ADOQuery3.Active := True;
      ADOQuery4.Active := True;
      ADOQueryBin.Active := True;
    end;
  except
    ShowMessage('�� ������� ������������ � ��');
  end;
end;
end.
