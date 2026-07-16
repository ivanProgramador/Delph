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
  object pnlFundo: TPanel
    Left = 144
    Top = 64
    Width = 329
    Height = 177
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 35
      Height = 15
      Caption = 'Altura:'
    end
    object Label2: TLabel
      Left = 25
      Top = 73
      Width = 28
      Height = 15
      Caption = 'Peso:'
    end
    object edtAltura: TEdit
      Left = 65
      Top = 29
      Width = 208
      Height = 23
      TabOrder = 0
    end
    object edtPeso: TEdit
      Left = 65
      Top = 70
      Width = 208
      Height = 23
      TabOrder = 1
    end
    object btnImc: TButton
      Left = 128
      Top = 112
      Width = 75
      Height = 25
      Caption = 'IMC'
      TabOrder = 2
      OnClick = btnImcClick
    end
  end
end
