unit enota.Controller.NotaFiscal.EnviarEmail;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, enota.Controller.NotaFiscal.Interfaces;
type

  { TControllerNotaFiscalEnviarEmail }

  TControllerNotaFiscalEnviarEmail = class(TInterfacedObject, iCommand)
  private
    fParent: iNotaFiscal;
  public

    constructor Create (Parent:iNotaFiscal);
    destructor Destroy; override;
    class function New (Parent:iNotaFiscal): iCommand;
    function Execute: iCommand;
  end;
implementation

{ TControllerNotaFiscalEnviarEmail }

constructor TControllerNotaFiscalEnviarEmail.Create(Parent: iNotaFiscal);
begin
  fParent:= Parent;
end;

destructor TControllerNotaFiscalEnviarEmail.Destroy;
begin
  inherited Destroy;
end;

class function TControllerNotaFiscalEnviarEmail.New(Parent: iNotaFiscal
  ): iCommand;
begin
  Result:= Self.Create(Parent);
end;

function TControllerNotaFiscalEnviarEmail.Execute: iCommand;
begin
  Result:= Self;
  fParent.enviarEmail;
end;

end.

