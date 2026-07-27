unit dmDados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdm = class(TDataModule)
    conProjetoVenda: TADOConnection;
    stInsereCliente: TADOStoredProc;
    qryClientes: TADOQuery;
    qryClientesID_CLI: TAutoIncField;
    qryClientesNOME_CLI: TStringField;
    dsClientes: TDataSource;
    stAlteraCli: TADOStoredProc;
    stExcluiCliente: TADOStoredProc;
    qryProdutos: TADOQuery;
    qryProdutosID_PROD: TAutoIncField;
    qryProdutosNOME_PROD: TStringField;
    qryProdutosQTD_PRO: TIntegerField;
    qryProdutosVL_PROD: TBCDField;
    dsProdutos: TDataSource;
    stInsereProduto: TADOStoredProc;
    stAtualizaProduto: TADOStoredProc;
    stExcluiProduto: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
