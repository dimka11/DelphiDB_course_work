
unit UPrinting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB, ExtCtrls, DBCtrls, ComCtrls, comobj, OleServer, ExcelXP, UMain, Unit7;

type
  TPrinting = class(TForm)
    procedure CreateWord(const visible: Boolean);
    procedure Print;
  private

  public

  end;

var
  Printing: TPrinting;
  Word1: Variant;

implementation


// uses UMain;



procedure TPrinting.CreateWord(const visible: Boolean);  // ��������� ������� Word.Application�.
begin
  Word1 := CreateOleObject('Word.Application');
  Word1.visible := visible;
  Word1.Documents.Add;
end;


procedure TPrinting.Print;
var
  WordTable, WordRow: OleVariant;
  I: Integer;
begin
  CreateWord(False);
   //��������� ������ � ����� ��������� Word�.;
   {
�InsertBefore ��������� ����� � ������ ����������� Range - ������� ������ � �������
� �InsertAfter ��������� ����� � ����� ����������� Range�.
   }

 // Word1.ActiveDocument.tables.item(1).columns.item(<����� �������>).delete // ������� �������
 //   Word1.activeDocument.PageSetup.Orientation := 1; // ���������
  Word1.activeDocument.PageSetup.Orientation := 0; // �������

  //Word1.ActiveDocument.Range.InsertBefore (Form10.Caption + ' ');
  Word1.ActiveDocument.Range.InsertBefore ('D - Fitness ');
  Word1.ActiveDocument.Range.InsertAfter (#13+#10+'�����-���� �� ������:'+#13+#10);
  Word1.ActiveDocument.Range.InsertAfter ('������-�����'+#13+#10+#13+#10);
    //���������� ���������� ������ � ������.
  Word1.ActiveDocument.Range.ParagraphFormat.Alignment := 1;
  Word1.ActiveDocument.Range.Font.Name := 'Times New Roman';
  Word1.ActiveDocument.Range.Font.Size := 16;
  Word1.ActiveDocument.Range.Font.Bold := True;
  Word1.ActiveDocument.Range.Characters.Last.Font.Size := 12;;   //��������� ������� ������ �� ��������� ������
  Word1.ActiveDocument.Range.Characters.Last.Font.Bold := False;
    //�������� �������
  Word1.ActiveDocument.Tables.Add(Word1.ActiveDocument.Range.Characters.Last,1,Form10.ADOQuery2.Fields.Count);
  WordTable := Word1.ActiveDocument.Tables.Item(1);
  // ��������� ������ ��������
  begin
    Word1.ActiveDocument.tables.item(1).columns.item(1).PreferredWidth := 50;
    Word1.ActiveDocument.tables.item(1).columns.item(2).PreferredWidth := 250;
    Word1.ActiveDocument.tables.item(1).columns.item(3).PreferredWidth := 90;

  end;
    for I := 1 to Form10.ADOQuery2.fieldcount do
      begin
      WordTable.Cell(1,i).range.text := (Form10.ADOQuery2.Fields[i-1].FieldName);
      WordTable.Cell(1,i).range.font.bold := True;
      end;
  with Form10.ADOQuery2 do
    while not eof do begin
    //�������� ����� ������
    WordRow := WordTable.Rows.Add;
    WordTable.Cell(WordRow.Index, 1).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 2).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 3).Range.ParagraphFormat.Alignment := 0;
    for I := 1 to FieldCount do
      // ��������� � ������ ������
      begin
      WordTable.Cell(WordRow.Index, i).Range.Text := Fields[i-1].AsString;
      WordTable.Cell(WordRow.Index,i).range.font.bold := False;
     // WordTable.Cell(WordRow.Index,i).range.ParagraphFormat.Alignment := 0;
      end;
      Form10.ADOQuery2.Next;
    end;
    WordTable.borders.enable := True;
    Word1.ActiveDocument.Range.Characters.Last.ParagraphFormat.Alignment := 0;
    Word1.ActiveDocument.Range.InsertAfter(#13+#10);
    Word1.ActiveDocument.Range.InsertAfter(#13+#10);
    Word1.ActiveDocument.Range.InsertAfter (Date);
    Word1.visible := True;
end;

end.
