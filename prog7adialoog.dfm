object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Input'
  ClientHeight = 245
  ClientWidth = 164
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 16
    Top = 35
    Width = 3
    Height = 13
  end
  object Label3: TLabel
    Left = 16
    Top = 64
    Width = 91
    Height = 13
    Caption = 'Bovengrens voor y'
  end
  object Label4: TLabel
    Left = 16
    Top = 111
    Width = 91
    Height = 13
    Caption = 'Ondergrens voor y'
  end
  object SpinEdit1: TSpinEdit
    Left = 8
    Top = 83
    Width = 91
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 16
    Top = 130
    Width = 91
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 176
    Width = 81
    Height = 47
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
