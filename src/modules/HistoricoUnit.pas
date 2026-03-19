unit HistoricoDeManutencao;

interface

uses
  SysUtils, Classes;

type
  THistorico = class
  private
    FData: TDateTime;
    FDescricao: string;
  public
    constructor Create(AData: TDateTime; ADescricao: string);
    property Data: TDateTime read FData;
    property Descricao: string read FDescricao;
  end;

implementation

constructor THistorico.Create(AData: TDateTime; ADescricao: string);
begin
  FData := AData;
  FDescricao := ADescricao;
end;

end.