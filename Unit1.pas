unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, UMain, StdCtrls, Mask, ExtDlgs, DB, ADODB,
  ComCtrls, ToolWin, ActnMan, ActnCtrls, Buttons, OleServer, ComObj;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Label4: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label5: TLabel;
    DBMemo2: TDBMemo;
    Label6: TLabel;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    DBEdit4: TDBEdit;
    ToolButton7: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LoadPic;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBEdit4DblClick(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  curdir: String;

implementation

{$R *.dfm}

procedure TForm2.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in [#8,' ','А'..'Я','a'..'я']) then key:=#0;
end;

procedure TForm2.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in [',',#8,'0'..'9']) then key:=#0;
end;

procedure TForm2.DBEdit4DblClick(Sender: TObject);
var
  nFileName: String;
begin
  if OpenPictureDialog1.Execute then
  begin
    nFileName := ExtractFileName(OpenPictureDialog1.FileName);
    CopyFile( PChar(OpenPictureDialog1.FileName), PChar(curdir + '\Pics\' + nFileName), false);
  ADOQuery1.Edit;
  ADOQuery1.FieldValues['Image'] := nFileName;
  end;

end;

procedure TForm2.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  LoadPic;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ADOQuery1.Active := True;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  ADOQuery1.Open;
  ADOQuery1.RecNo := Form1.ADOQuery1.Recno;
  LoadPic;
  curdir := GetCurrentDir;
end;

procedure TForm2.LoadPic;
begin
  try
    image1.Picture.LoadFromFile(GetCurrentDir+'/Pics/'+ADOQuery1.FieldByName('Image').Text);
  except
    image1.Picture:=nil;
  end;
end;

procedure TForm2.ToolButton1Click(Sender: TObject);
begin
  if Application.MessageBox('Добавить?','',MB_YESNO)=IDYES then
  begin
    ADOQuery1.Append;
    DBEdit2.SetFocus;
  end;
end;

procedure TForm2.ToolButton2Click(Sender: TObject);
begin
  if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
  begin
    ADOQuery1.Delete;
    Form1.ADOQuery1.Close;
    Form1.ADOQuery1.Open;
    Form1.SetDBGrid;
  end;
end;

procedure TForm2.ToolButton7Click(Sender: TObject);
begin
  try
    ADOQuery1.Post;
    Form1.ADOQuery1.Close;
    Form1.ADOQuery1.Open;
    Form1.SetDBGrid;
  except
   Application.MessageBox('Проверьте введенныю информацию','Ошибка',MB_OK);
  end;
end;

end.
