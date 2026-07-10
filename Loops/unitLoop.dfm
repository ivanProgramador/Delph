object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Loops em delph'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object mmoNumeros: TMemo
    Left = 0
    Top = 8
    Width = 185
    Height = 377
    Lines.Strings = (
      'mmoNumeros')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 280
    Top = 8
    Width = 75
    Height = 25
    Caption = 'FOR'
    TabOrder = 1
    OnClick = Button1Click
  end
end
