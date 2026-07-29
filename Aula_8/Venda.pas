unit Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Samples.Spin, Vcl.NumberBox, Vcl.ComCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmVendas = class(TForm)
    lblNomeCli: TPanel;
    Label1: TLabel;
    edtBuscaCli: TEdit;
    dbgCliente: TDBGrid;
    btnIncluiItem: TButton;
    btnRemover: TButton;
    btnFechar: TButton;
    Label4: TLabel;
    lblCodVenda: TLabel;
    Label5: TLabel;
    lblTotalVenda: TLabel;
    lsLista: TListView;
    edtNomeCli: TEdit;
    Label6: TLabel;
    lblClientes: TLabel;
    pnlProdutos: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    lblQtd: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtNomeProd: TEdit;
    tnTotalProduto: TNumberBox;
    spQtd: TSpinEdit;
    dbgProdutos: TDBGrid;
    nbValor: TNumberBox;
    edtBuscaProd: TEdit;
    Image1: TImage;
    procedure edtBuscaCliChange(Sender: TObject);
    procedure edtBuscaProdChange(Sender: TObject);
    procedure dbgClienteCellClick(Column: TColumn);
    procedure dbgProdutosCellClick(Column: TColumn);
    procedure spQtdExit(Sender: TObject);
    procedure btnIncluiItemClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

{$R *.dfm}

uses dmDados;




procedure TfrmVendas.btnFecharClick(Sender: TObject);
var
    retorno : integer;
    erMsg: String;
    i: Integer;
begin
    {
      O fechamento de venda é feito em 3 partes:
      1 - pegar a lista de produtos e associar a venda
      2 - pegar o id do cliente e o valor total e o codigo da venda
      3 - adicionar + 1 ao codigo para que a proxima venda não sobreponha a venda atual
    }

  // fase 1: botando os itens na venda

      for I := 0 to lsLista.Items.Count - 1 do

      begin

        with dm.stInsereItensVenda do

        begin

          close;

            Parameters.ParamByName('@nm_Prod').Value   := lsLista.Items[i].Caption;

            // CORREÇÃO 1: A quantidade é SubItems[0]

              Parameters.ParamByName('@qtdVenda').Value  := StrToInt(lsLista.Items[i].SubItems[0]);

              Parameters.ParamByName('@codVEnda').Value  := lblCodVenda.Caption;

              ExecProc;

              retorno := Parameters.ParamByName('@return').Value;
              erMSG   := Parameters.ParamByName('@erMsg').Value;

              // Se der estoque baixo (3), exibe o aviso, mas CONTINUA

              if (retorno = 3) then
              begin

                ShowMessage(erMsg);

              end

              // CORREÇÃO 2: Se não houver estoque suficiente (2), exibe mensagem e CANCELA o fechamento

              else if (retorno = 2) then

              begin

                ShowMessage(erMsg);

                Exit; // Interrompe o fechamento da venda

              end;

          end;
      end;

        // Fase 2: Insere a venda principal se passou por todos os itens

          if (retorno = 1) or (retorno = 3) then
          begin
            with dm.stInsereVenda do
            begin

              close;

              Parameters.ParamByName('@idCli').Value    := dbgCliente.Fields[0].Value;
              Parameters.ParamByName('@total').Value    := lblTotalVenda.Caption;
              Parameters.ParamByName('@codVenda').Value  := lblCodVenda.Caption;
              ExecProc;

            end;
          end;

        // Fase 3: Atualiza código para a próxima venda e dá refresh

        lblCodVenda.Caption := IntToStr(dm.qryCodigoVenda.FieldByName('COLUMN1').Value + 1);

        dm.qryProdutos.Refresh;
      end;








