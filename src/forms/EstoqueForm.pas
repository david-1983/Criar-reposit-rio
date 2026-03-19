unit EstoqueForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls;

type
  TEstoque = class(TForm)
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
  Estoque: TEstoque;

implementation

{$R *.dfm}

procedure TEstoque.Button1Click(Sender: TObject);
begin
  ShowMessage('Estoque: ' + Edit1.Text);
end;

end.