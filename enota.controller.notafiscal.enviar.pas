unit enota.Controller.NotaFiscal.Enviar;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, enota.Controller.NotaFiscal.Interfaces;
type

  { TControllerNotaFiscalEnviar }

  TControllerNotaFiscalEnviar = class(TInterfacedObject, iCommand)
  private
   fParent: iNotaFiscal;
  public
   constructor Create (Parent:iNotaFiscal);
   destructor Destroy; override;
   class function New (Parent:iNotaFiscal): iCommand;
   function Execute: iCommand;
  end;
implementation

{ TControllerNotaFiscalEnviar }

constructor TControllerNotaFiscalEnviar.Create(Parent: iNotaFiscal);
begin
  fParent:=Parent;
end;

destructor TControllerNotaFiscalEnviar.Destroy;
begin
  inherited Destroy;
end;

class function TControllerNotaFiscalEnviar.New(Parent: iNotaFiscal): iCommand;
begin
  Result:= Self.Create(Parent);
end;

function TControllerNotaFiscalEnviar.Execute: iCommand;
begin
  Result:= Self;
  fParent.Enviar;
end;

end.

