unit Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmVenda = class(TForm)
    pnlClientes: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtNomeCli: TEdit;
    gdrClientes: TDBGrid;
    pnlProdutos: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    gdrProdutos: TDBGrid;
    pnlVenda: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    lblCodVenda: TLabel;
    COD: TLabel;
    ListView1: TListView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

{$R *.dfm}

end.
