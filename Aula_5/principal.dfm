object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 291
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnWhile: TButton
    Left = 48
    Top = 40
    Width = 105
    Height = 25
    Caption = 'Iniciar Loop while'
    TabOrder = 0
    OnClick = btnWhileClick
  end
  object btnFor: TButton
    Left = 48
    Top = 88
    Width = 105
    Height = 25
    Caption = 'Iniciar Loop For'
    TabOrder = 1
    OnClick = btnForClick
  end
  object btnRepeat: TButton
    Left = 48
    Top = 136
    Width = 105
    Height = 25
    Caption = 'Iniciar Repeat until'
    TabOrder = 2
    OnClick = btnRepeatClick
  end
end
