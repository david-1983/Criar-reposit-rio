unit OSForm;

interface

type
  TFormOS = class(TForm)
    // Declare your form components here
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure FormShow(Sender: TObject);
  end;

var
  FormOS: TFormOS;

implementation

{ TFormOS }

constructor TFormOS.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  // Initialize form components here
end;

procedure TFormOS.FormShow(Sender: TObject);
begin
  // Code to execute when the form shows
end;

end.