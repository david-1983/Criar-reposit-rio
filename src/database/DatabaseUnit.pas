unit DatabaseUnit;

{$mode objfpc}{$H+}

interface

uses
  sqlite3, SysUtils;

type
  TDatabase = class
  private
    FDatabase: Psqlite3;
  public
    constructor Create(const AFileName: string);
    destructor Destroy; override;
    procedure ExecuteSQL(const ASQL: string);
    procedure InitializeDatabase;
    function EscapeString(const AStr: string): string;
    function GetLastInsertID: Int64;
  end;

implementation

constructor TDatabase.Create(const AFileName: string);
begin
  if sqlite3_open(PAnsiChar(AnsiString(AFileName)), @FDatabase) <> SQLITE_OK then
    raise Exception.Create('Unable to open database: ' + AFileName);
end;

destructor TDatabase.Destroy;
begin
  sqlite3_close(FDatabase);
  inherited;
end;

procedure TDatabase.ExecuteSQL(const ASQL: string);
var
  ErrMsg: PAnsiChar;
  Res: Integer;
begin
  ErrMsg := nil;
  Res := sqlite3_exec(FDatabase, PAnsiChar(AnsiString(ASQL)), nil, nil, @ErrMsg);
  if Res <> SQLITE_OK then
  begin
    try
      raise Exception.Create('SQL error: ' + string(ErrMsg));
    finally
      sqlite3_free(ErrMsg);
    end;
  end;
end;

function TDatabase.EscapeString(const AStr: string): string;
begin
  Result := StringReplace(AStr, '''', '''''', [rfReplaceAll]);
end;

function TDatabase.GetLastInsertID: Int64;
begin
  Result := sqlite3_last_insert_rowid(FDatabase);
end;

procedure TDatabase.InitializeDatabase;
begin
  ExecuteSQL('CREATE TABLE IF NOT EXISTS clientes (' +
             'id INTEGER PRIMARY KEY AUTOINCREMENT, ' +
             'nome TEXT NOT NULL, ' +
             'telefone TEXT, ' +
             'email TEXT);');

  ExecuteSQL('CREATE TABLE IF NOT EXISTS veiculos (' +
             'id INTEGER PRIMARY KEY AUTOINCREMENT, ' +
             'placa TEXT NOT NULL UNIQUE, ' +
             'modelo TEXT, ' +
             'marca TEXT, ' +
             'cliente_id INTEGER, ' +
             'FOREIGN KEY(cliente_id) REFERENCES clientes(id));');

  ExecuteSQL('CREATE TABLE IF NOT EXISTS servicos (' +
             'id INTEGER PRIMARY KEY AUTOINCREMENT, ' +
             'descricao TEXT NOT NULL, ' +
             'valor REAL);');

  ExecuteSQL('CREATE TABLE IF NOT EXISTS pecas (' +
             'id INTEGER PRIMARY KEY AUTOINCREMENT, ' +
             'descricao TEXT NOT NULL, ' +
             'valor REAL, ' +
             'estoque INTEGER);');

  ExecuteSQL('CREATE TABLE IF NOT EXISTS ordens_servico (' +
             'id INTEGER PRIMARY KEY AUTOINCREMENT, ' +
             'data TEXT, ' +
             'descricao TEXT, ' +
             'status TEXT, ' +
             'veiculo_id INTEGER, ' +
             'valor_total REAL, ' +
             'FOREIGN KEY(veiculo_id) REFERENCES veiculos(id));');
end;

end.
