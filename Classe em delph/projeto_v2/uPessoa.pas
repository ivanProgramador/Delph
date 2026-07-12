
{
  Coloquei essa classe em uma unit spatrada pra entender como funciona o fluxo com arquivos
  externos
}
unit uPessoa;
interface

type
  TPessoa = class

  private
    FNome: string;
    FIdade: integer;
  public

    constructor Create(ANome: string; AIdade: integer);
    property Nome: string read FNome write FNome;
    property Idade: integer read FIdade write FIdade;

  end;

implementation

{ TPessoa }

constructor TPessoa.Create(ANome: string; AIdade: integer);
begin
  FNome  := ANome;
  FIdade := AIdade;
end;

end.
