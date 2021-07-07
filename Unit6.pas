unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label4: TLabel;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ChangeShowPass;
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses UMain, Unit7;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
  if Application.MessageBox('Закрыть?','Выход из программы', MB_YESNO+MB_ICONQUESTION) = IDYES then
    Close;
end;

procedure TForm9.Button2Click(Sender: TObject);
var
  s: string;
begin
   s := Edit1.Text;
  if ComboBox1.ItemIndex = -1 then
    ComboBox1.ItemIndex := 0;
  ADOQuery1.RecNo := ComboBox1.ItemIndex+1;
  if ComboBox1.Text = 'Администратор' then
  begin
    if s = ADOQuery1.Fields[2].AsString then
  begin
      Application.MessageBox('Вход выполнен','Вход',MB_OK);
      Form9.Visible := false;
      //Form9.Hide;
      Form1.Show;
  end else
  begin
    Application.MessageBox('Не правильный пароль','Ошибка',MB_OK);
    Edit1.Text := '';
  end;
  end else
  begin
   if s = ADOQuery1.Fields[2].AsString then
  begin
      Application.MessageBox('Вход выполнен','Вход',MB_OK);
      Form9.Visible:=false;
      Form10.Show;
  end else
  begin
    Application.MessageBox('Не правильный пароль','Ошибка',MB_OK);
    Edit1.Text := '';
  end;
  end;
end;

procedure TForm9.ChangeShowPass;
begin
  if ComboBox1.Text = 'Клиент' then
    Edit1.Text := '123456' else
      Edit1.Text := '123Zxc';
end;

procedure TForm9.ComboBox1Change(Sender: TObject);
begin
  ChangeShowPass;
end;

procedure TForm9.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  key:=#0;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
  Form1.DoConDB;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM Авторизация');
  ADOQuery1.Active := True;
  ChangeShowPass;
end;

end.
