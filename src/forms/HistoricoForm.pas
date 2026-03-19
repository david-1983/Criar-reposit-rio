unit HistoricoForm;

{$MODE OBJFPC}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls;

type
  THistoricoForm = class(TForm)
    ListBoxHistorico: TListBox;
    ButtonClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  HistoricoForm: THistoricoForm;

implementation

{$R *.lfm}

procedure THistoricoForm.FormCreate(Sender: TObject);
begin
  // Set up initial form state and load historic data
end;

procedure THistoricoForm.ButtonCloseClick(Sender: TObject);
begin
  Close;
end;

end.