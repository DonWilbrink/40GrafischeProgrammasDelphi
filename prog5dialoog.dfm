object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 303
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poMainFormCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 78
    Height = 15
    Caption = 'Halve grote as:'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 81
    Height = 15
    Caption = 'Halve kleine as:'
  end
  object Label3: TLabel
    Left = 16
    Top = 160
    Width = 113
    Height = 15
    Caption = 'Hoeveel hoekpunten:'
  end
  object SpinEdit1: TSpinEdit
    Left = 16
    Top = 37
    Width = 78
    Height = 24
    MaxValue = 127
    MinValue = 1
    TabOrder = 0
    Value = 1
  end
  object SpinEdit2: TSpinEdit
    Left = 16
    Top = 112
    Width = 78
    Height = 24
    MaxValue = 57
    MinValue = 1
    TabOrder = 1
    Value = 1
  end
  object SpinEdit3: TSpinEdit
    Left = 16
    Top = 192
    Width = 81
    Height = 24
    MaxValue = 25
    MinValue = 3
    TabOrder = 2
    Value = 3
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 240
    Width = 97
    Height = 41
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BitBtn1Click
  end
end
