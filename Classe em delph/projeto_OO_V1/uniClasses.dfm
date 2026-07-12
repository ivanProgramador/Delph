object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 310
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 27
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 32
    Height = 15
    Caption = 'Idade:'
  end
  object edtNome: TEdit
    Left = 8
    Top = 48
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtIdade: TEdit
    Left = 8
    Top = 93
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object btnCriarPessoa: TButton
    Left = 8
    Top = 144
    Width = 121
    Height = 25
    Caption = 'Criar pessoa'
    TabOrder = 2
    OnClick = btnCriarPessoaClick
  end
  object mmResultado: TMemo
    Left = 184
    Top = 8
    Width = 432
    Height = 281
    Lines.Strings = (
      '')
    TabOrder = 3
  end
end
