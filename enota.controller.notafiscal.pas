unit enota.Controller.NotaFiscal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, enota.Controller.NotaFiscal.Interfaces;
type

  { TControllerNotaFiscal }

  TControllerNotaFiscal = class(TInterfacedObject, iNotaFiscal, iNotaFiscalView)

  private

  public
    constructor Create;
    destructor destroy; override;
    class function new : iNotaFiscal;
    function Criar : iNotaFiscal;
    function Validar: iNotaFiscal;
    function Enviar: iNotaFiscal;
    function Gravar: iNotaFiscal;
    function enviarEmail: iNotaFiscal;
    function enviarSefaz: iNotaFiscal;
  end;
implementation

{ TControllerNotaFiscal }

constructor TControllerNotaFiscal.Create;
begin

end;

destructor TControllerNotaFiscal.destroy;
begin
  inherited destroy;
end;

class function TControllerNotaFiscal.new: iNotaFiscal;
begin
  Result:= Self.Create;
end;

function TControllerNotaFiscal.Criar: iNotaFiscal;
begin
  Result:= Self;
end;

function TControllerNotaFiscal.Validar: iNotaFiscal;
begin
  Result:= Self;
end;

function TControllerNotaFiscal.Enviar: iNotaFiscal;
begin
 Result:= Self;
end;

function TControllerNotaFiscal.Gravar: iNotaFiscal;
begin
  Result:= Self;
end;

function TControllerNotaFiscal.enviarEmail: iNotaFiscal;
begin
 Result:= Self;
end;

function TControllerNotaFiscal.enviarSefaz: iNotaFiscal;
begin
 Result:= Self;
end;

end.

