unit ServicosUnit;

interface

uses
  SysUtils;

type
  TServico = class
  private
    FNome: string;
    FPreco: Currency;
  public
    constructor Create(const ANome: string; APreco: Currency);
    function ObterNome: string;
    function ObterPreco: Currency;
  end;

implementation

constructor TServico.Create(const ANome: string; APreco: Currency);
begin
  FNome := ANome;
  FPreco := APreco;
end;

function TServico.ObterNome: string;
begin
  Result := FNome;
end;

function TServico.ObterPreco: Currency;
begin
  Result := FPreco;
end;

end.