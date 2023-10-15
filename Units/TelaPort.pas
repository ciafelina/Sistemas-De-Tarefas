unit TelaPort;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DBCtrls, Mask, DB, DBTables;

type
  TTelaPortifolio = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    Image2: TImage;
    Label8: TLabel;
    Panel6: TPanel;
    Label9: TLabel;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Portifolio: TQuery;
    SoirceP: TDataSource;
    Label7: TLabel;
    Label6: TLabel;
    VQuery: TQuery;
    Panel2: TPanel;
    Edit1: TEdit;
    Panel3: TPanel;
    Edit2: TEdit;
    Panel4: TPanel;
    Edit3: TEdit;
    Panel7: TPanel;
    Edit4: TEdit;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    PortifolioCodTarefa: TIntegerField;
    PortifolioNome: TStringField;
    PortifolioTipo: TStringField;
    PortifolioDescricao: TStringField;
    PortifolioObs: TStringField;
    PortifolioStatu: TStringField;
    PortifolioHoras: TStringField;
    PortifolioDatTarefas: TStringField;
    Panel8: TPanel;
    Image1: TImage;
    Label10: TLabel;
    procedure Panel5Click(Sender: TObject);
    procedure ConsultaPortifolio();
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Label8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
    Nome,Observacao,Status,Descricao,Tipo: string;
  public
    { Public declarations }
  end;

var
  TelaPortifolio: TTelaPortifolio;

implementation

uses DM_Base, Math;

{$R *.dfm}

procedure TTelaPortifolio.ConsultaPortifolio;
var
  Status : string;
begin
  // Fazendo a Query e defindo seus Paramentros
  Portifolio.Close;
  Portifolio.SQL.Clear;
  Portifolio.SQL.Add('select * from Tarefas where Nome = :Nome and Tipo = :Tipo');
  Portifolio.ParamByName('Nome').AsString := Edit1.Text;
  Portifolio.ParamByName('Tipo').AsString := ComboBox2.Text;
  Portifolio.Open;

  // Fazendo os Edits Ficando com os dados da minha Query
  if Portifolio.FieldByName('Statu').AsString = 'P' then
    begin
        ComboBox1.ItemIndex := 0;
        Edit1.Text :=  Portifolio.FieldByName('Nome').AsString;
        Edit2.Text := Portifolio.FieldByName('Descricao').AsString;
        Edit3.Text := Portifolio.FieldByName('Obs').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        ComboBox3.Text := Portifolio.FieldByName('Horas').AsString;

    end;
  if Portifolio.FieldByName('Statu').AsString = 'V' then
    begin
        ComboBox1.ItemIndex := 1;
        Edit1.Text := Portifolio.FieldByName('Nome').AsString;
        Edit2.Text := Portifolio.FieldByName('Descricao').AsString;
        Edit3.Text := Portifolio.FieldByName('Obs').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        ComboBox3.Text := Portifolio.FieldByName('Horas').AsString;
    end;
end;

procedure TTelaPortifolio.Panel5Click(Sender: TObject);
Var
 I : integer;
 Name,Des,Obs : string;

begin
    I := MessageDlg('Do you want to apply the changes ?',mtConfirmation,[mbYes,mbYes,mbNo],0);
    if I = mrYes then
      begin

        //
        Name := UpperCase(Edit1.Text);
        Des := UpperCase(Edit2.Text);
        Obs := UpperCase(Edit3.Text);
        //
        Portifolio.Close;
        Portifolio.SQL.Clear;
        Portifolio.SQL.Add('update Tarefas set Nome = :Nome,Tipo = :Tipo,Descricao = :Descricao,'+
        ' Obs = :Obs,Statu = :Statu,Horas = :Horas,DatTarefas = CONVERT(DATE,:DatTarefaswhereNome) = :NomeT and Tipo = :TipoT');
        Portifolio.ParamByName('Nome').AsString := Name;
        Portifolio.ParamByName('Tipo').AsString := ComboBox2.Text;
        Portifolio.ParamByName('Descricao').AsString := Des;
        Portifolio.ParamByName('Obs').AsString := Obs;
        Portifolio.ParamByName('Statu').AsString := ComboBox1.Text;
        Portifolio.ParamByName('Horas').AsString := ComboBox3.Text;
        Portifolio.ParamByName('DatTarefaswhereNome').AsString := Edit4.Text;
        Portifolio.ParamByName('NomeT').AsString := Name;
        Portifolio.ParamByName('TipoT').AsString := ComboBox2.Text;
        Portifolio.ExecSQL;
        ShowMessage('Changes Completed');
      end;

end;

