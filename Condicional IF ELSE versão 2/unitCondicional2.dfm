object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'condicional vers'#227'o 2'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 89
    Height = 15
    Caption = 'Digite seu nome:'
  end
  object lblResultado: TLabel
    Left = 8
    Top = 184
    Width = 300
    Height = 15
    Caption = '____________________________________________________________'
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 87
    Height = 15
    Caption = 'Digite sua idade:'
  end
  object txtNome: TEdit
    Left = 8
    Top = 37
    Width = 305
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 238
    Top = 144
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object txtIdade: TEdit
    Left = 8
    Top = 93
    Width = 305
    Height = 23
    TabOrder = 2
  end
end
