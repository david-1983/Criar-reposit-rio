unit OSUnit;

interface

uses
  SysUtils;

type
  TOrdemDeServico = class
  private
    FId: Integer;
    FDescricao: string;
  public
    constructor Create(AId: Integer; ADescricao: string);
    function ObterDescricao: string;
  end;

implementation

constructor TOrdemDeServico.Create(AId: Integer; ADescricao: string);
begin
  FId := AId;
  FDescricao := ADescricao;
end;

function TOrdemDeServico.ObterDescricao: string;
begin
  Result := Format('Ordem de Serviço #%d: %s', [FId, FDescricao]);
end;

end.