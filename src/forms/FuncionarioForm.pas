unit FuncionarioForm;

interface

type
  TFuncionarioForm = class(TForm)
    private
      FName: TEdit;
      FAge: TEdit;
      FButton: TButton;
      procedure FButtonClick(Sender: TObject);
    public
      constructor Create(AOwner: TComponent); override;
  end;

var
  FuncionarioForm: TFuncionarioForm;

implementation

constructor TFuncionarioForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FName := TEdit.Create(Self);
  FAge := TEdit.Create(Self);
  FButton := TButton.Create(Self);
  FButton.OnClick := FButtonClick;
  // Set properties for the controls here...
end;

procedure TFuncionarioForm.FButtonClick(Sender: TObject);
begin
  // Handle button click event...
end;

end.