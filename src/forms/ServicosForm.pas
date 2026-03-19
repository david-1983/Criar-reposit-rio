unit ServicosForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TServicos = class(TForm)
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
  Servicos: TServicos;

implementation

{$R *.dfm}

procedure TServicos.Button1Click(Sender: TObject);
begin
  ShowMessage('Servicos button clicked!');
end;

end.