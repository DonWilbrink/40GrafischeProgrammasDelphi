object Form1: TForm1
  Left = 0
  Top = 0
  Caption = '40 Grafische Programma'#39's'
  ClientHeight = 442
  ClientWidth = 880
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  DesignSize = (
    880
    442)
  PixelsPerInch = 96
  TextHeight = 15
  object pbMain: TPaintBox
    Left = 32
    Top = 64
    Width = 605
    Height = 361
    Anchors = [akLeft, akTop, akBottom]
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 880
    Height = 49
    Align = alTop
    Caption = 
      '40 grafische programma'#39's vertaald uit ZXSpectrum basic naar Delp' +
      'hi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 628
  end
  object Memo1: TMemo
    Left = 664
    Top = 64
    Width = 185
    Height = 361
    ScrollBars = ssVertical
    TabOrder = 1
    Visible = False
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object Programma1101: TMenuItem
      Caption = 'Programma 1-10'
      object Diagonaalweb1: TMenuItem
        Caption = 'Diagonaal web'
        OnClick = Diagonaalweb1Click
      end
      object Moireeeffect1: TMenuItem
        Caption = 'Moiree effect'
        OnClick = Moireeeffect1Click
      end
      object Moireeeffect2: TMenuItem
        Caption = 'Driehoeken'
        OnClick = Moireeeffect2Click
      end
      object Zeshoeken1: TMenuItem
        Caption = 'Zeshoeken'
        OnClick = Zeshoeken1Click
      end
      object Diagonalenhoeken1: TMenuItem
        Caption = 'Diagonale n-hoeken'
        OnClick = Diagonalenhoeken1Click
      end
      object Ingeschrevenvierkanten1: TMenuItem
        Caption = 'Ingeschreven vierkanten'
        OnClick = Ingeschrevenvierkanten1Click
      end
    end
  end
end
