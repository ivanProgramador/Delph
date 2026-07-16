program pratica;

uses
  Vcl.Forms,
  principal in 'principal.pas' {Form1},
  acoes in 'acoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
