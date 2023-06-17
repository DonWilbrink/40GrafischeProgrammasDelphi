object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 187
  ClientWidth = 162
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 98
    Height = 13
    Caption = 'Linker-interval grens'
  end
  object Label2: TLabel
    Left = 16
    Top = 55
    Width = 108
    Height = 13
    Caption = 'Rechter-interval grens'
  end
  object SpinEdit1: TSpinEdit
    Left = 8
    Top = 27
    Width = 73
    Height = 22
    MaxValue = 20
    MinValue = -15
    TabOrder = 0
    Value = -15
  end
  object SpinEdit2: TSpinEdit
    Left = 8
    Top = 74
    Width = 73
    Height = 22
    MaxValue = 20
    MinValue = -15
    TabOrder = 1
    Value = 100
  end
  object BitBtn1: TBitBtn
    Left = 39
    Top = 120
    Width = 75
    Height = 49
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
