unit RelatoriosUnit;

interface

uses
  SysUtils, Classes;

type
  TRelatorio = class
  private
    FData: TDateTime;
    FValor: Currency;
  public
    constructor Create(AData: TDateTime; AValor: Currency);
    function GerarRelatorio: string;
    property Data: TDateTime read FData;
    property Valor: Currency read FValor;
  end;

implementation

constructor TRelatorio.Create(AData: TDateTime; AValor: Currency);
begin
  FData := AData;
  FValor := AValor;
end;

function TRelatorio.GerarRelatorio: string;
begin
  Result := Format('Relatório - Data: %s, Valor: R$%.2f', [DateTimeToStr(FData), FValor]);
end.

end.