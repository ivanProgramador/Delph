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
