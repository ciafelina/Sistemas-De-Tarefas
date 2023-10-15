unit TelaTeks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBTables;

type
  TTaks = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Edit2: TEdit;
    Label5: TLabel;
    Panel4: TPanel;
    Edit3: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox3: TComboBox;
    Panel5: TPanel;
    Image1: TImage;
    Label8: TLabel;
    Panel6: TPanel;
    Label9: TLabel;
    Image2: TImage;
    ChegarCod: TQuery;
    ChegarCodCodTarefa: TIntegerField;
    Edit4: TEdit;
    procedure Panel5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox3Click(Sender: TObject);
    procedure ComboBox3Exit(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure InserindoTarefa();
  public
    { Public declarations }
        VQuery : TQuery;
  end;

var
  Taks: TTaks;

implementation

uses DM_Base, Math;


{$R *.dfm}

procedure TTaks.Panel5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel5.Color := clSilver;
  Label8.Left := 55;
  Label8.Top := 9;
  Image1.Left := 8;
  Image1.Top := 6;
end;

procedure TTaks.Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel5.Color := $0079FF79;
  Label8.Left := 53;
  Label8.Top := 7;
  Image1.Left := 6;
  Image1.Top := 4;
end;

procedure TTaks.Label8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel5.Color := clSilver;
  Label8.Left := 55;
  Label8.Top := 9;
  Image1.Left := 8;
  Image1.Top := 6;
end;

procedure TTaks.Label8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel5.Color := $0079FF79;
  Label8.Left := 53;
  Label8.Top := 7;
  Image1.Left := 6;
  Image1.Top := 4;
end;

procedure TTaks.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel5.Color := clSilver;
  Label8.Left := 55;
  Label8.Top := 9;
  Image1.Left := 8;
  Image1.Top := 6;
end;

procedure TTaks.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel5.Color := $0079FF79;
  Label8.Left := 53;
  Label8.Top := 7;
  Image1.Left := 6;
  Image1.Top := 4;
end;

procedure TTaks.Panel6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel6.Color := clSilver;
  Label9.Left := 55;
  Label9.Top := 9;
  Image2.Left := 8;
  Image2.Top := 6;
end;

procedure TTaks.Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel6.Color := $008080FF;
  Label9.Left := 53;
  Label9.Top := 7;
  Image2.Left := 8;
  Image2.Top := 4;
end;

procedure TTaks.Label9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel6.Color := clSilver;
  Label9.Left := 55;
  Label9.Top := 9;
  Image2.Left := 8;
  Image2.Top := 6;
end;

procedure TTaks.Label9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel6.Color := $008080FF;
  Label9.Left := 53;
  Label9.Top := 7;
  Image2.Left := 8;
  Image2.Top := 4;
end;

procedure TTaks.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel6.Color := clSilver;
  Label9.Left := 55;
  Label9.Top := 9;
  Image2.Left := 8;
  Image2.Top := 6;
end;

procedure TTaks.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel6.Color := $008080FF;
  Label9.Left := 53;
  Label9.Top := 7;
  Image2.Left := 8;
  Image2.Top := 4;
end;

procedure TTaks.Label8Click(Sender: TObject);
var
  Escolha : Integer;
begin
  if (Edit1.Text = '') or (Edit2.Text = '') or (ComboBox1.Text = '') or (ComboBox3.Text = '') or (Edit4.Text = '') then
    begin
        ShowMessage('Some Empty Field Check !!');
        Exit;
    end;
  Escolha := MessageDlg('Do you want to add a task?',mtConfirmation,[mbYes,mbNo],0);
  if Escolha = mrYes then
    begin
      InserindoTarefa();
    end;
end;

procedure TTaks.InserindoTarefa();
  var
    CodTarefaVa: integer;
    Name,Des,Obs : string;
begin
  Screen.Cursor := crHourGlass;

  //Pegando o ultimo Codigo de Tarefa e Acrecentando mais 1 nele para o Novo Registro
  ChegarCod.Open;
  CodTarefaVa := ChegarCod.Fields[0].AsInteger;
  CodTarefaVa := CodTarefaVa + 1;

  //Tacando Tudo Para Upper

  Name := UpperCase(Edit1.Text);
  Des := UpperCase(Edit2.Text);
  Obs := UpperCase(Edit3.Text);

  //Colando os Dados Da Tarefa no Banco de Dados
  VQuery.Close;
  VQuery.SQL.Clear;
  VQuery.SQL.Add('Insert into Tarefas values (:CodTarefa,:Nome,:Tpo,:Descricao,:Obs,:Status,:Horas,:Date)');
  VQuery.ParamByName('CodTarefa').AsInteger := CodTarefaVa;
  VQuery.ParamByName('Nome').AsString := Name;
  VQuery.ParamByName('Tpo').AsString := ComboBox1.Text;
  VQuery.ParamByName('Descricao').AsString := Des;
  VQuery.ParamByName('Obs').AsString := Obs;
  VQuery.ParamByName('Status').AsString := 'P';
  VQuery.ParamByName('Horas').AsString := ComboBox3.Text;
  VQuery.ParamByName('Date').AsString := ComboBox3.Text;
  VQuery.ExecSQL;
  Screen.Cursor := crDefault;
  ShowMessage('Task Registered Successfully');
end;

procedure TTaks.FormShow(Sender: TObject);
begin
VQuery := DM.Tarefas;
end;

procedure TTaks.Panel5Click(Sender: TObject);
var
  Escolha : Integer;
begin
  Escolha := MessageDlg('Do you want to add a task?',mtConfirmation,[mbYes,mbNo],0);
  if Escolha = mrYes then
    begin
      InserindoTarefa();
    end;

end;

procedure TTaks.Image1Click(Sender: TObject);
var
  Escolha : Integer;
begin
  Escolha := MessageDlg('Do you want to add a task?',mtConfirmation,[mbYes,mbNo],0);
  if Escolha = mrYes then
    begin
      InserindoTarefa();
    end;

end;

procedure TTaks.Label9Click(Sender: TObject);
var
  Escolha : integer;
begin
  Escolha := MessageDlg('Do you want to cancel the operation ?',mtConfirmation,[mbYes,mbNo],0);
  if Escolha = mrYes then
    begin
      Close;
    end;

end;

procedure TTaks.Edit1Click(Sender: TObject);
begin
  Edit1.Color := $008DF3F1;
end;

procedure TTaks.Edit1Exit(Sender: TObject);
begin
  Edit1.Color := clWhite;
end;

procedure TTaks.Edit2Click(Sender: TObject);
begin
  Edit2.Color := $008DF3F1;
end;

procedure TTaks.Edit2Exit(Sender: TObject);
begin
    Edit2.Color := clWhite;
end;

procedure TTaks.Edit3Exit(Sender: TObject);
begin
     Edit3.Color := clWhite;
end;

procedure TTaks.Edit3Click(Sender: TObject);
begin
  Edit3.Color := $008DF3F1;
end;

procedure TTaks.ComboBox1Click(Sender: TObject);
begin
  ComboBox1.Color := $008DF3F1;
end;

procedure TTaks.ComboBox1Exit(Sender: TObject);
begin
  ComboBox1.Color := clWhite;
end;


procedure TTaks.ComboBox3Click(Sender: TObject);
begin
  ComboBox3.Color := $008DF3F1;
end;

procedure TTaks.ComboBox3Exit(Sender: TObject);
begin
  ComboBox3.Color := clWhite;
end;

procedure TTaks.Edit4Change(Sender: TObject);
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
procedure TTaks.Edit4Exit(Sender: TObject);
var
  Data: TDateTime;
begin
  if not TryStrToDate(Edit4.Text, Data) then
  begin
    ShowMessage('Invalid date. Please enter a date in the format dd/mm/yyyy.');
  end;
end;


procedure TTaks.Edit4KeyPress(Sender: TObject; var Key: Char);
var
  TextoEdit: string;
begin
  if not (key in ['0'..'9',#8]) then key := #0;
  if not (Key in ['0'..'9', #8]) then
    Key := #0; // Bloqueia qualquer tecla que não seja número ou backspace

  {if (Key = #8) and (Edit2.SelStart = 6) then
    Edit2.SelStart := 5 // Move o cursor de volta quando o usuário apagar a segunda barra
  else if (Key = #8) and (Edit2.SelStart = 3) then
    Edit2.SelStart := 2; // Move o cursor de volta quando o usuário apagar a primeira barra }

  TextoEdit := Edit2 .Text;
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

end.
