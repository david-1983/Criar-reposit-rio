unit Funcionario;

interface

uses
  System.SysUtils;

type
  TFuncionario = class
  private
    FNome: string;
    FIdade: Integer;
  public
    constructor Create(const ANome: string; AIdade: Integer);
    function GetNome: string;
    function GetIdade: Integer;
  end;

implementation

constructor TFuncionario.Create(const ANome: string; AIdade: Integer);
begin
  FNome := ANome;
  FIdade := AIdade;
end;

function TFuncionario.GetNome: string;
begin
  Result := FNome;
end;

function TFuncionario.GetIdade: Integer;
begin
  Result := FIdade;
end;

end.