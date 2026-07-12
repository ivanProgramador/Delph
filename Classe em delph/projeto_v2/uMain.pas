unit uMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Buttons,
  Vcl.StdCtrls,
  System.Generics.Collections, // chamando a classe de listas
  uPessoa;                     // chamando a unit uPessoa que ta com a classe TPessoa dentro dela

type
  TForm1 = class(TForm)
    edtNome: TEdit;
    edtIdade: TEdit;
    lbPessoas: TListBox;
    btnAdicionar: TButton;
    btnApagar: TButton;
    btnEditar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject); // Declarado evento de apagar
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
    FPosicaoEdicao: integer;
    ListaDePessoas: TObjectList<TPessoa>; // Declarando a lista
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

    // Procedure global auxiliar para atualizar a tela sem dar erro de sincronia
    procedure AtualizarListaInterface;
    var
      Pessoa: TPessoa;
    begin
      Form1.lbPessoas.Items.Clear;

      for Pessoa in Form1.ListaDePessoas do
      begin
        Form1.lbPessoas.Items.Add(Pessoa.Nome + ' (' + IntToStr(Pessoa.Idade) + ' anos)');
      end;
    end;

    procedure TForm1.FormCreate(Sender: TObject);
    begin
        // Cria a lista na memória
        ListaDePessoas := TObjectList<TPessoa>.Create(True);
    end;

    procedure TForm1.FormDestroy(Sender: TObject);
    begin
      // Libera a memória ao fechar
      ListaDePessoas.Free;
    end;

    procedure TForm1.btnAdicionarClick(Sender: TObject);
    var
      NovaPessoa: TPessoa;
    begin
      if (edtNome.Text = '') or (edtIdade.Text = '') then Exit;

      // Cria e adiciona o objeto na lista
      NovaPessoa := TPessoa.Create(edtNome.Text, StrToInt(edtIdade.Text));
      ListaDePessoas.Add(NovaPessoa);

      AtualizarListaInterface;

      edtNome.Clear;
      edtIdade.Clear;
      edtNome.SetFocus;
    end;


  procedure TForm1.btnApagarClick(Sender: TObject);
        var
          PosicaoSelecionada: integer;
        begin
          PosicaoSelecionada := lbPessoas.ItemIndex;

        if PosicaoSelecionada = -1 then
          begin
            ShowMessage('Por favor, selecione uma pessoa na lista para apagar!');
            Exit;
          end;

          // Deleta da lista e limpa a memória automaticamente
          ListaDePessoas.Delete(PosicaoSelecionada);

         AtualizarListaInterface;
      end;

    procedure TForm1.btnEditarClick(Sender: TObject);
      var
        PessoaSelecionada: TPessoa;
      begin
        // pegando o caption do btão pra ter certeza que ele foi acionado

        if btnEditar.Caption = 'Editar Selecionado' then
        begin
          //se sim eu pego a numeração do indice da lista e coloco na variavel "FPosicaoEdicao"

          FPosicaoEdicao := lbPessoas.ItemIndex;

         // se o botão for acionado e ningeum estiver selecionado eu peço ao usuario pra selecionar
         //no delph -1 siginifica nenhuma opção selcionada

          if FPosicaoEdicao = -1 then

          begin
            ShowMessage('Selecione alguém na lista para editar!');
            Exit;
          end;

          // cada possição da lista guarda os dados do objeto em um array
          //aqui eu pego os dados que estão na posição que eu recebi

          PessoaSelecionada := ListaDePessoas[FPosicaoEdicao];

          // aqui eu pego os dados e mando de volta para os campos

          edtNome.Text  := PessoaSelecionada.Nome;
          edtIdade.Text := IntToStr(PessoaSelecionada.Idade);

          // troco o texto do botão editar parar que o usuario saiba onde clicar pra gravar as alterações
          btnEditar.Caption    := 'Salvar Alteração';
          btnAdicionar.Enabled := False; // aqui eu bloqueio o botão adicionar pra evitar que ele acione a procedure errada
          edtNome.SetFocus;
        end

        else
          //depois que ele clica em salvar dados
        begin
          //testando se os dados vieram vazios
          if (edtNome.Text = '') or (edtIdade.Text = '') then Exit;

          //pegando os dados que vieram a colovando na posição que foi selecionada
          ListaDePessoas[FPosicaoEdicao].Nome  := edtNome.Text;
          ListaDePessoas[FPosicaoEdicao].Idade := StrToInt(edtIdade.Text);

          // ataualizando a tela com novos dados
          AtualizarListaInterface;

          // Resetando os compnenetes ops a alteração
          btnEditar.Caption    := 'Editar Selecionado';
          btnAdicionar.Enabled := True;
          edtNome.Clear;
          edtIdade.Clear;
        end;
      end;

   end.


end;
