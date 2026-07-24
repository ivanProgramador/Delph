program projeto_aula_8;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  dmDados in 'dmDados.pas' {dm: TDataModule},
  Clientes in 'Clientes.pas' {frmCliente},
  Produtos in 'Produtos.pas' {frmProdutos},
  Venda in 'Venda.pas' {frmVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.CreateForm(TfrmVendas, frmVendas);
  Application.Run;
end.
