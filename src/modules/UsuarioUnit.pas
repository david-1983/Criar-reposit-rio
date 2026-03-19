unit usuario;

interface

uses
  SysUtils;

type
  TUsuario = class
  private
    FNome: string;
    FIdade: Integer;
  public
    constructor Create(const Nome: string; Idade: Integer);
    procedure Apresentar;
  end;

implementation

constructor TUsuario.Create(const Nome: string; Idade: Integer);
begin
  FNome := Nome;
  FIdade := Idade;
end;

procedure TUsuario.Apresentar;
begin
  Writeln(Format('Nome: %s, Idade: %d', [FNome, FIdade]));
end;

end.