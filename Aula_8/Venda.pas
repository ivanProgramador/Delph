unit Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Samples.Spin, Vcl.NumberBox, Vcl.ComCtrls;

type
  TfrmVendas = class(TForm)
    lblNomeCli: TPanel;
    Label1: TLabel;
    edtBuscaCli: TEdit;
    dbgCliente: TDBGrid;
    pnlProdutos: TPanel;
    edtNomeProd: TEdit;
    Label2: TLabel;
    tnValor: TNumberBox;
    Label3: TLabel;
    spQtd: TSpinEdit;
    lblQtd: TLabel;
    DBGrid1: TDBGrid;
    btnIncluiItem: TButton;
    btnRemover: TButton;
    btnFechar: TButton;
    Label4: TLabel;
    lblCodigo: TLabel;
    Label5: TLabel;
    lblTot: TLabel;
    lsLista: TListView;
    edtNomeCli: TEdit;
    Label6: TLabel;
    lblClientes: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    NumberBox1: TNumberBox;
    Label9: TLabel;
    edtBuscaProd: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

{$R *.dfm}

end.
