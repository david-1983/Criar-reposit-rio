unit RelatoriosForm;

interface

type
  TRelatoriosForm = class(TForm)
    private
      { private declarations }
      FRelatorioTipo: Integer;
    public
      { public declarations }
      constructor Create(AOwner: TComponent); override;
      procedure MostrarRelatorio;
  end;

var
  RelatoriosForm: TRelatoriosForm;

implementation

{$R *.dfm}

constructor TRelatoriosForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  // Code for initializing the form
end;

procedure TRelatoriosForm.MostrarRelatorio;
begin
  // Code to show report based on FRelatorioTipo
end;

end.