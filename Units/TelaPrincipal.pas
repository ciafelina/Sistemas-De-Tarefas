unit TelaPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TTelaP = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    Panel5: TPanel;
    SpeedButton2: TSpeedButton;
    Image2: TImage;
    Panel6: TPanel;
    SpeedButton3: TSpeedButton;
    Image3: TImage;
    Panel7: TPanel;
    Panel8: TPanel;
    SpeedButton4: TSpeedButton;
    Image4: TImage;
    VTitulo: TLabel;
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4Resize(Sender: TObject);
    procedure SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton1MouseDwn(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaP: TTelaP;

implementation

uses TelaTeks, TaksConcluidas, TelaPort;

{$R *.dfm}

procedure TTelaP.Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if (X >= 0) and (X <= Panel4.Width) and (Y >= 0) and (Y <= Panel4.Height) then
  begin
    // Mouse est� dentro da �rea do painel
    Panel4.Color := clWhite;
    // Execute a��es quando o mouse entrar na �rea
  end
  else
  begin
    // Mouse est� fora da �rea do painel
    Panel4.Color := clSilver;
    // Execute a��es quando o mouse sair da �rea
  end;
end;

procedure TTelaP.Panel4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Panel4.Color := clWhite;
end;

procedure TTelaP.Panel4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Panel4.color := clSilver;
end;

procedure TTelaP.Panel4Resize(Sender: TObject);
begin
  Panel4.color := clSilver;
end;

procedure TTelaP.SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
Panel4.color :=clSilver;
end;

procedure TTelaP.SpeedButton1MouseDwn(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
Panel4.color :=clSilver;
end;

procedure TTelaP.SpeedButton1Click(Sender: TObject);
var
  TelaTaks : TTaks;
begin
  VTitulo.Caption := 'Adding new Task';
  TelaTaks := TTaks.Create(self);
  TelaTaks.Parent := Panel7;
  TelaTaks.Align := alClient;
  TelaTaks.Show;
end;

procedure TTelaP.Image1Click(Sender: TObject);
var
  TelaTaks : TTaks;
begin
  VTitulo.Caption := 'Adding new Task';
  TelaTaks := TTaks.Create(self);
  TelaTaks.Parent := Panel7;
  TelaTaks.Align := alClient;
  TelaTaks.Show;
end;

procedure TTelaP.SpeedButton2Click(Sender: TObject);
var
  TaksConcluidas : TForm1;
begin
  VTitulo.Caption := 'Completed Tasks';
  TaksConcluidas := TForm1.Create(self);
  TaksConcluidas.Parent := Panel7;
  TaksConcluidas.Align := alClient;
  TaksConcluidas.Show

  

end;

procedure TTelaP.Image2Click(Sender: TObject);
var
  TaksConcluidas : TForm1;
begin
  VTitulo.Caption := 'Completed Tasks';
  TaksConcluidas := TForm1.Create(self);
  TaksConcluidas.Parent := Panel7;
  TaksConcluidas.Align := alClient;
  TaksConcluidas.Show

end;

procedure TTelaP.SpeedButton3Click(Sender: TObject);
var
  TaksConcluidas : TTelaPortifolio;
begin
  VTitulo.Caption := 'All Tasks';
  TaksConcluidas := TTelaPortifolio.Create(self);
  TaksConcluidas.Parent := Panel7;
  TaksConcluidas.Align := alClient;
  TaksConcluidas.Show
end;

procedure TTelaP.Image3Click(Sender: TObject);
var
  TaksConcluidas : TTelaPortifolio;
begin
  VTitulo.Caption := 'All Tasks';
  TaksConcluidas := TTelaPortifolio.Create(self);
  TaksConcluidas.Parent := Panel7;
  TaksConcluidas.Align := alClient;
  TaksConcluidas.Show

end;

end.
