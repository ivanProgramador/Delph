unit view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
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
{
  Trazenddo a unit Somas pra dentro da view
}
uses Somas;

procedure TForm1.Button1Click(Sender: TObject);

var
 {Definindo uma variavel do tipo Tsoma que e a classe que eu declarei dentro da unit Somas }
 calculo: Tsoma;
begin

   {
      Uma vez que calculo pertence a classe Tsoma ele herda todos os metodos dela então eu posso
      chmarra todos eles dentro do evento de onClick
    }
   calculo.Soma;
   calculo.Subtracao;
   calculo.Divisao;
   calculo.Multiplicacao;
end;

end.
