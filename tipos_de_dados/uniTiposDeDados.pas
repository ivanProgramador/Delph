unit uniTiposDeDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
  private
    { Private declarations variaveis declaradas aqui so podem ser usadas dentro da unit }
  public
    { Public declarations variavei declaradas aqui podem ser usadas em qualquer ponto do sistema  }
  end;

var
  Form1: TForm1;

  {
     incluido variaveis e testando tipos
     como se trata de uma liguagem procedural fortemente tipada
     então se eu quiser declarar a variável eu preciso literalmente dizer a que tipo
     essa variável pertente

     numero1: Integer;
     nome: String;
     ativo: Booleam;
     altura: Double;

     O TIPO ABAIXO É USADO EM VALORES DE MOEDAS DE FORMA GERAL

     imposto: Currency;

     data_nascimento: TDateTime;



  }



implementation

{$R *.dfm}

end.
