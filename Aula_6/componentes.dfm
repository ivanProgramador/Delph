object frmComponentes: TfrmComponentes
  Left = 0
  Top = 0
  Caption = 'frmComponentes'
  ClientHeight = 440
  ClientWidth = 275
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object edtNome: TEdit
    Left = 74
    Top = 29
    Width = 161
    Height = 23
    TabOrder = 0
  end
  object cboNome: TComboBox
    Left = 50
    Top = 72
    Width = 185
    Height = 23
    ItemIndex = 1
    TabOrder = 1
    Text = 'FORTALEZA'
    Items.Strings = (
      'S'#195'O PAULO '
      'FORTALEZA'
      'BRASILIA'
      'MOSSORO'
      'BAHIA')
  end
  object btnExibirNome: TButton
    Left = 160
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Exibir Nome'
    TabOrder = 2
    OnClick = btnExibirNomeClick
  end
  object rgdEscolha: TRadioGroup
    Left = 50
    Top = 120
    Width = 185
    Height = 105
    Caption = 'Escolha uma op'#231#227'o'
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 3
  end
  object memLista: TMemo
    Left = 50
    Top = 248
    Width = 185
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 4
  end
end
