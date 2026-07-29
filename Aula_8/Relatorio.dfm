object frmRelatorio: TfrmRelatorio
  Left = 0
  Top = 0
  Caption = 'Relatorio'
  ClientHeight = 493
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object rlRelatorio: TRLReport
    Left = 8
    Top = -16
    Width = 794
    Height = 1123
    DataSource = dm.dsRelatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 147
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 256
        Top = 24
        Width = 208
        Height = 24
        Alignment = taCenter
        Caption = 'Relat'#243'rio de vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 320
        Top = 54
        Width = 60
        Height = 16
        Alignment = taCenter
        Info = itFullDate
        Text = ''
      end
    end
  end
end
