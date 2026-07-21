program projeto_aula_8;

uses
  Vcl.Forms,
  Clientes in 'Clientes.pas' {frmClientes},
  dmDados in 'dmDados.pas' {DataModule1: TDataModule},
  main in 'main.pas' {frmMain},
  Produtos in 'Produtos.pas' {frmProdutos},
  Venda in 'Venda.pas' {frmVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.CreateForm(TfrmVenda, frmVenda);
  Application.Run;
end.
