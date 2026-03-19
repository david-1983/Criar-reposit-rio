unit ClienteForm;

interface

type
  TClienteForm = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClienteForm: TClienteForm;

implementation

{$R *.dfm}

procedure TClienteForm.Button1Click(Sender: TObject);
begin
  ShowMessage('Cliente form button clicked!');
end;

end.