procedure TfrmVendas.btnIncluiItemClick(Sender: TObject);

 var
    lista : TListItem;
    qtd, i: integer;
    tot: Real;

  begin

      qtd := StrToInt(spQtd.Text);

      if qtd > 0 then
         begin

             lista := lsLista.Items.Add;
             lista.Caption := edtNomeProd.Text;
             lista.SubItems.Add(spQtd.Text);
             lista.SubItems.Add(nbValor.Text);
             lista.SubItems.Add(tnTotalProduto.Text);

             tot := 0;

             //o for vai percorrer todos os indices do lsItem

             for i := 0  to lslista.Items.Count -1  do

             begin

              //de todos os itens exitentes ele vai pegar o indice
              //que esta na posição i que seria a linha
              // depois ele vai acessar a posição 2 da linha onde fica o total
              // depois ele vai passar esse total para o texto da "lblTot"
              //convertido pra texto

               tot := tot + StrToFloat(lsLista.Items[i].SubItems[2]);

               lblTotalVenda.Caption := 'R$' + FloatToStr(tot);

               edtNomeProd.Clear;
               spQtd.Clear;
               nbValor.Clear;
               tnTotalProduto.Clear;





             end;
       end
      else

       ShowMessage('Digite a quantidade do produto');
       spQtd.Focused;


 end;





procedure TfrmVendas.btnRemoverClick(Sender: TObject);
var
    i: Integer;
    Tot: Double;
begin
      if lsLista.Selected <> nil then
        lsLista.Selected.Delete;

        Tot := 0;

        for i := 0 to lsLista.Items.Count - 1 do
          Tot := Tot + StrToFloat(lsLista.Items[i].SubItems[2]);

        lblTotalVenda.Caption := 'R$ ' + FloatToStr(Tot);

        edtNomeProd.Clear;
        spQtd.Clear;
        nbValor.Clear;
        tnTotalProduto.Clear;
end;



procedure TfrmVendas.dbgClienteCellClick(Column: TColumn);
begin
     edtNomeCli.Text :=  dbgCliente.Fields[1].Value;
end;




procedure TfrmVendas.dbgProdutosCellClick(Column: TColumn);
begin
     edtNomeProd.Text :=  dbgProdutos.Fields[1].Value;
     nbValor.Text   :=   dbgProdutos.Fields[3].Value;
end;







procedure TfrmVendas.edtBuscaCliChange(Sender: TObject);
  begin
     with dm.qryClientes do
        begin

          Filtered := false;

            if Trim(edtBuscaCli.Text) = '' then
                 begin
                     Filtered := false;
                     Filter := '';
                 end
            else


                 Filter := 'NOME_CLI like ' + QuotedStr('%' + Trim(edtBuscaCli.Text) + '%');

                 Filtered := true;

          end;
   end;

procedure TfrmVendas.edtBuscaProdChange(Sender: TObject);
begin
    with dm.qryProdutos do

        begin

          Filtered := false;

            if Trim(edtBuscaProd.Text) = '' then
                 begin
                     Filtered := false;
                     Filter := '';
                 end
            else


                 Filter := 'NOME_PROD like ' + QuotedStr('%' + Trim(edtBuscaProd.Text) + '%');

                 Filtered := true;

          end;

end;





procedure TfrmVendas.FormCreate(Sender: TObject);
begin
   dm.qryProdutos.Refresh;
end;

procedure TfrmVendas.FormShow(Sender: TObject);
 var
  vProximoCodigo: Int64;

  begin
     with dm.qryCodigoVenda do
       begin
         close;
         open;

        // Se estiver nulo (sem vendas), assume 0 e soma 1 (resultado: 1)
        if FieldByName('COLUMN1').IsNull then
          vProximoCodigo := 1
        else
          vProximoCodigo := FieldByName('COLUMN1').AsLargeInt + 1;

        lblCodVenda.Caption := IntToStr(vProximoCodigo);

        dm.qryProdutos.Refresh;
      end;

  end;



procedure TfrmVendas.spQtdExit(Sender: TObject);

 var
   qtd: Integer;
   total:Real;


begin

    //pegando a quantidade

    qtd := StrToInt(spQtd.Text);

    //multiplicando a quantidade pelo valor do produto

    total := qtd * nbValor.Value;

    tnTotalProduto.Text := FloatToStr(total);




end;

end.
