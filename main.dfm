object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = '40 Grafische Programma'#39's'
  ClientHeight = 691
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object pbMain: TPaintBox
    Left = 275
    Top = 49
    Width = 659
    Height = 642
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 280
    ExplicitTop = 55
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 49
    Align = alTop
    Caption = '40 grafische programma'#39's vertaald uit MSX basic naar Delphi'
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
    Height = 642
    Align = alLeft
    TabOrder = 1
    object Label11: TLabel
      Left = 17
      Top = 8
      Width = 133
      Height = 15
      Caption = 'y=Height/4+2*k*Sin(4*p)'
      Visible = False
    end
    object pnlDiagWeb: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
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
        OnChange = miDiagonaalwebClick
      end
    end
    object pnlDiagNHoek: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
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
        OnChange = miDiagonalenhoekenClick
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
        OnChange = miDiagonalenhoekenClick
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
        OnChange = miDiagonalenhoekenClick
      end
    end
    object pnlIngeschreven: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
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
        OnChange = miIngeschrevenvierkantenClick
      end
    end
    object pnlBloem: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
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
      Height = 640
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
      Height = 640
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
        MinValue = -30
        TabOrder = 0
        Value = -15
        OnChange = miGrafiekvaneencontinuefunctieClick
      end
      object seRechter: TSpinEdit
        Left = 8
        Top = 29
        Width = 73
        Height = 24
        MaxValue = 30
        MinValue = 1
        TabOrder = 1
        Value = 15
        OnChange = miGrafiekvaneencontinuefunctieClick
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
        OnChange = miGrafiekvaneencontinuefunctieClick
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
        OnChange = miGrafiekvaneencontinuefunctieClick
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
        OnClick = miGrafiekvaneencontinuefunctieClick
      end
    end
    object pnlFuncFPhi: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
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
    object pnlOppKromme: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 9
      Visible = False
      object lblKromme: TLabel
        Left = 34
        Top = 42
        Width = 91
        Height = 15
        Caption = 'Kromme formule'
      end
      object seKromme: TSpinEdit
        Left = 34
        Top = 67
        Width = 55
        Height = 24
        MaxValue = 5
        MinValue = 1
        TabOrder = 0
        Value = 1
        OnChange = miOppKrommeClick
      end
    end
    object pnlLissajous: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 8
      Visible = False
      object lblK1: TLabel
        Left = 17
        Top = 16
        Width = 13
        Height = 15
        Caption = 'K1'
      end
      object Label2: TLabel
        Left = 144
        Top = 16
        Width = 12
        Height = 15
        Caption = 'F1'
      end
      object lblK2: TLabel
        Left = 15
        Top = 76
        Width = 13
        Height = 15
        Caption = 'K2'
      end
      object Label4: TLabel
        Left = 144
        Top = 76
        Width = 12
        Height = 15
        Caption = 'F2'
      end
      object lblK3: TLabel
        Left = 17
        Top = 148
        Width = 13
        Height = 15
        Caption = 'K3'
      end
      object Label6: TLabel
        Left = 144
        Top = 151
        Width = 12
        Height = 15
        Caption = 'F3'
      end
      object Label7: TLabel
        Left = 17
        Top = 230
        Width = 13
        Height = 15
        Caption = 'K4'
      end
      object Label8: TLabel
        Left = 144
        Top = 230
        Width = 12
        Height = 15
        Caption = 'F4'
      end
      object Label9: TLabel
        Left = 17
        Top = 302
        Width = 13
        Height = 15
        Caption = 'P1'
      end
      object Label10: TLabel
        Left = 144
        Top = 302
        Width = 13
        Height = 15
        Caption = 'P3'
      end
      object seK1: TSpinEdit
        Left = 17
        Top = 37
        Width = 48
        Height = 24
        Increment = 10
        MaxValue = 400
        MinValue = 0
        TabOrder = 0
        Value = 100
        OnChange = miLissajousfiguurClick
      end
      object seF1: TSpinEdit
        Left = 144
        Top = 37
        Width = 48
        Height = 24
        MaxValue = 100
        MinValue = 0
        TabOrder = 1
        Value = 16
        OnChange = miLissajousfiguurClick
      end
      object seK2: TSpinEdit
        Left = 17
        Top = 100
        Width = 48
        Height = 24
        MaxValue = 100
        MinValue = 0
        TabOrder = 2
        Value = 0
        OnChange = miLissajousfiguurClick
      end
      object seF2: TSpinEdit
        Left = 140
        Top = 97
        Width = 48
        Height = 24
        MaxValue = 100
        MinValue = 0
        TabOrder = 3
        Value = 0
        OnChange = miLissajousfiguurClick
      end
      object seK3: TSpinEdit
        Left = 17
        Top = 172
        Width = 48
        Height = 24
        Increment = 10
        MaxValue = 400
        MinValue = 0
        TabOrder = 4
        Value = 100
        OnChange = miLissajousfiguurClick
      end
      object seF3: TSpinEdit
        Left = 144
        Top = 172
        Width = 48
        Height = 24
        MaxValue = 100
        MinValue = 0
        TabOrder = 5
        Value = 17
        OnChange = miLissajousfiguurClick
      end
      object seK4: TSpinEdit
        Left = 17
        Top = 251
        Width = 48
        Height = 24
        MaxValue = 100
        MinValue = 0
        TabOrder = 6
        Value = 0
        OnChange = miLissajousfiguurClick
      end
      object seF4: TSpinEdit
        Left = 144
        Top = 251
        Width = 48
        Height = 24
        MaxValue = 100
        MinValue = 0
        TabOrder = 7
        Value = 0
        OnChange = miLissajousfiguurClick
      end
      object seP1: TSpinEdit
        Left = 17
        Top = 323
        Width = 48
        Height = 24
        MaxValue = 0
        MinValue = 0
        TabOrder = 8
        Value = 0
        OnChange = miLissajousfiguurClick
      end
      object seP3: TSpinEdit
        Left = 144
        Top = 323
        Width = 48
        Height = 24
        MaxValue = 100
        MinValue = 0
        TabOrder = 9
        Value = 35
        OnChange = miLissajousfiguurClick
      end
    end
    object pnlWillekFunc: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
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
        Left = 34
        Top = 67
        Width = 53
        Height = 24
        MaxValue = -1
        MinValue = -25
        TabOrder = 0
        Value = -5
        OnChange = miWillekeurigeFunctieClick
      end
      object seRechtergrensX: TSpinEdit
        Left = 28
        Top = 130
        Width = 53
        Height = 24
        MaxValue = 25
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
      object rgWillekFunc: TRadioGroup
        Left = 28
        Top = 344
        Width = 185
        Height = 105
        Caption = 'Formules'
        ItemIndex = 0
        Items.Strings = (
          'y=x*x+3/x*x-x-6'
          'y=ln(x*x-2)'
          'y=3-x+ln(abs(x-1/x-3))')
        TabOrder = 4
        OnClick = miWillekeurigeFunctieClick
      end
    end
    object pnlCylKeg: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 12
      Visible = False
      object Label3: TLabel
        Left = 17
        Top = 24
        Width = 45
        Height = 15
        Caption = 'Straal R1'
      end
      object Label5: TLabel
        Left = 17
        Top = 97
        Width = 45
        Height = 15
        Caption = 'Straal R2'
      end
      object seR1: TSpinEdit
        Left = 17
        Top = 45
        Width = 48
        Height = 24
        Increment = 10
        MaxValue = 350
        MinValue = 0
        TabOrder = 0
        Value = 100
        OnChange = miCylindersenkegelsClick
      end
      object seR2: TSpinEdit
        Left = 17
        Top = 127
        Width = 48
        Height = 24
        Increment = 10
        MaxValue = 350
        MinValue = 0
        TabOrder = 1
        Value = 100
        OnChange = miCylindersenkegelsClick
      end
    end
    object pnlBloem2: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 13
      Visible = False
      object seBloem: TSpinEdit
        Left = 26
        Top = 70
        Width = 39
        Height = 24
        MaxValue = 6
        MinValue = 2
        TabOrder = 0
        Value = 2
        OnChange = miBloem2Click
      end
      object seBloem2: TSpinEdit
        Left = 26
        Top = 157
        Width = 45
        Height = 24
        MaxValue = 6
        MinValue = 2
        TabOrder = 1
        Value = 2
        OnChange = miBloem2Click
      end
    end
    object pnlZFXYhidden: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 14
      Visible = False
      object rgZFXYhidden: TRadioGroup
        Left = 17
        Top = 37
        Width = 232
        Height = 310
        Caption = 'Functies'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'z=k1*Exp(-x*x-y*y)'
          'z=k1*(Cos(r)-Cos(3*r)/3+Cos(5*r/5)-Cos(7*r)/7)'
          'z=k1*Sin{r}/r'
          'z=k1*Exp(-Cos(r/16))'
          'z=k1*Cos(r/16)'
          'z=k1*Sin(r/16)')
        ParentFont = False
        TabOrder = 0
        WordWrap = True
        OnClick = miGrafiekvanzfxyhiddenlinesClick
      end
    end
    object seFormule: TSpinEdit
      Left = 224
      Top = 6
      Width = 31
      Height = 24
      MaxValue = 3
      MinValue = 2
      TabOrder = 15
      Value = 2
      Visible = False
      OnChange = miBloem3Click
    end
    object pnlLogo1: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 16
      Visible = False
      object Label12: TLabel
        Left = 23
        Top = 30
        Width = 11
        Height = 15
        Caption = 'W'
      end
      object Label13: TLabel
        Left = 20
        Top = 79
        Width = 12
        Height = 15
        Caption = 'S1'
      end
      object Label14: TLabel
        Left = 20
        Top = 126
        Width = 19
        Height = 15
        Caption = 'DW'
      end
      object Label15: TLabel
        Left = 20
        Top = 171
        Width = 12
        Height = 15
        Caption = 'S2'
      end
      object Label16: TLabel
        Left = 20
        Top = 224
        Width = 9
        Height = 15
        Caption = 'N'
      end
      object seBeginW: TSpinEdit
        Left = 21
        Top = 49
        Width = 59
        Height = 24
        Increment = 5
        MaxValue = 175
        MinValue = 5
        TabOrder = 0
        Value = 90
        OnChange = miVierkantpatroonLOGO1Click
      end
      object seVerplS1: TSpinEdit
        Left = 20
        Top = 96
        Width = 59
        Height = 24
        Increment = 10
        MaxValue = 200
        MinValue = 10
        TabOrder = 1
        Value = 10
        OnChange = miVierkantpatroonLOGO1Click
      end
      object seDraaiDW: TSpinEdit
        Left = 20
        Top = 147
        Width = 59
        Height = 24
        MaxValue = 90
        MinValue = 5
        TabOrder = 2
        Value = 45
        OnChange = miVierkantpatroonLOGO1Click
      end
      object seZijdeS2: TSpinEdit
        Left = 21
        Top = 187
        Width = 59
        Height = 24
        Increment = 10
        MaxValue = 250
        MinValue = 50
        TabOrder = 3
        Value = 100
        OnChange = miVierkantpatroonLOGO1Click
      end
      object seAantalN: TSpinEdit
        Left = 22
        Top = 251
        Width = 59
        Height = 24
        MaxValue = 20
        MinValue = 4
        TabOrder = 4
        Value = 8
        OnChange = miVierkantpatroonLOGO1Click
      end
    end
    object pnlLogo2: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 17
      Visible = False
      object rgLogo2: TRadioGroup
        Left = 8
        Top = 67
        Width = 226
        Height = 178
        Caption = 'Parameters'
        ItemIndex = 0
        Items.Strings = (
          'A: W=90, S=5, DW=144, DS=3'
          'B: W=90, S=5, DW=123, DS=2'
          'C: W=90, S=-2, DW=92, DS=2'
          'D: W=90, S=5, DW=72, DS=1'
          'E: W=90, S=160, DW=145, DS=1')
        TabOrder = 0
        OnClick = miTurtlegrafiekLOGO2Click
      end
    end
    object pnlLogo4: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 18
      Visible = False
      object Label17: TLabel
        Left = 38
        Top = 63
        Width = 63
        Height = 15
        Caption = 'Lengte steel'
      end
      object Label18: TLabel
        Left = 38
        Top = 130
        Width = 98
        Height = 15
        Caption = 'Draaihoek linksom'
      end
      object Label19: TLabel
        Left = 38
        Top = 202
        Width = 35
        Height = 15
        Caption = 'Radius'
      end
      object seLengte: TSpinEdit
        Left = 38
        Top = 88
        Width = 51
        Height = 24
        Increment = 5
        MaxValue = 300
        MinValue = 90
        TabOrder = 0
        Value = 90
        OnChange = miCirkelfiguur1LOGO4Click
      end
      object seDraaihoek: TSpinEdit
        Left = 38
        Top = 151
        Width = 51
        Height = 24
        Increment = 5
        MaxValue = 240
        MinValue = 30
        TabOrder = 1
        Value = 170
        OnChange = miCirkelfiguur1LOGO4Click
      end
      object seRadius: TSpinEdit
        Left = 36
        Top = 225
        Width = 53
        Height = 24
        Increment = 5
        MaxValue = 100
        MinValue = 20
        TabOrder = 2
        Value = 20
        OnChange = miCirkelfiguur1LOGO4Click
      end
    end
    object pnlLogo5: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 19
      Visible = False
      object Label20: TLabel
        Left = 38
        Top = 63
        Width = 63
        Height = 15
        Caption = 'Lengte steel'
      end
      object Label21: TLabel
        Left = 38
        Top = 130
        Width = 98
        Height = 15
        Caption = 'Draaihoek linksom'
      end
      object Label22: TLabel
        Left = 38
        Top = 202
        Width = 35
        Height = 15
        Caption = 'Radius'
      end
      object seLengte2: TSpinEdit
        Left = 38
        Top = 88
        Width = 51
        Height = 24
        Increment = 5
        MaxValue = 300
        MinValue = 50
        TabOrder = 0
        Value = 50
        OnChange = miCirkelfiguur2LOGO5Click
      end
      object seDraai2: TSpinEdit
        Left = 37
        Top = 151
        Width = 51
        Height = 24
        Increment = 5
        MaxValue = 240
        MinValue = 30
        TabOrder = 1
        Value = 45
        OnChange = miCirkelfiguur2LOGO5Click
      end
      object seRadius2: TSpinEdit
        Left = 36
        Top = 223
        Width = 53
        Height = 24
        Increment = 5
        MaxValue = 100
        MinValue = 10
        TabOrder = 2
        Value = 10
        OnChange = miCirkelfiguur2LOGO5Click
      end
    end
    object pnlHistogram: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 20
      Visible = False
      object Label23: TLabel
        Left = 23
        Top = 51
        Width = 127
        Height = 15
        Caption = 'Hoeveel gegevens (<40)'
      end
      object seGegevens: TSpinEdit
        Left = 26
        Top = 88
        Width = 48
        Height = 24
        MaxValue = 40
        MinValue = 5
        TabOrder = 0
        Value = 5
        OnChange = miHistogramClick
      end
    end
    object pnlBreking: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 21
      Visible = False
      object Label24: TLabel
        Left = 36
        Top = 58
        Width = 181
        Height = 15
        Caption = 'Geef brekingsindex (Water = 1,33):'
      end
      object edBreking: TEdit
        Left = 36
        Top = 91
        Width = 67
        Height = 23
        TabOrder = 0
        Text = '1,33'
      end
      object btnBreking: TButton
        Left = 36
        Top = 130
        Width = 75
        Height = 36
        Caption = 'Teken'
        TabOrder = 1
        OnClick = miBrekingvanlichtClick
      end
    end
    object pnlSymFig: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 11
      Visible = False
      object rgSymFig: TRadioGroup
        Left = 16
        Top = 49
        Width = 185
        Height = 280
        Caption = 'Parameters'
        ItemIndex = 0
        Items.Strings = (
          'a=2 b=7 c=3'
          'a=6 b=6 c=4'
          'a=4 b=6 c=1'
          'a=1 b=1 c=4'
          'a=3 b=3 c=5'
          'a=2 b=2 c=9'
          'a=20 b=-1 c=3'
          'a=-40 b=-40 c=10'
          'a=-40 b=-40 c=11'
          'a=20 b=-12 c=-4')
        TabOrder = 0
        OnClick = miSymmetrischefigurenClick
      end
    end
    object pnlSpelden: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 22
      Visible = False
      object Label25: TLabel
        Left = 16
        Top = 42
        Width = 77
        Height = 15
        Caption = 'Aantal worpen'
      end
      object Label26: TLabel
        Left = 17
        Top = 126
        Width = 80
        Height = 15
        Caption = 'Aantal worpen:'
      end
      object Label27: TLabel
        Left = 17
        Top = 160
        Width = 120
        Height = 15
        Caption = 'Aantal doorsnijdingen:'
      end
      object Label28: TLabel
        Left = 17
        Top = 192
        Width = 98
        Height = 15
        Caption = 'Benadering van pi:'
      end
      object Label29: TLabel
        Left = 16
        Top = 217
        Width = 43
        Height = 15
        Caption = 'Verschil:'
      end
      object seWorpen: TSpinEdit
        Left = 17
        Top = 72
        Width = 64
        Height = 24
        Increment = 1000
        MaxValue = 20000
        MinValue = 1000
        TabOrder = 0
        Value = 1000
        OnChange = miSpeldenworpvanBuffonClick
      end
    end
    object pnlVlinders: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 10
      Visible = False
      object Label1: TLabel
        Left = 18
        Top = 251
        Width = 63
        Height = 15
        Caption = 'Parameter c'
      end
      object rgVlinders: TRadioGroup
        Left = 14
        Top = 49
        Width = 185
        Height = 177
        Caption = 'Parameters a en b'
        ItemIndex = 0
        Items.Strings = (
          'a=-6 b=1'
          'a=-6 b=2'
          'a=-8 b=2'
          'a=4 b=1'
          'a=4 b=2'
          'a=6 b=1'
          'a=-10 b=5'
          'a=8 b=-4')
        TabOrder = 0
        OnClick = miVlindersClick
      end
      object seC: TSpinEdit
        Left = 17
        Top = 272
        Width = 48
        Height = 24
        MaxValue = 6
        MinValue = 3
        TabOrder = 1
        Value = 3
        OnChange = miVlindersClick
      end
    end
    object pnlEco: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 640
      Align = alClient
      TabOrder = 23
      Visible = False
      object Label30: TLabel
        Left = 19
        Top = 24
        Width = 114
        Height = 15
        Caption = 'Pop. prooidieren(200)'
      end
      object Label31: TLabel
        Left = 19
        Top = 79
        Width = 102
        Height = 15
        Caption = 'Pop. roofdieren(20)'
      end
      object Label32: TLabel
        Left = 19
        Top = 126
        Width = 115
        Height = 15
        Caption = 'Groei prooidieren(0.3)'
      end
      object Label33: TLabel
        Left = 19
        Top = 176
        Width = 135
        Height = 15
        Caption = 'Afname prooidieren(0.01)'
      end
      object Label34: TLabel
        Left = 19
        Top = 230
        Width = 121
        Height = 15
        Caption = 'Groei roofdieren(0.002)'
      end
      object Label35: TLabel
        Left = 19
        Top = 281
        Width = 123
        Height = 15
        Caption = 'Afname roofdieren(0.5)'
      end
      object seProoi: TSpinEdit
        Left = 19
        Top = 46
        Width = 70
        Height = 24
        MaxValue = 300
        MinValue = 10
        TabOrder = 0
        Value = 200
      end
      object edGroeiP: TEdit
        Left = 20
        Top = 147
        Width = 57
        Height = 23
        TabOrder = 1
        Text = '0,3'
      end
      object edAfnameP: TEdit
        Left = 19
        Top = 195
        Width = 57
        Height = 23
        TabOrder = 2
        Text = '0,01'
      end
      object edGroeiR: TEdit
        Left = 20
        Top = 251
        Width = 57
        Height = 23
        TabOrder = 3
        Text = '0,002'
      end
      object edAfnameR: TEdit
        Left = 18
        Top = 302
        Width = 57
        Height = 23
        TabOrder = 4
        Text = '0,5'
      end
      object seRoof: TSpinEdit
        Left = 19
        Top = 97
        Width = 70
        Height = 24
        MaxValue = 100
        MinValue = 5
        TabOrder = 5
        Value = 20
      end
      object btnGrafiek: TButton
        Left = 23
        Top = 367
        Width = 97
        Height = 58
        Caption = 'Teken grafiek'
        TabOrder = 6
        OnClick = miRoofdierprooidierecosysteemClick
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object miProgramma110: TMenuItem
      Caption = 'Programma 1-10'
      object miDiagonaalweb: TMenuItem
        Caption = 'Diagonaal web'
        OnClick = miDiagonaalwebClick
      end
      object miMoireeeffect: TMenuItem
        Caption = 'Moiree effect'
        OnClick = miMoireeeffectClick
      end
      object miDriehoeken: TMenuItem
        Caption = 'Driehoeken'
        OnClick = miDriehoekenClick
      end
      object miZeshoeken: TMenuItem
        Caption = 'Zeshoeken'
        OnClick = miZeshoekenClick
      end
      object miDiagonalenhoeken: TMenuItem
        Caption = 'Diagonale n-hoeken'
        OnClick = miDiagonalenhoekenClick
      end
      object miIngeschrevenvierkanten: TMenuItem
        Caption = 'Ingeschreven vierkanten'
        OnClick = miIngeschrevenvierkantenClick
      end
      object miGrafiekvaneencontinuefunctie: TMenuItem
        Caption = 'Grafiek van een continue functie'
        OnClick = miGrafiekvaneencontinuefunctieClick
      end
      object miSinuskrommen: TMenuItem
        Caption = 'Sinuskrommen'
        OnClick = miSinuskrommenClick
      end
      object miParaboolStelsel: TMenuItem
        Caption = 'ParaboolStelsel'
        OnClick = miParaboolStelselClick
      end
      object miOppKromme: TMenuItem
        Caption = 'Oppervlakte onder kromme'
        OnClick = miOppKrommeClick
      end
    end
    object miProgramma1120: TMenuItem
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
      object miLissajousfiguur: TMenuItem
        Caption = 'Lissajous figuur'
        OnClick = miLissajousfiguurClick
      end
      object miVliegekop: TMenuItem
        Caption = 'Vliegekop figuur'
        OnClick = miVliegekopClick
      end
      object miVlinders: TMenuItem
        Caption = 'Vlinders'
        OnClick = miVlindersClick
      end
    end
    object miProgramma2130: TMenuItem
      Caption = 'Programma 21-30'
      object miSymmetrischefiguren: TMenuItem
        Caption = 'Symmetrische figuren'
        OnClick = miSymmetrischefigurenClick
      end
      object miKubusmetachtvlak: TMenuItem
        Caption = 'Kubus met achtvlak'
        OnClick = miKubusmetachtvlakClick
      end
      object miKubusmetzadelvlak: TMenuItem
        Caption = 'Kubus met zadelvlak'
        OnClick = miKubusmetzadelvlakClick
      end
      object miCylindersenkegels: TMenuItem
        Caption = 'Cylinders en kegels'
        OnClick = miCylindersenkegelsClick
      end
      object miBol: TMenuItem
        Caption = 'Bol'
        OnClick = miBolClick
      end
      object miDraaiendprisma: TMenuItem
        Caption = 'Draaiend prisma'
        OnClick = miDraaiendprismaClick
      end
      object miIkosaeder: TMenuItem
        Caption = 'Ikosaeder'
        OnClick = miIkosaederClick
      end
      object miGrafiekvanzfxy: TMenuItem
        Caption = 'Grafiek van z=f(x,y)'
        OnClick = miGrafiekvanzfxyClick
      end
      object miGrafiekvanzfxyhiddenlines: TMenuItem
        Caption = 'Grafiek van z=f(x,y), hidden lines'
        OnClick = miGrafiekvanzfxyhiddenlinesClick
      end
      object miMooiefunctie: TMenuItem
        Caption = 'Mooie functie'
        OnClick = miMooiefunctieClick
      end
    end
    object miProgramma3140: TMenuItem
      Caption = 'Programma 31-40'
      object miVierkantpatroonLOGO1: TMenuItem
        Caption = 'Vierkantpatroon (LOGO-1)'
        OnClick = miVierkantpatroonLOGO1Click
      end
      object miTurtlegrafiekLOGO2: TMenuItem
        Caption = 'Turtle-grafiek (LOGO-2)'
        OnClick = miTurtlegrafiekLOGO2Click
      end
      object miVierkantspiraal: TMenuItem
        Caption = 'Vierkantspiraal'
        OnClick = miVierkantspiraalClick
      end
      object miCirkelfiguur1LOGO4: TMenuItem
        Caption = 'Cirkelfiguur-1 (LOGO-4)'
        OnClick = miCirkelfiguur1LOGO4Click
      end
      object miCirkelfiguur2LOGO5: TMenuItem
        Caption = 'Cirkelfiguur-2 (LOGO-5)'
        OnClick = miCirkelfiguur2LOGO5Click
      end
      object miKaartvanZwitserland: TMenuItem
        Caption = 'Kaart van Zwitserland'
        OnClick = miKaartvanZwitserlandClick
      end
      object miHistogram: TMenuItem
        Caption = 'Histogram'
        OnClick = miHistogramClick
      end
      object miBrekingvanlicht: TMenuItem
        Caption = 'Breking van licht'
        OnClick = miBrekingvanlichtClick
      end
      object miSpeldenworpvanBuffon: TMenuItem
        Caption = 'Speldenworp van Buffon'
        OnClick = miSpeldenworpvanBuffonClick
      end
      object miRoofdierprooidierecosysteem: TMenuItem
        Caption = 'Roofdier-prooidier ecosysteem'
        OnClick = miRoofdierprooidierecosysteemClick
      end
    end
  end
end
