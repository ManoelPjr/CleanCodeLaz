program eNota;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  { you can add units after this }
  enota.View.Principal,
  enota.Controller.NotaFiscal,
  enota.Controller.NotaFiscal.Interfaces,
  enota.Controller.NotaFiscal.Criar,
  enota.Controller.NotaFiscal.Validar,
  enota.Controller.NotaFiscal.Enviar,
  enota.Controller.NotaFiscal.Gravar,
  enota.Controller.NotaFiscal.EnviarEmail;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TviewPrincipal, viewPrincipal);
  Application.Run;
end.

