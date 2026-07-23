unit dmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    stInsereCliente: TADOStoredProc;
    QryClientes: TADOQuery;
    dsCliente: TDataSource;
    stAtualizaCliente: TADOStoredProc;
    stExcluiCliente: TADOStoredProc;
    QryProdutos: TADOQuery;
    dsProdutos: TDataSource;
    QryProdutosID_PROD: TAutoIncField;
    QryProdutosNOME_PROD: TStringField;
    QryProdutosQTD_PRO: TIntegerField;
    QryProdutosVL_PROD: TBCDField;
    spInsereProd: TADOStoredProc;
    spAtualizaProd: TADOStoredProc;
    stExcluirProd: TADOStoredProc;
    spListarProd: TADOStoredProc;
    spInsereVenda: TADOStoredProc;
    QryClientesID_CLI: TAutoIncField;
    QryClientesNOME_CLI: TStringField;
    QryCodVenda: TADOQuery;
    QryCodVendaCOLUMN1: TIntegerField;
    InsereItensVenda: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
