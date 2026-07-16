program projeto_aula_2;

uses
  Vcl.Forms,
  view.principal in 'view.principal.pas' {Form1},
  Somas in 'Somas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
