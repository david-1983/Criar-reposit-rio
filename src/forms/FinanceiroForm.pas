unit FinanceiroForm;

interface

type
  TFinanceiroForm = class(TForm)
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
  FinanceiroForm: TFinanceiroForm;

implementation

{$R *.dfm}

procedure TFinanceiroForm.Button1Click(Sender: TObject);
begin
  ShowMessage('Hello, Financeiro!');
end;

end.