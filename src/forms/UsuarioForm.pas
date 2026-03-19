unit UsuarioForm;

interface

uses
  SysUtils, Classes, Controls, Forms, StdCtrls, Grids, DBGrids;

type
  TUsuarioForm = class(TForm)
    btnAdd: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    DBGrid1: TDBGrid;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsuarioForm: TUsuarioForm;

implementation

{$R *.dfm}

procedure TUsuarioForm.btnAddClick(Sender: TObject);
begin
  // Code to add a new user
end;

procedure TUsuarioForm.btnEditClick(Sender: TObject);
begin
  // Code to edit selected user information
end;

procedure TUsuarioForm.btnDeleteClick(Sender: TObject);
begin
  // Code to delete selected user
end;

end.