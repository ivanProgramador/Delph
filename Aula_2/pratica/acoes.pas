unit acoes;

interface
  uses
    Vcl.Forms,
    System.SysUtils,
    Vcl.Dialogs;

  Type
   TOperacoes = class

     public

       procedure somar;
       procedure subtrair;
       procedure multiplicar;
       procedure dividir;

     private

   end;

implementation
var
  resultado:Real;

   procedure TOperacoes.somar;
    begin
       resultado := 5 + 5;
       ShowMessage(floatToStr(resultado));
    end;

    procedure TOperacoes.subtrair;
     begin
       resultado := 20 - 5;
       ShowMessage(floatToStr(resultado));
     end;

    procedure TOperacoes.multiplicar;
     begin
       resultado := 30 * 10;
       ShowMessage(floatToStr(resultado));
     end;

     procedure TOperacoes.dividir;
      begin
        resultado := 20 / 5;
        ShowMessage(floatToStr(resultado));
      end;

end.
