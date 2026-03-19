unit FinanceiroUnit;

interface

uses
  SysUtils;

type
  TFinanceiro = class
  public
    function CalcularSaldo(entrada, saida: Currency): Currency;
  end;

implementation

{ TFinanceiro }

function TFinanceiro.CalcularSaldo(entrada, saida: Currency): Currency;
begin
  Result := entrada - saida;
end;

end.