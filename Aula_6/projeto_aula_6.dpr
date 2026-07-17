program projeto_aula_6;

uses
  Vcl.Forms,
  principal in 'principal.pas' {Form1},
  componentes in 'componentes.pas' {frmComponentes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmComponentes, frmComponentes);
  Application.Run;
end.
