unit unitWhile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    mmNome: TMemo;
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

procedure TForm1.Button1Click(Sender: TObject);

 var
   contador: integer;

begin

   {contador começa com 1}
   contador := 1;

   {enquanto o contador tiver o valor menor ou igual a 5 }

  while contador <= 5 do

     begin
         {uma linha qquue moistra o valoer do contador sera adicionada ao memo }

         mmNome.Lines.Add('Número: ' + IntToStr(contador));

         {
           e o valor de 1 será incremenetada na variável se isso não acontecer
           o sistema entra em loop infinito
         }
         contador := contador + 1;

     end;

  end;

end.
