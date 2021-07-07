unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeeProcs, TeEngine, Chart, ExtCtrls, UMain, DB, ADODB,
  ComCtrls, ToolWin, Series, DBChart, Grids, DBGrids;

type
  TForm8 = class(TForm)
    DBChart1: TDBChart;
    Series1: TLineSeries;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit5;

{$R *.dfm}

procedure TForm8.FormShow(Sender: TObject);
begin
try
begin
      DBGrid1.Columns.Items[0].Width := 80;
      DBGrid1.Columns.Items[1].Width := 60;
end;
except
end;

end;

end.
