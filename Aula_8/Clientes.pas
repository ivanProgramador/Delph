unit Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TfrmClientes = class(TForm)
    Label1: TLabel;
    txtNome: TEdit;
    btnSalvar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

end.
