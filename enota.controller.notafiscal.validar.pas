unit enota.Controller.NotaFiscal.Validar;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, enota.Controller.NotaFiscal.Interfaces;

type

  { TControllerNotaFiscalValidar }

  TControllerNotaFiscalValidar = class(TInterfacedObject, iCommand)
  private
    fParent: iNotaFiscal;
  public

    constructor Create (Parent:iNotaFiscal);
    destructor Destroy; override;
    class function New (Parent:iNotaFiscal): iCommand;
    function Execute: iCommand;
  end;
implementation

{ TControllerNotaFiscalValidar }

constructor TControllerNotaFiscalValidar.Create(Parent: iNotaFiscal);
begin
  fParent:= Parent;
end;

destructor TControllerNotaFiscalValidar.Destroy;
begin
  inherited Destroy;
end;

class function TControllerNotaFiscalValidar.New(Parent: iNotaFiscal): iCommand;
begin
  Result:= Self.Create(Parent);
end;

function TControllerNotaFiscalValidar.Execute: iCommand;
begin
  Result:= Self;
  fParent.Validar;
end;

end.

