unit unitCondicional2;

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
    txtIdade: TEdit;
    Label2: TLabel;
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



begin

   {
    Testando 2 campos diferentes
    de forma separada
   }

   if txtNome.Text = '' then

     begin
       showMessage('Digite seu nome !');
     end;

   if txtIdade.Text = '' then

     begin
       showMessage('Digite a idade !');
     end;

   {
     testando 2 campos com o mesmo if
     para o delph o operador diferente é assim ' <> '
   }

   if(txtNome.Text <> '') and (txtIdade.Text <> '') then

     begin
        showMessage('Cadastro concluido ');
     end;





end;

end.