procedure TTelaPortifolio.DBEdit1Exit(Sender: TObject);
begin
  ConsultaPortifolio;
end;

procedure TTelaPortifolio.FormShow(Sender: TObject);
begin
Portifolio.Open;
end;

procedure TTelaPortifolio.DBEdit1Click(Sender: TObject);
begin
Portifolio.Open;
end;

procedure TTelaPortifolio.Edit4Click(Sender: TObject);
var
  TextoEdit: string;
begin
  TextoEdit := Edit4.Text;

  // Remove todos os caracteres n�o num�ricos
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

procedure TTelaPortifolio.Edit4Exit(Sender: TObject);
var
  Data: TDateTime;
begin
  if not TryStrToDate(Edit4.Text, Data) then
  begin
    ShowMessage('Invalid date. Please enter a date in the format dd/mm/yyyy.');
  end;
end;


procedure TTelaPortifolio.Edit4KeyPress(Sender: TObject; var Key: Char);
var
  TextoEdit: string;
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0; // Bloqueia qualquer tecla que n�o seja n�mero ou backspace

  {if (Key = #8) and (Edit2.SelStart = 6) then
    Edit2.SelStart := 5 // Move o cursor de volta quando o usu�rio apagar a segunda barra
  else if (Key = #8) and (Edit2.SelStart = 3) then
    Edit2.SelStart := 2; // Move o cursor de volta quando o usu�rio apagar a primeira barra }

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

procedure TTelaPortifolio.Label8Click(Sender: TObject);
Var
 I : integer;

begin
    I := MessageDlg('Do you want to apply the changes ?',mtConfirmation,[mbYes,mbYes,mbNo],0);
    if I = mrYes then
      begin
        Portifolio.Close;
        Portifolio.SQL.Clear;
        Portifolio.SQL.Add('update Tarefas set Nome = :Nome,Tipo = :Tipo,Descricao = :Descricao,'+
        ' Obs = :Obs,Statu = :Statu,Horas = :Horas,DatTarefas = CONVERT(DATE,:DatTarefaswhereNome) = :NomeT and Tipo = :TipoT');
        Portifolio.ParamByName('Nome').AsString := Edit1.Text;
        Portifolio.ParamByName('Tipo').AsString := ComboBox2.Text;
        Portifolio.ParamByName('Descricao').AsString := Edit2.Text;
        Portifolio.ParamByName('Obs').AsString := Edit3.Text;
        Portifolio.ParamByName('Statu').AsString := ComboBox1.Text;
        Portifolio.ParamByName('Horas').AsString := ComboBox3.Text;
        Portifolio.ParamByName('DatTarefaswhereNome').AsString := Edit4.Text;
        Portifolio.ParamByName('NomeT').AsString := Edit1.Text;
        Portifolio.ParamByName('TipoT').AsString := ComboBox2.Text;
        Portifolio.ExecSQL;
        ShowMessage('Changes Completed');
      end;


end;

procedure TTelaPortifolio.Button1Click(Sender: TObject);
begin
  ConsultaPortifolio;
end;

procedure TTelaPortifolio.Label10Click(Sender: TObject);
var
  Status : string;
begin
  // Fazendo a Query e defindo seus Paramentros
  Portifolio.Close;
  Portifolio.SQL.Clear;
  Portifolio.SQL.Add('select * from Tarefas where Nome = :Nome and Tipo = :Tipo');
  Portifolio.ParamByName('Nome').AsString := Edit1.Text;
  Portifolio.ParamByName('Tipo').AsString := ComboBox2.Text;
  Portifolio.Open;

  // Fazendo os Edits Ficando com os dados da minha Query
  if Portifolio.FieldByName('Statu').AsString = 'P' then
    begin
        ComboBox1.ItemIndex := 0;
        Edit1.Text :=  Portifolio.FieldByName('Nome').AsString;
        Edit2.Text := Portifolio.FieldByName('Descricao').AsString;
        Edit3.Text := Portifolio.FieldByName('Obs').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        ComboBox3.Text := Portifolio.FieldByName('Horas').AsString;

    end;
  if Portifolio.FieldByName('Statu').AsString = 'V' then
    begin
        ComboBox1.ItemIndex := 1;
        Edit1.Text := Portifolio.FieldByName('Nome').AsString;
        Edit2.Text := Portifolio.FieldByName('Descricao').AsString;
        Edit3.Text := Portifolio.FieldByName('Obs').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        ComboBox3.Text := Portifolio.FieldByName('Horas').AsString;
    end;

end;

procedure TTelaPortifolio.Panel8Click(Sender: TObject);
var
  Status : string;
begin
  // Fazendo a Query e defindo seus Paramentros
  Portifolio.Close;
  Portifolio.SQL.Clear;
  Portifolio.SQL.Add('select * from Tarefas where Nome = :Nome and Tipo = :Tipo');
  Portifolio.ParamByName('Nome').AsString := Edit1.Text;
  Portifolio.ParamByName('Tipo').AsString := ComboBox2.Text;
  Portifolio.Open;

  // Fazendo os Edits Ficando com os dados da minha Query
  if Portifolio.FieldByName('Statu').AsString = 'P' then
    begin
        ComboBox1.ItemIndex := 0;
        Edit1.Text :=  Portifolio.FieldByName('Nome').AsString;
        Edit2.Text := Portifolio.FieldByName('Descricao').AsString;
        Edit3.Text := Portifolio.FieldByName('Obs').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        ComboBox3.Text := Portifolio.FieldByName('Horas').AsString;

    end;
  if Portifolio.FieldByName('Statu').AsString = 'V' then
    begin
        ComboBox1.ItemIndex := 1;
        Edit1.Text := Portifolio.FieldByName('Nome').AsString;
        Edit2.Text := Portifolio.FieldByName('Descricao').AsString;
        Edit3.Text := Portifolio.FieldByName('Obs').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        ComboBox3.Text := Portifolio.FieldByName('Horas').AsString;
    end;

end;

procedure TTelaPortifolio.Image1Click(Sender: TObject);
var
  Status : string;
begin
  // Fazendo a Query e defindo seus Paramentros
  Portifolio.Close;
  Portifolio.SQL.Clear;
  Portifolio.SQL.Add('select * from Tarefas where Nome = :Nome and Tipo = :Tipo');
  Portifolio.ParamByName('Nome').AsString := Edit1.Text;
  Portifolio.ParamByName('Tipo').AsString := ComboBox2.Text;
  Portifolio.Open;

  // Fazendo os Edits Ficando com os dados da minha Query
  if Portifolio.FieldByName('Statu').AsString = 'P' then
    begin
        ComboBox1.ItemIndex := 0;
        Edit1.Text :=  Portifolio.FieldByName('Nome').AsString;
        Edit2.Text := Portifolio.FieldByName('Descricao').AsString;
        Edit3.Text := Portifolio.FieldByName('Obs').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        ComboBox3.Text := Portifolio.FieldByName('Horas').AsString;

    end;
  if Portifolio.FieldByName('Statu').AsString = 'V' then
    begin
        ComboBox1.ItemIndex := 1;
        Edit1.Text := Portifolio.FieldByName('Nome').AsString;
        Edit2.Text := Portifolio.FieldByName('Descricao').AsString;
        Edit3.Text := Portifolio.FieldByName('Obs').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        Edit4.Text := Portifolio.FieldByName('DatTarefas').AsString;
        ComboBox3.Text := Portifolio.FieldByName('Horas').AsString;
    end;

end;

procedure TTelaPortifolio.Image2Click(Sender: TObject);
Var
 I : integer;
 Name,Des,Obs : string;

begin
    I := MessageDlg('Do you want to apply the changes ?',mtConfirmation,[mbYes,mbYes,mbNo],0);
    if I = mrYes then
      begin

        //
        Name := UpperCase(Edit1.Text);
        Des := UpperCase(Edit2.Text);
        Obs := UpperCase(Edit3.Text);
        //
        Portifolio.Close;
        Portifolio.SQL.Clear;
        Portifolio.SQL.Add('update Tarefas set Nome = :Nome,Tipo = :Tipo,Descricao = :Descricao,'+
        ' Obs = :Obs,Statu = :Statu,Horas = :Horas,DatTarefas = CONVERT(DATE,:DatTarefaswhereNome) = :NomeT and Tipo = :TipoT');
        Portifolio.ParamByName('Nome').AsString := Name;
        Portifolio.ParamByName('Tipo').AsString := ComboBox2.Text;
        Portifolio.ParamByName('Descricao').AsString := Des;
        Portifolio.ParamByName('Obs').AsString := Obs;
        Portifolio.ParamByName('Statu').AsString := ComboBox1.Text;
        Portifolio.ParamByName('Horas').AsString := ComboBox3.Text;
        Portifolio.ParamByName('DatTarefaswhereNome').AsString := Edit4.Text;
        Portifolio.ParamByName('NomeT').AsString := Name;
        Portifolio.ParamByName('TipoT').AsString := ComboBox2.Text;
        Portifolio.ExecSQL;
        ShowMessage('Changes Completed');
      end;

end;

end.
