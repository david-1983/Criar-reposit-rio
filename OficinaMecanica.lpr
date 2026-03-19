program OficinaMecanica;
uses Interfaces, Forms, MainUnit;
begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.