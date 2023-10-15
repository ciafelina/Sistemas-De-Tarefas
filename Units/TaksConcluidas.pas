unit TaksConcluidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DB, DBTables;

type
  TForm1 = class(TForm)
    TaksConcluidas: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Image1: TImage;
    Panel5: TPanel;
    Image2: TImage;
    Label8: TLabel;
    Panel6: TPanel;
    Label9: TLabel;
    Image3: TImage;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    ConsTaksC: TQuery;
    ConsTaks: TDataSource;
    ConsTaksCName: TStringField;
    ConsTaksCType: TStringField;
    ConsTaksCDescription: TStringField;
    ConsTaksCObservation: TStringField;
    ConsTaksCHour: TStringField;
    ConsTaksCDate: TDateTimeField;
    Panel7: TPanel;
    Edit4: TEdit;
    Panel1: TPanel;
    Edit5: TEdit;
    Panel2: TPanel;
    Edit1: TEdit;
    procedure Panel5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TaksConcluidasMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label8Click(Sender: TObject);
    procedure VerTalsConcluidas();
    procedure Panel5Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
  private
    { Private declarations }
        myQuery : TQuery;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DM_Base, Math;

{$R *.dfm}

procedure TForm1.Panel5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel5.Color := clSilver;
  Label8.Left := 55;
  Label8.Top := 9;
  Image2.Left := 8;
  Image2.Top := 6;
end;

procedure TForm1.Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel5.Color := $00FF8000;
  Label8.Left := 53;
  Label8.Top := 7;
  Image2.Left := 6;
  Image2.Top := 4;
end;

procedure TForm1.Label8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel5.Color := clSilver;
  Label8.Left := 55;
  Label8.Top := 9;
  Image2.Left := 8;
  Image2.Top := 6;
end;

procedure TForm1.Label8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel5.Color := $00FF8000;
  Label8.Left := 53;
  Label8.Top := 7;
  Image2.Left := 6;
  Image2.Top := 4;
end;

procedure TForm1.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel5.Color := clSilver;
  Label8.Left := 55;
  Label8.Top := 9;
  Image2.Left := 8;
  Image2.Top := 6;
end;

procedure TForm1.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel5.Color := $00FF8000;
  Label8.Left := 53;
  Label8.Top := 7;
  Image2.Left := 6;
  Image2.Top := 4;
end;

procedure TForm1.TaksConcluidasMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Panel6.Color := clSilver;
  Label9.Left := 55;
  Label9.Top := 9;
  Image2.Left := 8;
  Image2.Top := 6;
end;

procedure TForm1.Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel6.Color := $008080FF;
  Label9.Left := 53;
  Label9.Top := 7;
  Image2.Left := 8;
  Image2.Top := 4;
end;

procedure TForm1.Panel6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel6.Color := clSilver;
  Label9.Left := 55;
  Label9.Top := 9;
  Image3.Left := 8;
  Image3.Top := 6;
end;

procedure TForm1.Label9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel6.Color := clSilver;
  Label9.Left := 55;
  Label9.Top := 9;
  Image3.Left := 8;
  Image3.Top := 6;
end;

procedure TForm1.Label9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel6.Color := $008080FF;
  Label9.Left := 53;
  Label9.Top := 7;
  Image3.Left := 8;
  Image3.Top := 4;
end;

procedure TForm1.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel6.Color := clSilver;
  Label9.Left := 55;
  Label9.Top := 9;
  Image3.Left := 8;
  Image3.Top := 6;
end;

procedure TForm1.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel6.Color := $008080FF;
  Label9.Left := 53;
  Label9.Top := 7;
  Image3.Left := 8;
  Image3.Top := 4;
end;

procedure TForm1.Label8Click(Sender: TObject);
var
  Concluir : integer;
begin
  Concluir := MessageDlg('Want to see Completed Tasks?',mtConfirmation,[mbYes,mbNo],0);
  if Concluir = mrYes then
    begin
      VerTalsConcluidas;
    end;
end;

procedure TForm1.VerTalsConcluidas;
begin
  ConsTaksC.Close;
  ConsTaksC.SQL.Clear;
  ConsTaksC.SQL.Add('select Nome as Name,Tipo as Type,Descricao as Description,Obs as Observation,Horas as Hour,DatTarefas as Date from Tarefas where Statu = "V"');
  if (Length(Edit4.Text) >= 8) and (Length(Edit5.Text) >= 8) then
    Begin
        ConsTaksC.SQL.Add(' and DatTarefas between :DataIni and :DatFim');
        ConsTaksC.ParamByName('DataIni').AsInteger :=  StrToInt(Edit4.Text);
        ConsTaksC.ParamByName('DatFim').AsString := Edit5.Text;
    end;
  if Edit1.Text <> '' then
    begin
      ConsTaksC.SQL.Add(' and Nome like "%" + :Nomees + "%"');
      ConsTaksC.ParamByName('Nomees').AsString := UpperCase(Edit1.Text);
      ConsTaksC.Open;
    end;
  ConsTaksC.Open;

end;

procedure TForm1.Panel5Click(Sender: TObject);
var
  Concluir : integer;
begin
  Concluir := MessageDlg('Want to see Completed Tasks?',mtConfirmation,[mbYes,mbNo],0);
  if Concluir = mrYes then
    begin
      VerTalsConcluidas;
    end;
end;

procedure TForm1.Image2Click(Sender: TObject);
var
  Concluir : integer;
begin
  Concluir := MessageDlg('Want to see Completed Tasks?',mtConfirmation,[mbYes,mbNo],0);
  if Concluir = mrYes then
    begin
      VerTalsConcluidas;
    end;
