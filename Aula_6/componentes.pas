unit componentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmComponentes = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComponentes: TfrmComponentes;

implementation

{$R *.dfm}

procedure TfrmComponentes.Button1Click(Sender: TObject);
begin
  ShowMessage(edtNome.Text);
end;

end.
