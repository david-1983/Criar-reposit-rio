unit Estoque;

interface

type
  TEstoque = class
  private
    FQuantidade: Integer;
  public
    constructor Create(AQuantidade: Integer);
    procedure Adicionar(AQuantidade: Integer);
    procedure Remover(AQuantidade: Integer);
    function ObterQuantidade: Integer;
  end;

implementation

constructor TEstoque.Create(AQuantidade: Integer);
begin
  FQuantidade := AQuantidade;
end;

procedure TEstoque.Adicionar(AQuantidade: Integer);
begin
  FQuantidade := FQuantidade + AQuantidade;
end;

procedure TEstoque.Remover(AQuantidade: Integer);
begin
  FQuantidade := FQuantidade - AQuantidade;
end;

function TEstoque.ObterQuantidade: Integer;
begin
  Result := FQuantidade;
end;

end.