unit UPic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm11 = class(TForm)
    Image1: TImage;
    procedure LoadPic;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses UMain;

{$R *.dfm}

procedure TForm11.FormShow(Sender: TObject);
begin
  LoadPic;
end;

procedure TForm11.LoadPic;
begin
  try
    image1.Picture.LoadFromFile(GetCurrentDir+'/Pics/'+Form1.ADOQuery1.FieldByName('Image').Text);
  except
    image1.Picture:=nil;
  end;
end;

end.
