object Form1: TForm1
  Left = 0
  Top = 0
  Caption = '40 Grafische Programma'#39's'
  ClientHeight = 520
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  DesignSize = (
    781
    520)
  PixelsPerInch = 96
  TextHeight = 15
  object pbMain: TPaintBox
    Left = 32
    Top = 73
    Width = 721
    Height = 439
    Anchors = [akLeft, akTop, akBottom]
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 781
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
    ExplicitWidth = 880
    object lblN: TLabel
      Left = 60
      Top = 14
      Width = 23
      Height = 21
      Caption = 'N='
      Visible = False
    end
    object edN: TSpinEdit
      Left = 89
      Top = 11
      Width = 57
      Height = 32
      MaxValue = 19
      MinValue = 8
      TabOrder = 0
      Value = 8
      Visible = False
      OnChange = Diagonaalweb1Click
    end
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
      object Moireeeffect: TMenuItem
        Caption = 'Moiree effect'
        OnClick = MoireeeffectClick
      end
      object Driehoeken: TMenuItem
        Caption = 'Driehoeken'
        OnClick = DriehoekenClick
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
      object Grafiekvaneencontinuefunctie1: TMenuItem
        Caption = 'Grafiek van een continue functie'
        OnClick = Grafiekvaneencontinuefunctie1Click
      end
      object Sinuskrommen1: TMenuItem
        Caption = 'Sinuskrommen'
        OnClick = Sinuskrommen1Click
      end
    end
  end
end
