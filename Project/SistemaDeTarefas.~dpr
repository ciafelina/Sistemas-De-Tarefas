program SistemaDeTarefas;

uses
  Forms,
  TelaPrincipal in '..\Units\TelaPrincipal.pas' {TelaP},
  TelaTeks in '..\Units\TelaTeks.pas' {Taks},
  DM_Base in '..\Imagems\DM_Base.pas' {DM: TDataModule},
  TaksConcluidas in '..\Units\TaksConcluidas.pas' {Form1},
  TelaPort in '..\Units\TelaPort.pas' {TelaPortifolio};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTelaP, TelaP);
  Application.CreateForm(TTaks, Taks);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TTelaPortifolio, TelaPortifolio);
  Application.Run;
end.
