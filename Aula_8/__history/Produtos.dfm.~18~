object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Caption = 'cadastro de produtos'
  ClientHeight = 329
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 47
    Height = 20
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 61
    Width = 34
    Height = 20
    Caption = 'QTD:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 200
    Top = 62
    Width = 41
    Height = 20
    Caption = 'Valor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSalvar: TButton
    Left = 8
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = btnSalvarClick
  end
  object btnAtualizar: TButton
    Left = 176
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 5
    OnClick = btnAtualizarClick
  end
  object btnExcluir: TButton
    Left = 358
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 6
    OnClick = btnExcluirClick
  end
  object edtNome: TEdit
    Left = 61
    Top = 33
    Width = 372
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object spQtd: TSpinEdit
    Left = 61
    Top = 62
    Width = 121
    Height = 24
    MaxValue = 100
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object tnValor: TNumberBox
    Left = 247
    Top = 62
    Width = 186
    Height = 23
    Mode = nbmCurrency
    TabOrder = 2
  end
  object grdProduto: TDBGrid
    Left = 8
    Top = 132
    Width = 425
    Height = 120
    DataSource = dm.dsProdutos
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PROD'
        Title.Caption = 'codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PROD'
        Title.Caption = 'Nome'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_PRO'
        Title.Caption = 'QTD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_PROD'
        Title.Caption = 'VALOR'
        Width = 105
        Visible = True
      end>
  end
end
