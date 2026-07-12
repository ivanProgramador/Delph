unit uScripts;

interface

type
  TScript = class
  private
    FNome: string;
    FCaminho: string;
    FTipo: string; // Ex: 'Batch' ou 'PowerShell'
  public
    constructor Create(ANome, ACaminho, ATipo: string);

    // estou usando a diretiva "property" pra poder manipular os atributos sem colocar como public
    property Nome: string read FNome write FNome;
    property Caminho: string read FCaminho write FCaminho;
    property Tipo: string read FTipo write FTipo;
  end;

implementation

{ TScript }

constructor TScript.Create(ANome, ACaminho, ATipo: string);
begin
  FNome    := ANome;
  FCaminho := ACaminho;
  FTipo    := ATipo;
end;

end.
