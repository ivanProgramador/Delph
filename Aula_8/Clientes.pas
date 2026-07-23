unit Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmCliente = class(TForm)
    lblNomeCli: TLabel;
    edtNome: TEdit;
    bntSalvar: TButton;
    btnAtualizar: TButton;
    btnExcluir: TButton;
    grdClientes: TDBGrid;
    procedure bntSalvarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.dfm}

uses dmDados;

procedure TfrmCliente.bntSalvarClick(Sender: TObject);
    begin


    if Application.MessageBox('Deseja salvar',' Atenção',4 + MB_ICONEXCLAMATION) = IDYES then
      begin


              {trazendo o meu dm dados pra usar o componete st }
              with dm.stInsereCliente do
              begin
                 close;

               {
                 como estou usando usadno ADO pra se comunicar com o sql server eu preciso
                 fazer esse caminho ate o parametro

                 DICA: não tente ativar uma procedure que exige paramtros pelo data modelu isso da erro
               }

               dm.stInsereCliente.Parameters.ParamByName('@nome').Value := edtNome.Text;


               {
                 já peguei os parametros da procedure que eu precisava agora vou excutar
               }
               ExecProc;
          end;
               {
                 fechnado e abrindo a querya pra ataualizar o grid
               }
              with dm.qryClientes do

              begin

                close;
                open;

              end;

              edtNome.Clear;

           end

    else
           Application.MessageBox('Operação cancelada',' Atenção',4 + MB_ICONEXCLAMATION);

    end;


procedure TfrmCliente.btnAtualizarClick(Sender: TObject);
    begin
       if Application.MessageBox('Deseja Atualizar',' Atenção',4 + MB_ICONEXCLAMATION) = IDYES then
        begin
          with dm.stAlteraCli do
            begin
                close;
                 {
                   O atributo Fields da minha "grdClientes" é um array de campos
                   pra editar um cliente eu preciso pegar o id dele então no Fieds
                   eu escolho inidice 0 porque ele contem o id.
                   depois epego o nome correpondente a ele na posição 1
                   e executo a procedure
                 }
                 dm.stAlteraCli.Parameters.ParamByName('@id').Value := grdClientes.Fields[0].Value;
                 dm.stAlteraCli.Parameters.ParamByName('@nome').Value := grdClientes.Fields[1].Value;

                 ExecProc;
             end;

              with dm.qryClientes do

              begin

                close;
                open;

              end;


        end
       else
       Application.MessageBox('Operação cancelada',' Atenção',4 + MB_ICONEXCLAMATION);
    end;

procedure TfrmCliente.btnExcluirClick(Sender: TObject);
    begin
      if Application.MessageBox('Deseja Excluir',' Atenção',4 + MB_ICONEXCLAMATION) = IDYES then
         begin

          with dm.stExcluiCliente do
            begin
                 dm.stExcluiCliente.Parameters.ParamByName('@id').Value := grdClientes.Fields[0].Value;
                 ExecProc;
            end;

          with dm.qryClientes do

              begin

                close;
                open;

              end;
         end
      else
       Application.MessageBox('Operação cancelada',' Atenção',4 + MB_ICONEXCLAMATION);



    end;

end.
