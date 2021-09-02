unit enota.Controller.NotaFiscal.Gravar;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, enota.Controller.NotaFiscal.Interfaces;
type

  { TControllerNotaFiscalGravar }

  TControllerNotaFiscalGravar = class(TInterfacedObject, iCommand)
  private
    fParent: iNotaFiscal;
  public

    constructor Create (Parent:iNotaFiscal);
    destructor Destroy; override;
    class function New (Parent:iNotaFiscal): iCommand;
    function Execute: iCommand;
  end;
implementation

{ TControllerNotaFiscalGravar }

constructor TControllerNotaFiscalGravar.Create(Parent: iNotaFiscal);
begin
  fParent:= Parent;
end;

destructor TControllerNotaFiscalGravar.Destroy;
begin
  inherited Destroy;
end;

class function TControllerNotaFiscalGravar.New(Parent: iNotaFiscal): iCommand;
begin
  Result:= Self.Create(Parent);
end;

function TControllerNotaFiscalGravar.Execute: iCommand;
begin
  fParent.Gravar;
end;

end.

