
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



procedure TPrinting.CreateWord(const visible: Boolean);  // «Создание объекта Word.Application».
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
   //«Создание отчета в новом документе Word».;
   {
«InsertBefore вставляет текст в начало содержимого Range - объекта работы с текстом»
и «InsertAfter вставляет текст в конец содержимого Range».
   }

 // Word1.ActiveDocument.tables.item(1).columns.item(<номер столбца>).delete // удалить столбцы
 //   Word1.activeDocument.PageSetup.Orientation := 1; // Альбомная
  Word1.activeDocument.PageSetup.Orientation := 0; // Книжная

  //Word1.ActiveDocument.Range.InsertBefore (Form10.Caption + ' ');
  Word1.ActiveDocument.Range.InsertBefore ('D - Fitness ');
  Word1.ActiveDocument.Range.InsertAfter (#13+#10+'Прайс-лист на услуги:'+#13+#10);
  Word1.ActiveDocument.Range.InsertAfter ('Фитнес-клуба'+#13+#10+#13+#10);
    //«Изменение параметров абзаца и шрифта».
  Word1.ActiveDocument.Range.ParagraphFormat.Alignment := 1;
  Word1.ActiveDocument.Range.Font.Name := 'Times New Roman';
  Word1.ActiveDocument.Range.Font.Size := 16;
  Word1.ActiveDocument.Range.Font.Bold := True;
  Word1.ActiveDocument.Range.Characters.Last.Font.Size := 12;;   //Изменение формата абзаца со следующей строки
  Word1.ActiveDocument.Range.Characters.Last.Font.Bold := False;
    //Создание таблицы
  Word1.ActiveDocument.Tables.Add(Word1.ActiveDocument.Range.Characters.Last,1,Form10.ADOQuery2.Fields.Count);
  WordTable := Word1.ActiveDocument.Tables.Item(1);
  // Изменение ширины столбцов
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
    //Добавляя новые строки
    WordRow := WordTable.Rows.Add;
    WordTable.Cell(WordRow.Index, 1).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 2).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 3).Range.ParagraphFormat.Alignment := 0;
    for I := 1 to FieldCount do
      // Вписываем в ячейки данные
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
