object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = '40 Grafische Programma'#39's'
  ClientHeight = 569
  ClientWidth = 875
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object pbMain: TPaintBox
    Left = 185
    Top = 49
    Width = 690
    Height = 520
    Align = alClient
    ExplicitLeft = 201
    ExplicitTop = 55
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 875
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
  end
  object pnlSide: TPanel
    Left = 0
    Top = 49
    Width = 185
    Height = 520
    Align = alLeft
    TabOrder = 1
    object pnlDiagWeb: TPanel
      Left = 1
      Top = 1
      Width = 183
      Height = 518
      Align = alClient
      TabOrder = 0
      Visible = False
      object lblN: TLabel
        Left = 28
        Top = 24
        Width = 17
        Height = 15
        Caption = 'N='
      end
      object edN: TSpinEdit
        Left = 55
        Top = 21
        Width = 57
        Height = 24
        MaxValue = 19
        MinValue = 8
        TabOrder = 0
        Value = 8
        OnChange = Diagonaalweb1Click
      end
    end
    object pnlDiagNHoek: TPanel
      Left = 1
      Top = 1
      Width = 183
      Height = 518
      Align = alClient
      TabOrder = 1
      Visible = False
      object lblBreed: TLabel
        Left = 8
        Top = 8
        Width = 78
        Height = 15
        Caption = 'Halve grote as:'
      end
      object lblHoog: TLabel
        Left = 8
        Top = 80
        Width = 81
        Height = 15
        Caption = 'Halve kleine as:'
      end
      object lblHoek: TLabel
        Left = 8
        Top = 160
        Width = 113
        Height = 15
        Caption = 'Hoeveel hoekpunten:'
      end
      object seBreed: TSpinEdit
        Left = 8
        Top = 37
        Width = 78
        Height = 24
        Increment = 10
        MaxValue = 300
        MinValue = 50
        TabOrder = 0
        Value = 50
        OnChange = Diagonalenhoeken1Click
      end
      object seHoog: TSpinEdit
        Left = 8
        Top = 112
        Width = 78
        Height = 24
        Increment = 10
        MaxValue = 200
        MinValue = 50
        TabOrder = 1
        Value = 50
        OnChange = Diagonalenhoeken1Click
      end
      object seHoek: TSpinEdit
        Left = 8
        Top = 192
        Width = 81
        Height = 24
        MaxValue = 25
        MinValue = 4
        TabOrder = 2
        Value = 4
        OnChange = Diagonalenhoeken1Click
      end
    end
    object pnlIngeschreven: TPanel
      Left = 1
      Top = 1
      Width = 183
      Height = 518
      Align = alClient
      TabOrder = 2
      Visible = False
      object lblK: TLabel
        Left = 8
        Top = 16
        Width = 101
        Height = 15
        Caption = 'Geef k op (2<k<20)'
      end
      object seK: TSpinEdit
        Left = 8
        Top = 51
        Width = 41
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxValue = 20
        MinValue = 2
        ParentFont = False
        TabOrder = 0
        Value = 2
        OnChange = Ingeschrevenvierkanten1Click
      end
    end
    object pnlContFunctie: TPanel
      Left = 1
      Top = 1
      Width = 183
      Height = 518
      Align = alClient
      TabOrder = 3
      Visible = False
      ExplicitLeft = -4
      ExplicitTop = 6
      object lblLinker: TLabel
        Left = 8
        Top = 5
        Width = 108
        Height = 15
        Caption = 'Linker-interval grens'
      end
      object lblRechter: TLabel
        Left = 8
        Top = 67
        Width = 116
        Height = 15
        Caption = 'Rechter-interval grens'
      end
      object lblBoven: TLabel
        Left = 8
        Top = 121
        Width = 98
        Height = 15
        Caption = 'Bovengrens voor y'
      end
      object lblOnder: TLabel
        Left = 8
        Top = 181
        Width = 98
        Height = 15
        Caption = 'Ondergrens voor y'
      end
      object seLinker: TSpinEdit
        Left = 8
        Top = 88
        Width = 73
        Height = 24
        MaxValue = 20
        MinValue = -15
        TabOrder = 0
        Value = -15
        OnChange = Grafiekvaneencontinuefunctie1Click
      end
      object seRechter: TSpinEdit
        Left = 8
        Top = 29
        Width = 73
        Height = 24
        MaxValue = 15
        MinValue = -15
        TabOrder = 1
        Value = 15
        OnChange = Grafiekvaneencontinuefunctie1Click
      end
      object seBoven: TSpinEdit
        Left = 8
        Top = 142
        Width = 73
        Height = 24
        MaxValue = 20
        MinValue = 1
        TabOrder = 2
        Value = 4
        OnChange = Grafiekvaneencontinuefunctie1Click
      end
      object seOnder: TSpinEdit
        Left = 8
        Top = 202
        Width = 73
        Height = 24
        MaxValue = -1
        MinValue = -20
        TabOrder = 3
        Value = -4
        OnChange = Grafiekvaneencontinuefunctie1Click
      end
      object rgFormules: TRadioGroup
        Left = 17
        Top = 232
        Width = 161
        Height = 129
        Caption = 'Formules'
        ItemIndex = 0
        Items.Strings = (
          '1 : y=Exp(-0.1*x)*Cos(x)'
          '2 : y=Sin(x)'
          '3 : y=x*x'
          '4 : y=Exp(x)'
          '5 : y=x*x*x-2*x*x-x')
        TabOrder = 4
        OnClick = Grafiekvaneencontinuefunctie1Click
      end
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
      object ParaboolStelsel: TMenuItem
        Caption = 'ParaboolStelsel'
        OnClick = ParaboolStelselClick
      end
      object miOppKromme: TMenuItem
        Caption = 'Oppervlakte onder kromme'
        OnClick = miOppKrommeClick
      end
    end
  end
end
