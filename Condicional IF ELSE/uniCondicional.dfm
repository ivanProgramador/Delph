object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
    Top = 144
    Width = 330
    Height = 15
    Caption = 
      '________________________________________________________________' +
      '__'
  end
  object txtNome: TEdit
    Left = 8
    Top = 37
    Width = 329
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 262
    Top = 80
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
