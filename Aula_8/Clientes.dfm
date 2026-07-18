object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 217
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 80
    Width = 51
    Height = 21
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtNome: TEdit
    Left = 74
    Top = 78
    Width = 351
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object btnSalvar: TButton
    Left = 74
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
  end
  object btnEditar: TButton
    Left = 208
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Atuaizar'
    TabOrder = 2
  end
  object btnExcluir: TButton
    Left = 350
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
  end
end
