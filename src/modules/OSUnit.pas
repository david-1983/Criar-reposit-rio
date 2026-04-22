unit OSUnit;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, DatabaseUnit;

type
  TOrdemDeServico = class
  private
    FId: Integer;
    FData: string;
    FDescricao: string;
    FStatus: string;
    FVeiculoId: Integer;
    FValorTotal: Double;
  public
    constructor Create(AVeiculoId: Integer; ADescricao: string; AStatus: string = 'Aberta');
    procedure SaveToDatabase(ADatabase: TDatabase);
    function ObterDescricao: string;
    property Id: Integer read FId write FId;
    property Descricao: string read FDescricao write FDescricao;
    property Status: string read FStatus write FStatus;
    property ValorTotal: Double read FValorTotal write FValorTotal;
  end;

implementation

constructor TOrdemDeServico.Create(AVeiculoId: Integer; ADescricao: string; AStatus: string = 'Aberta');
begin
  FId := 0;
  FVeiculoId := AVeiculoId;
  FDescricao := ADescricao;
  FStatus := AStatus;
  FData := FormatDateTime('yyyy-mm-dd', Now);
  FValorTotal := 0;
end;

procedure TOrdemDeServico.SaveToDatabase(ADatabase: TDatabase);
var
  SQL: string;
  EDescricao, EStatus: string;
begin
  EDescricao := ADatabase.EscapeString(FDescricao);
  EStatus := ADatabase.EscapeString(FStatus);

  if FId = 0 then
  begin
    SQL := Format('INSERT INTO ordens_servico (data, descricao, status, veiculo_id, valor_total) VALUES (''%s'', ''%s'', ''%s'', %d, %s);',
                  [FData, EDescricao, EStatus, FVeiculoId, StringReplace(FloatToStr(FValorTotal), ',', '.', [rfReplaceAll])]);
    ADatabase.ExecuteSQL(SQL);
    FId := ADatabase.GetLastInsertID;
  end
  else
  begin
    SQL := Format('UPDATE ordens_servico SET descricao = ''%s'', status = ''%s'', valor_total = %s WHERE id = %d;',
                  [EDescricao, EStatus, StringReplace(FloatToStr(FValorTotal), ',', '.', [rfReplaceAll]), FId]);
    ADatabase.ExecuteSQL(SQL);
  end;
end;

function TOrdemDeServico.ObterDescricao: string;
begin
  Result := Format('Ordem de Serviço #%d: %s (Status: %s)', [FId, FDescricao, FStatus]);
end;

end.
