unit pecas;

interface

uses
  SysUtils;

function GetPecaNome(id: Integer): string;

implementation

function GetPecaNome(id: Integer): string;
begin
  case id of
    1: Result := 'Peca 1';
    2: Result := 'Peca 2';
    3: Result := 'Peca 3';
    else Result := 'Peca desconhecida';
  end;
end;

end.
