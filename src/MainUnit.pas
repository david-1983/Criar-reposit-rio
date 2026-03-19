unit MainUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

type

  { TMainForm }

  TMainForm = class(TForm)
    MainMenu: TMainMenu;
    FileMenu: TMenuItem;
    Module1Menu: TMenuItem;
    Module2Menu: TMenuItem;
    Module3Menu: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Module1MenuClick(Sender: TObject);
    procedure Module2MenuClick(Sender: TObject);
    procedure Module3MenuClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.FormCreate(Sender: TObject);
begin
  // Initialization code
end;

procedure TMainForm.Module1MenuClick(Sender: TObject);
begin
  ShowMessage('Module 1 selected');
end;

procedure TMainForm.Module2MenuClick(Sender: TObject);
begin
  ShowMessage('Module 2 selected');
end;

procedure TMainForm.Module3MenuClick(Sender: TObject);
begin
  ShowMessage('Module 3 selected');
end;

end.
