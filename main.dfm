object Form1: TForm1
  Left = 0
  Top = 0
  Caption = '40 Grafische Programma'#39's'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object pbMain: TPaintBox
    Left = 32
    Top = 64
    Width = 561
    Height = 361
  end
  object Button1: TButton
    Left = 32
    Top = 8
    Width = 105
    Height = 34
    Caption = 'Diagonaalweb'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 143
    Top = 8
    Width = 105
    Height = 34
    Caption = 'Moiree effect'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 254
    Top = 8
    Width = 105
    Height = 34
    Caption = 'Driehoeken'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 365
    Top = 8
    Width = 105
    Height = 34
    Caption = 'Zeshoeken'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 476
    Top = 8
    Width = 117
    Height = 34
    Caption = 'Diagonalen n-hoek'
    TabOrder = 4
    OnClick = Button5Click
  end
end
