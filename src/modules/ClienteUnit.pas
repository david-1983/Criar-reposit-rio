unit ClienteUnit;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, DatabaseUnit;

type
  TCliente = class
  private
    FId: Integer;
    FNome: string;
    FTelefone: string;
    FEmail: string;
  public
    constructor Create(const Nome: string; Telefone: string = ''; Email: string = '');
    procedure SaveToDatabase(ADatabase: TDatabase);
    function ExibirDados: string;
    property Id: Integer read FId write FId;
    property Nome: string read FNome write FNome;
    property Telefone: string read FTelefone write FTelefone;
    property Email: string read FEmail write FEmail;
  end;

implementation

constructor TCliente.Create(const Nome: string; Telefone: string = ''; Email: string = '');
begin
  FId := 0;
  FNome := Nome;
  FTelefone := Telefone;
  FEmail := Email;
end;

procedure TCliente.SaveToDatabase(ADatabase: TDatabase);
var
  SQL: string;
  ENome, ETelefone, EEmail: string;
begin
  ENome := ADatabase.EscapeString(FNome);
  ETelefone := ADatabase.EscapeString(FTelefone);
  EEmail := ADatabase.EscapeString(FEmail);

  if FId = 0 then
  begin
    SQL := Format('INSERT INTO clientes (nome, telefone, email) VALUES (''%s'', ''%s'', ''%s'');',
                  [ENome, ETelefone, EEmail]);
    ADatabase.ExecuteSQL(SQL);
    FId := ADatabase.GetLastInsertID;
  end
  else
  begin
    SQL := Format('UPDATE clientes SET nome = ''%s'', telefone = ''%s'', email = ''%s'' WHERE id = %d;',
                  [ENome, ETelefone, EEmail, FId]);
    ADatabase.ExecuteSQL(SQL);
  end;
end;

function TCliente.ExibirDados: string;
begin
  Result := Format('ID: %d, Nome: %s, Telefone: %s', [FId, FNome, FTelefone]);
end;

end.
