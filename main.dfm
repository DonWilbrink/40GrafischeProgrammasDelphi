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
    Left = 275
    Top = 49
    Width = 600
    Height = 520
    Align = alClient
    ExplicitLeft = 185
    ExplicitTop = 55
    ExplicitWidth = 690
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
    Width = 275
    Height = 520
    Align = alLeft
    TabOrder = 1
    object pnlDiagWeb: TPanel
      Left = 1
      Top = 1
      Width = 273
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
      Width = 273
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
      Width = 273
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
    object pnlWillekFunc: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 518
      Align = alClient
      TabOrder = 4
      Visible = False
      object lblLinkergrensX: TLabel
        Left = 28
        Top = 45
        Width = 98
        Height = 15
        Caption = 'Linkergrens voor X'
      end
      object lblRechtergrensX: TLabel
        Left = 28
        Top = 109
        Width = 106
        Height = 15
        Caption = 'Rechtergrens voor X'
      end
      object lblBovengrensY: TLabel
        Left = 28
        Top = 181
        Width = 99
        Height = 15
        Caption = 'Bovengrens voor Y'
      end
      object lblOndergrensY: TLabel
        Left = 28
        Top = 251
        Width = 99
        Height = 15
        Caption = 'Ondergrens voor Y'
      end
      object seLinkergrensX: TSpinEdit
        Left = 28
        Top = 67
        Width = 53
        Height = 24
        MaxValue = -1
        MinValue = -5
        TabOrder = 0
        Value = -5
        OnChange = miWillekeurigeFunctieClick
      end
      object seRechtergrensX: TSpinEdit
        Left = 28
        Top = 130
        Width = 53
        Height = 24
        MaxValue = 5
        MinValue = 0
        TabOrder = 1
        Value = 5
        OnChange = miWillekeurigeFunctieClick
      end
      object seBovengrensY: TSpinEdit
        Left = 28
        Top = 202
        Width = 53
        Height = 24
        MaxValue = 10
        MinValue = 0
        TabOrder = 2
        Value = 10
        OnChange = miWillekeurigeFunctieClick
      end
      object seOndergrensY: TSpinEdit
        Left = 28
        Top = 272
        Width = 53
        Height = 24
        MaxValue = 0
        MinValue = -10
        TabOrder = 3
        Value = -10
        OnChange = miWillekeurigeFunctieClick
      end
    end
    object pnlBloem: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 518
      Align = alClient
      TabOrder = 5
      Visible = False
      object rgFormule: TRadioGroup
        Left = 17
        Top = 21
        Width = 161
        Height = 380
        Caption = 'Formules bloem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Cos(4 * P)'
          'Cos(5 * P)'
          'Cos(4 * Sin(5 * P))'
          'Sin(4 * Cos(5 * P))'
          'Cos(3 * Tan(5 * P))'
          'Sin(3 * Tan(5 * P))'
          'Sin(4 * P)'
          'Sin(5 * P)'
          'Sin(5 * Cos(2 * Sin(3 * Cos(4 * P))))'
          'COS(14 * P)'
          'SIN(3 * SIN(2 * P))'
          'SIN(5 * COS(2 * P))'
          'COS(4 * SIN(2 * P))'
          'COS(4 * SIN(3 * P))'
          'Cos(6 * p)')
        ParentFont = False
        TabOrder = 0
        WordWrap = True
        OnClick = miBloemClick
      end
    end
    object pnlSpiralen: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 518
      Align = alClient
      TabOrder = 6
      Visible = False
      object lblGrootte: TLabel
        Left = 40
        Top = 40
        Width = 77
        Height = 15
        Caption = 'Grootte spiraal'
      end
      object lblCenter: TLabel
        Left = 40
        Top = 97
        Width = 65
        Height = 15
        Caption = 'Straal center'
      end
      object seGrootte: TSpinEdit
        Left = 40
        Top = 61
        Width = 49
        Height = 24
        MaxValue = 7
        MinValue = 1
        TabOrder = 0
        Value = 1
        OnChange = miSpiralenClick
      end
      object seCenter: TSpinEdit
        Left = 40
        Top = 118
        Width = 49
        Height = 24
        Increment = 5
        MaxValue = 100
        MinValue = 5
        TabOrder = 1
        Value = 5
        OnChange = miSpiralenClick
      end
      object rgSpiralen: TRadioGroup
        Left = 17
        Top = 172
        Width = 133
        Height = 105
        Caption = 'Soort spiraal'
        ItemIndex = 0
        Items.Strings = (
          'Normaal'
          'Logaritmisch')
        TabOrder = 2
        OnClick = miSpiralenClick
      end
    end
    object pnlContFunctie: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 518
      Align = alClient
      TabOrder = 3
      Visible = False
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
        MaxValue = -1
        MinValue = -20
        TabOrder = 0
        Value = -15
        OnChange = Grafiekvaneencontinuefunctie1Click
      end
      object seRechter: TSpinEdit
        Left = 8
        Top = 29
        Width = 73
        Height = 24
        MaxValue = 18
        MinValue = 1
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
    object pnlFuncFPhi: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 518
      Align = alClient
      TabOrder = 7
      Visible = False
      object lblA: TLabel
        Left = 15
        Top = 16
        Width = 98
        Height = 15
        Caption = 'Linkergrens voor X'
      end
      object lblB: TLabel
        Left = 14
        Top = 76
        Width = 106
        Height = 15
        Caption = 'Rechtergrens voor X'
      end
      object lblHP: TLabel
        Left = 17
        Top = 130
        Width = 99
        Height = 15
        Caption = 'Bovengrens voor Y'
      end
      object lblLP: TLabel
        Left = 17
        Top = 181
        Width = 99
        Height = 15
        Caption = 'Ondergrens voor Y'
      end
      object rgFuncFPhi: TRadioGroup
        Left = 8
        Top = 251
        Width = 249
        Height = 105
        Caption = 'Formules'
        ItemIndex = 0
        Items.Strings = (
          '(Sin(3*p/2))/(1-2*Cos(p))'
          '(4*Sin(1.5*p+2)/(Cos(p)*(1+(Cos(3*p))/3) ')
        TabOrder = 0
        OnClick = miFuncFPhiClick
      end
      object seA: TSpinEdit
        Left = 17
        Top = 37
        Width = 56
        Height = 24
        MaxValue = -1
        MinValue = -10
        TabOrder = 1
        Value = -2
        OnChange = miFuncFPhiClick
      end
      object seB: TSpinEdit
        Left = 17
        Top = 97
        Width = 56
        Height = 24
        MaxValue = 10
        MinValue = 1
        TabOrder = 2
        Value = 2
        OnChange = miFuncFPhiClick
      end
      object seHP: TSpinEdit
        Left = 17
        Top = 151
        Width = 56
        Height = 24
        MaxValue = 10
        MinValue = 1
        TabOrder = 3
        Value = 2
        OnChange = miFuncFPhiClick
      end
      object seLP: TSpinEdit
        Left = 17
        Top = 202
        Width = 56
        Height = 24
        MaxValue = -1
        MinValue = -10
        TabOrder = 4
        Value = -2
        OnChange = miFuncFPhiClick
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
    object Programma1120: TMenuItem
      Caption = 'Programma 11-20'
      object miWillekeurigeFunctie: TMenuItem
        Caption = 'Grafiek van een willekeurige functie'
        OnClick = miWillekeurigeFunctieClick
      end
      object miBloem: TMenuItem
        Caption = 'Bloem'
        OnClick = miBloemClick
      end
      object miBloem2: TMenuItem
        Caption = 'Bloem 2'
        OnClick = miBloem2Click
      end
      object miBloem3: TMenuItem
        Caption = 'Bloem 3'
        OnClick = miBloem3Click
      end
      object miBloem4: TMenuItem
        Caption = 'Bloem 4'
        OnClick = miBloem4Click
      end
      object miSpiralen: TMenuItem
        Caption = 'Spiralen'
        OnClick = miSpiralenClick
      end
      object miFuncFPhi: TMenuItem
        Caption = 'Grafiek van de functie R=f(Phi)'
        OnClick = miFuncFPhiClick
      end
    end
  end
end