end;

procedure TForm1.Label9Click(Sender: TObject);
Var
  Cancelar : integer;
begin
  Cancelar := MessageDlg('Do you want to cancel consultation?',mtConfirmation,[mbYes,mbNo],0);
  if Cancelar = mrYes then
    begin
        Edit5.Text := '';
        Edit1.Text := '';
        Edit4.Text := '';
    end;
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
    I : integer;
begin

end;
procedure TForm1.FormShow(Sender: TObject);
begin
  myQuery := ConsTaksC;
end;

procedure TForm1.Panel6Click(Sender: TObject);
Var
  Cancelar : integer;
begin
  Cancelar := MessageDlg('Do you want to cancel consultation?',mtConfirmation,[mbYes,mbNo],0);
  if Cancelar = mrYes then
    begin
        Edit1.Text := '';
        Edit5.Text := '';
        Edit4.Text := '';
    end;
end;

procedure TForm1.Image3Click(Sender: TObject);
Var
  Cancelar : integer;
begin
  Cancelar := MessageDlg('Do you want to cancel consultation?',mtConfirmation,[mbYes,mbNo],0);
  if Cancelar = mrYes then
    begin
        Edit1.Text := '';
        Edit5.Text := '';
        Edit4.Text := '';
    end;
end;

procedure TForm1.Edit4Click(Sender: TObject);
var
  TextoEdit: string;
begin
  TextoEdit := Edit4.Text;

  // Remove todos os caracteres não numéricos
  TextoEdit := StringReplace(TextoEdit, '/', '', [rfReplaceAll]);
  TextoEdit := StringReplace(TextoEdit, #8, '', [rfReplaceAll]); // Remove o backspace

  // Limita o texto a 10 caracteres
  if Length(TextoEdit) > 8 then
    TextoEdit := Copy(TextoEdit, 1, 8);

  // Formata o texto como dd/mm/yyyy
  if Length(TextoEdit) >= 5 then
    Insert('/', TextoEdit, 3);
  if Length(TextoEdit) >= 8 then
    Insert('/', TextoEdit, 6);

  Edit4.Text := TextoEdit;
  Edit4.SelStart := Length(TextoEdit);
end;

procedure TForm1.Edit4Exit(Sender: TObject);
var
  Data: TDateTime;
begin
  if not TryStrToDate(Edit4.Text, Data) then
  begin
    ShowMessage('Invalid date. Please enter a date in the format dd/mm/yyyy.');
  end;

end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
var
  TextoEdit: string;
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0; // Bloqueia qualquer tecla que não seja número ou backspace

  {if (Key = #8) and (Edit2.SelStart = 6) then
    Edit2.SelStart := 5 // Move o cursor de volta quando o usuário apagar a segunda barra
  else if (Key = #8) and (Edit2.SelStart = 3) then
    Edit2.SelStart := 2; // Move o cursor de volta quando o usuário apagar a primeira barra }

  TextoEdit := Edit4 .Text;
  if (Length(TextoEdit) = 2) and (Key <> #8) then
  begin
    TextoEdit := TextoEdit + '/';
    Edit4.Text := TextoEdit;
    Edit4.SelStart := Length(TextoEdit);
  end
  else if (Length(TextoEdit) = 5) and (Key <> #8) then
  begin
    TextoEdit := TextoEdit + '/';
    Edit4.Text := TextoEdit;
    Edit4.SelStart := Length(TextoEdit);
  end;

end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
var
  TextoEdit: string;
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0; // Bloqueia qualquer tecla que não seja número ou backspace

  {if (Key = #8) and (Edit2.SelStart = 6) then
    Edit2.SelStart := 5 // Move o cursor de volta quando o usuário apagar a segunda barra
  else if (Key = #8) and (Edit2.SelStart = 3) then
    Edit2.SelStart := 2; // Move o cursor de volta quando o usuário apagar a primeira barra }

  TextoEdit := Edit5.Text;
  if (Length(TextoEdit) = 2) and (Key <> #8) then
  begin
    TextoEdit := TextoEdit + '/';
    Edit5.Text := TextoEdit;
    Edit5.SelStart := Length(TextoEdit);
  end
  else if (Length(TextoEdit) = 5) and (Key <> #8) then
  begin
    TextoEdit := TextoEdit + '/';
    Edit5.Text := TextoEdit;
    Edit5.SelStart := Length(TextoEdit);
  end;

end;

procedure TForm1.Edit5Exit(Sender: TObject);
var
  Data: TDateTime;
begin
  if not TryStrToDate(Edit5.Text, Data) then
  begin
    ShowMessage('Invalid date. Please enter a date in the format dd/mm/yyyy.');
  end;
end;

procedure TForm1.Edit5Change(Sender: TObject);
var
  TextoEdit: string;
begin
  TextoEdit := Edit5.Text;

  // Remove todos os caracteres não numéricos
  TextoEdit := StringReplace(TextoEdit, '/', '', [rfReplaceAll]);
  TextoEdit := StringReplace(TextoEdit, #8, '', [rfReplaceAll]); // Remove o backspace

  // Limita o texto a 10 caracteres
  if Length(TextoEdit) > 8 then
    TextoEdit := Copy(TextoEdit, 1, 8);

  // Formata o texto como dd/mm/yyyy
  if Length(TextoEdit) >= 5 then
    Insert('/', TextoEdit, 3);
  if Length(TextoEdit) >= 8 then
    Insert('/', TextoEdit, 6);

  Edit5.Text := TextoEdit;
  Edit5.SelStart := Length(TextoEdit);

end;

end.
