unit enota.Controller.NotaFiscal.Interfaces;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
type
  iCommand = interface ['{7D0DF6A9-A835-477F-B139-FECBFFE4C37C}']
  function Execute: iCommand;
  end;

  iNotaFiscal = interface ['{343CB721-703E-4511-B9A3-85BC390FBB71}']
  function Criar : iNotaFiscal;
  function Validar: iNotaFiscal;
  function Enviar: iNotaFiscal;
  function Gravar: iNotaFiscal;
  function enviarEmail: iNotaFiscal;
  end;

  iNotaFiscalView = interface ['{D9CF960B-1813-4D66-B17A-370CD1ACB8DE}']
  function enviarSefaz: iNotaFiscal;
  end;
implementation

end.

