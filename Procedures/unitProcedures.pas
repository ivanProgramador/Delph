unit unitProcedures;

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

    {
      declarando uma um procedure
      toda procedure deve ser colocada tambem na sessão de implementacão

     }
    procedure MinhaProcedure;

    {
      toda funcção delcrada deve ter um retorno
      no caso da função abaixo ela vai retornar uma string
      ela tambem deve ser declarada na sessão
      implementation
    }
    function MinhaFuncao:string;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{
  usando o evento de click pra chamar a procedure
}
procedure TForm1.Button1Click(Sender: TObject);
begin

  MinhaProcedure;
end;



{
  procedure implementada

}
procedure TForm1.MinhaProcedure;
   begin
     ShowMessage('minha procedure');
   end;

 {
  a function dentro do begin e do end dela  sempre deve ter um result
  que seria  retorno dela

 }
function TForm1.MinhaFuncao: string;
   begin

      result := 'Minha função';

   end;

end.
