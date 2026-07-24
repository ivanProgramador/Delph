object frmVendas: TfrmVendas
  Left = 0
  Top = 0
  Caption = 'venda'
  ClientHeight = 489
  ClientWidth = 945
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 21
  object Label4: TLabel
    Left = 21
    Top = 464
    Width = 99
    Height = 21
    Caption = 'Codigo venda:'
  end
  object lblCodigo: TLabel
    Left = 160
    Top = 424
    Width = 4
    Height = 21
  end
  object Label5: TLabel
    Left = 257
    Top = 464
    Width = 35
    Height = 21
    Caption = 'Total:'
  end
  object lblTot: TLabel
    Left = 288
    Top = 424
    Width = 4
    Height = 21
  end
  object lblNomeCli: TPanel
    Left = 8
    Top = 8
    Width = 417
    Height = 279
    TabOrder = 0
    object Label1: TLabel
      Left = 29
      Top = 46
      Width = 44
      Height = 20
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 13
      Top = 211
      Width = 46
      Height = 21
      Caption = 'Nome:'
    end
    object lblClientes: TLabel
      Left = 176
      Top = 8
      Width = 55
      Height = 21
      Caption = 'Clientes'
    end
    object edtBuscaCli: TEdit
      Left = 82
      Top = 45
      Width = 311
      Height = 29
      TabOrder = 0
    end
    object dbgCliente: TDBGrid
      Left = 29
      Top = 88
      Width = 364
      Height = 108
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object edtNomeCli: TEdit
      Left = 82
      Top = 208
      Width = 311
      Height = 29
      TabOrder = 2
    end
  end
  object pnlProdutos: TPanel
    Left = 440
    Top = 8
    Width = 481
    Height = 279
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 207
      Width = 44
      Height = 20
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 296
      Top = 244
      Width = 36
      Height = 20
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblQtd: TLabel
      Left = 168
      Top = 242
      Width = 32
      Height = 20
      Caption = 'QTD:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 200
      Top = 8
      Width = 63
      Height = 21
      Caption = 'Produtos'
    end
    object Label8: TLabel
      Left = 16
      Top = 241
      Width = 39
      Height = 21
      Caption = 'Valor:'
    end
    object Label9: TLabel
      Left = 16
      Top = 38
      Width = 46
      Height = 21
      Caption = 'Nome:'
    end
    object edtNomeProd: TEdit
      Left = 74
      Top = 203
      Width = 391
      Height = 29
      TabOrder = 0
    end
    object tnValor: TNumberBox
      Left = 351
      Top = 240
      Width = 114
      Height = 29
      Mode = nbmCurrency
      TabOrder = 1
    end
    object spQtd: TSpinEdit
      Left = 224
      Top = 240
      Width = 50
      Height = 31
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object DBGrid1: TDBGrid
      Left = 72
      Top = 79
      Width = 392
      Height = 120
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object NumberBox1: TNumberBox
      Left = 69
      Top = 238
      Width = 84
      Height = 29
      Mode = nbmCurrency
      TabOrder = 4
    end
    object edtBuscaProd: TEdit
      Left = 68
      Top = 35
      Width = 397
      Height = 29
      TabOrder = 5
    end
  end
  object btnIncluiItem: TButton
    Left = 8
    Top = 305
    Width = 91
    Height = 25
    Caption = 'Inclui item'
    TabOrder = 2
  end
  object btnRemover: TButton
    Left = 412
    Top = 305
    Width = 115
    Height = 25
    Caption = 'Remover Item'
    TabOrder = 3
  end
  object btnFechar: TButton
    Left = 815
    Top = 305
    Width = 106
    Height = 25
    Caption = 'Fechar Venda'
    TabOrder = 4
  end
  object lsLista: TListView
    Left = 8
    Top = 336
    Width = 913
    Height = 122
    Columns = <
      item
        AutoSize = True
        Caption = 'PRODUTO'
      end
      item
        AutoSize = True
        Caption = 'QTD'
      end
      item
        AutoSize = True
        Caption = 'VALOR'
      end
      item
        AutoSize = True
        Caption = 'TOTAL'
      end>
    TabOrder = 5
    ViewStyle = vsReport
  end
end
