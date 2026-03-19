unit ClienteUnit;

interface

uses
  SysUtils;

type
  TCliente = class
  private
    FNome: string;
    FIdade: Integer;
  public
    constructor Create(const Nome: string; Idade: Integer);
    function ExibirDados: string;
  end;

implementation

constructor TCliente.Create(const Nome: string; Idade: Integer);
begin
  FNome := Nome;
  FIdade := Idade;
end;

function TCliente.ExibirDados: string;
begin
  Result := Format('Nome: %s, Idade: %d', [FNome, FIdade]);
end;

end.