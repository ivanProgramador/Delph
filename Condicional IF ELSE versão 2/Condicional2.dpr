program Condicional2;

uses
  Vcl.Forms,
  unitCondicional2 in 'unitCondicional2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
