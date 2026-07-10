unit uniCondicional;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    txtNome: TEdit;
    Button1: TButton;
    lblResultado: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

    {
      O codigo abaixo testa se existe algum texto dentro da
      propriedade Text do componente txtNome
      se tiver o lblResltado recebe e exibe o nome
      se não ele vai chamar um compnete de mensagekj pra pedir
      ao usuario que digite o nome
      e depois vai limpar o reultado caso algum tenha escrito
      o nome antes dele.

      cada seguimento do fluxo tem o seu próprio
      begin e end que é executado de forma estrurada
      no caso o oprcessador lê o codigo de cima para baixo
    }

begin

   if txtNome.Text = '' then

    begin
        ShowMessage('Dgite seu nome');
        lblResultado.Caption := '';
    end

   else

     begin
       lblResultado.Caption := txtNome.Text;
     end;

end;

end.
