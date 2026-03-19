unit DatabaseUnit;

interface

uses
  SQLite3, SQLite3Wrap;

type
  TDatabase = class
  private
    FDatabase: PSQLite3DB;
  public
    constructor Create(const AFileName: string);
    destructor Destroy; override;
    procedure ExecuteSQL(const ASQL: string);
  end;

implementation

constructor TDatabase.Create(const AFileName: string);
begin
  if SQLite3_Open(PAnsiChar(AnsiString(AFileName)), FDatabase) <> SQLITE_OK then
    raise Exception.Create('Unable to open database: ' + AFileName);
end;

destructor TDatabase.Destroy;
begin
  SQLite3_Close(FDatabase);
  inherited;
end;

procedure TDatabase.ExecuteSQL(const ASQL: string);
begin
  if SQLite3_Exec(FDatabase, PAnsiChar(AnsiString(ASQL)), nil, nil, nil) <> SQLITE_OK then
    raise Exception.Create('SQL error: ' + ASQL);
end;

end.