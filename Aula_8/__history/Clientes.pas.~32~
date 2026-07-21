unit Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmClientes = class(TForm)
    Label1: TLabel;
    txtNome: TEdit;
    btnSalvar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    dbCliente: TDBGrid;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses dmDados;

procedure TfrmClientes.btnEditarClick(Sender: TObject);
  begin

      if Application.MessageBox('Deseja atualizar ?','Atenção',4 + MB_ICONEXCLAMATION) = ID_YES then
             begin

                  //fechando qualquer conexão que tenha sido aberta antes desse bloco
                  close;

                  //Aqui eu acesso meu DM vou no componente "stAtualizaCliente" pego o valor do parametro id pelo nome
                  // depois eu faço atribuição do parametro id ao valor que eu peguei da tablea que liusta os clientes
                  // la dentro tem um array de clientes o inidice zero do raray fields é o id porque o 1 seria o nome
                  // do cliente

                  dmDados.DataModule1.stAtualizaCliente.Parameters.ParamByName('@id').Value := dbCliente.Fields[0].Value;

                  //aqui eu faço a amesma coisa so muda o indice pra 1 pra poder pegar o nome

                  dmDados.DataModule1.stAtualizaCliente.Parameters.ParamByName('@Nome').Value := dbCliente.Fields[1].Value;

                  //executando a procedure no banco
                  DataModule1.stAtualizaCliente.ExecProc;

                   //abrindo e fechando a conexão pra atualizar atela
                 with dmDados.DataModule1.ADOQuery1 do
                      begin
                           close;
                           open;
                      end;
           end

       else
            begin
                Application.MessageBox('Açao cancelada','Atenção', MB_OK);
            end;

   end;







procedure TfrmClientes.btnExcluirClick(Sender: TObject);
begin

    if Application.MessageBox('Deseja excluir ?','Atenção',4 + MB_ICONEXCLAMATION) = ID_YES then

             begin

                with  dmDados.DataModule1.stExcluiCliente do
                      begin
                        close;
                        dmDados.DataModule1.stAtualizaCliente.Parameters.ParamByName('@id').Value := dbCliente.Fields[0].Value;
                        ExecProc;

                end;

                 //abrindo e fechando a conexão pra atualizar atela
               with dmDados.DataModule1.ADOQuery1 do
                  begin
                     close;
                     open;
                  end;

             end
    else
             begin
                  Application.MessageBox('Açao cancelada','Atenção', MB_OK);
             end;

end;



procedure TfrmClientes.btnSalvarClick(Sender: TObject);

      begin
         //Antes do usuario fazer um ação como gravar dados em uma sistema é uma boa pratica sempre perguntar
         //se ele relamenete deseja fazer isso em casos de cadastros

          if Application.MessageBox('Deseja salvarr ?','Atenção',4 + MB_ICONEXCLAMATION) = ID_YES then
             begin



                with dmDados.DataModule1.stInsereCliente do
                begin

                  Close;

                  // 1. Força o Delphi a ir buscar os parâmetros no SQL Server
                  Parameters.Refresh;

                  // 1. Passa o valor do seu TEdit (txtNome) para o parâmetro da procedure
                  Parameters.ParamByName('@Nome').Value := txtNome.Text;

                  // 2. Executa a procedure no SQL Server
                  ExecProc;

                end;

                //abrindo e fechando a conexão pra atualizar atela
                with dmDados.DataModule1.ADOQuery1 do
                  begin
                     close;
                     open;
                  end;

                //limpoando o campo

                txtNome.clear;
              end

          else
          Application.MessageBox('Açao cancelada','Atenção', MB_OK);

      end;




procedure TfrmClientes.FormShow(Sender: TObject);
begin
    // assim o formulario abrre ele ataualiza a tabela
  dmDados.DataModule1.ADOQuery1.Close;
  dmDados.DataModule1.ADOQuery1.Open;
end;

end.
