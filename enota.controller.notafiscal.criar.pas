unit eNota.Controller.NotaFiscal.Criar;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, enota.Controller.NotaFiscal.Interfaces;
Type

  { TControllerNotaFiscalCriar }

  TControllerNotaFiscalCriar = class(TInterfacedObject, iCommand)
private
  fParent: iNotaFiscal;
public
  constructor Create (Parent:iNotaFiscal);
  destructor Destroy; override;
  class function New (Parent:iNotaFiscal): iCommand;
  function Execute: iCommand;
published
end;
implementation

{ TControllerNotaFiscalCriar }

constructor TControllerNotaFiscalCriar.Create(Parent: iNotaFiscal);
begin
  fParent:= Parent;
end;

destructor TControllerNotaFiscalCriar.Destroy;
begin
  inherited Destroy;
end;

class function TControllerNotaFiscalCriar.New(Parent: iNotaFiscal): iCommand;
begin
 Result:= Self.Create(Parent);
end;

function TControllerNotaFiscalCriar.Execute: iCommand;
begin
  Result:= Self;
  fParent.Criar;
end;

 end.
