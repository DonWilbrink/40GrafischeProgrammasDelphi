unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Samples.Spin, System.Math;

type
  TfrmMain = class(TForm)
    pbMain: TPaintBox;
    MainMenu1: TMainMenu;
    Programma1101: TMenuItem;
    Diagonaalweb1: TMenuItem;
    Moireeeffect: TMenuItem;
    Driehoeken: TMenuItem;
    Zeshoeken1: TMenuItem;
    Diagonalenhoeken1: TMenuItem;
    pnlTop: TPanel;
    Ingeschrevenvierkanten1: TMenuItem;
    Grafiekvaneencontinuefunctie1: TMenuItem;
    edN: TSpinEdit;
    lblN: TLabel;
    Sinuskrommen1: TMenuItem;
    pnlSide: TPanel;
    pnlDiagWeb: TPanel;
    pnlDiagNHoek: TPanel;
    lblBreed: TLabel;
    seBreed: TSpinEdit;
    lblHoog: TLabel;
    seHoog: TSpinEdit;
    lblHoek: TLabel;
    seHoek: TSpinEdit;
    pnlIngeschreven: TPanel;
    lblK: TLabel;
    seK: TSpinEdit;
    ParaboolStelsel: TMenuItem;
    pnlContFunctie: TPanel;
    lblLinker: TLabel;
    seLinker: TSpinEdit;
    lblRechter: TLabel;
    seRechter: TSpinEdit;
    lblBoven: TLabel;
    seBoven: TSpinEdit;
    lblOnder: TLabel;
    seOnder: TSpinEdit;
    rgFormules: TRadioGroup;
    miOppKromme: TMenuItem;
    Programma1120: TMenuItem;
    miWillekeurigeFunctie: TMenuItem;
    pnlWillekFunc: TPanel;
    seLinkergrensX: TSpinEdit;
    seRechtergrensX: TSpinEdit;
    seBovengrensY: TSpinEdit;
    seOndergrensY: TSpinEdit;
    lblLinkergrensX: TLabel;
    lblRechtergrensX: TLabel;
    lblBovengrensY: TLabel;
    lblOndergrensY: TLabel;
    miBloem: TMenuItem;
    pnlBloem: TPanel;
    rgFormule: TRadioGroup;
    miBloem2: TMenuItem;
    miBloem3: TMenuItem;
    miBloem4: TMenuItem;
    miSpiralen: TMenuItem;
    pnlSpiralen: TPanel;
    lblGrootte: TLabel;
    lblCenter: TLabel;
    seGrootte: TSpinEdit;
    seCenter: TSpinEdit;
    rgSpiralen: TRadioGroup;
    pnlFuncFPhi: TPanel;
    rgFuncFPhi: TRadioGroup;
    lblA: TLabel;
    lblB: TLabel;
    lblHP: TLabel;
    lblLP: TLabel;
    seA: TSpinEdit;
    seB: TSpinEdit;
    seHP: TSpinEdit;
    seLP: TSpinEdit;
    miFuncFPhi: TMenuItem;
    miLissajousfiguur: TMenuItem;
    pnlLissajous: TPanel;
    lblK1: TLabel;
    Label2: TLabel;
    lblK2: TLabel;
    Label4: TLabel;
    lblK3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    seK1: TSpinEdit;
    seF1: TSpinEdit;
    seK2: TSpinEdit;
    seF2: TSpinEdit;
    seK3: TSpinEdit;
    seF3: TSpinEdit;
    seK4: TSpinEdit;
    seF4: TSpinEdit;
    seP1: TSpinEdit;
    seP3: TSpinEdit;
    pnlOppKromme: TPanel;
    seKromme: TSpinEdit;
    lblKromme: TLabel;
    miVliegekop: TMenuItem;
    rgWillekFunc: TRadioGroup;
    miVlinders: TMenuItem;
    pnlVlinders: TPanel;
    rgVlinders: TRadioGroup;
    seC: TSpinEdit;
    Label1: TLabel;
    Programma21301: TMenuItem;
    miSymmetrischefiguren: TMenuItem;
    pnlSymFig: TPanel;
    rgSymFig: TRadioGroup;
    miKubusmetachtvlak: TMenuItem;
    miKubusmetzadelvlak: TMenuItem;
    miCylindersenkegels: TMenuItem;
    pnlCylKeg: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    seR1: TSpinEdit;
    seR2: TSpinEdit;
    Bol1: TMenuItem;
    miDraaiendprisma: TMenuItem;
    miIkosaeder: TMenuItem;
    Memo1: TMemo;
    miGrafiekvanzfxy: TMenuItem;
    miGrafiekvanzfxyhiddenlines: TMenuItem;
    procedure Diagonaalweb1Click(Sender: TObject);
    procedure MoireeeffectClick(Sender: TObject);
    procedure DriehoekenClick(Sender: TObject);
    procedure Zeshoeken1Click(Sender: TObject);
    procedure Diagonalenhoeken1Click(Sender: TObject);
    procedure Ingeschrevenvierkanten1Click(Sender: TObject);
    procedure Grafiekvaneencontinuefunctie1Click(Sender: TObject);
    procedure Sinuskrommen1Click(Sender: TObject);
    procedure ParaboolStelselClick(Sender: TObject);
    procedure miOppKrommeClick(Sender: TObject);
    procedure miWillekeurigeFunctieClick(Sender: TObject);
    procedure miBloemClick(Sender: TObject);
    procedure miBloem2Click(Sender: TObject);
    procedure miBloem3Click(Sender: TObject);
    procedure miBloem4Click(Sender: TObject);
    procedure miSpiralenClick(Sender: TObject);
    procedure miFuncFPhiClick(Sender: TObject);
    procedure miLissajousfiguurClick(Sender: TObject);
    procedure miVliegekopClick(Sender: TObject);
    procedure miVlindersClick(Sender: TObject);
    procedure miSymmetrischefigurenClick(Sender: TObject);
    procedure miKubusmetachtvlakClick(Sender: TObject);
    procedure miKubusmetzadelvlakClick(Sender: TObject);
    procedure miCylindersenkegelsClick(Sender: TObject);
    procedure Bol1Click(Sender: TObject);
    procedure miDraaiendprismaClick(Sender: TObject);
    procedure miIkosaederClick(Sender: TObject);
    procedure miGrafiekvanzfxyClick(Sender: TObject);
    procedure miGrafiekvanzfxyhiddenlinesClick(Sender: TObject);
  private
    { Private declarations }
    procedure frmClear;
    procedure Formule(i: Integer; x: Double; var y:Double);
    procedure Swap(var a, b: Integer);
    function OppKromme(i: Integer; x: Double): Double;
    procedure fn(x: Double; lp: Integer; hp: Integer; var y: Double; var fz: Integer);
    function FormuleBloem(I: Integer; p: Double): Double;
    function FormuleBloem2(i: Integer; k: Integer; p: Double): Double;
    procedure Teken(I: Integer);
    procedure Teken2(i: Integer);
    procedure Teken3(i: Integer);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Bol1Click(Sender: TObject);
var
  a, p, r, u, v, w0, xx, x1, x2, yy, y1, y2: Integer;
  c, k, p1, rd, r1, s, w, w1, x, y, z: Double;
begin
  frmClear;
  a := 90;
  k := 0.5;
  r := pbMain.Height div 2 - 50;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  rd := pi/180;
  w := a*rd;
  c := k*Cos(w);
  s := k*Sin(w);
  w0 := -90;
  repeat
    w1 := w0 * rd;
    r1 := r * Cos(w1);
    for p := 0 to 360 do
    begin
      p1 := p * rd;
      x := 1.15 * r1 * Cos(p1);
      y := r1 * Sin(p1);
      z := r * Sin(w1);
      xx := Trunc(u+x+Sign(p)*c*y);
      yy := Trunc(v-Sign(p)*s*y-z);
      if p=0 then
      begin
        x1 := xx;
        y1 := yy;
      end
      else
      begin
        x2 := xx;
        y2 := yy;
        pbMain.Canvas.MoveTo(x1,y1);
        pbMain.Canvas.LineTo(x2,y2);
        x1 := x2;
        y1 := y2;
      end;
    end;
    w0 := w0 + 15;
  until w0=90;
  p := 0;
  repeat
    p1 := p * rd;
    for w0 := 0 to 360 do
    begin
      w1 := w0 * rd;
      r1 := r * Cos(w1);
      x := 1.15 * r1 * Cos(p1);
      y := r1 * Sin(p1);
      z := r * Sin(w1);
      xx := Trunc(u+x+c*y);
      yy := Trunc(v-s*y-z);
      if w0=0 then
      begin
        x1 := xx;
        y1 := yy;
      end
      else
      begin
        x2 := xx;
        y2 := yy;
        pbMain.Canvas.MoveTo(x1,y1);
        pbMain.Canvas.LineTo(x2,y2);
        x1 := x2;
        y1 := y2;
      end;
    end;
    p := p + 15;
  until p=180;
end;

procedure TfrmMain.Diagonaalweb1Click(Sender: TObject);
var
  a, b, h, i, j, n, y1, y2: Integer;
begin
  frmClear;
  edN.MaxValue := Trunc(pbMain.Width/50) + 1;
  pnlDiagWeb.Visible := True;
  h := pbMain.Height;
  y1 := 5;
  y2 := h-5;
  a := 0;
  b := 0;
  n := edN.Value;
  for i := 0 to n-1 do
  begin
    a := i * 50;
    for j := 0 to n-1 do
    begin
      b := j * 50;
      pbMain.Canvas.MoveTo(a,y1);
      pbMain.Canvas.LineTo(b,y2);
    end;
  end;
end;

procedure TfrmMain.Diagonalenhoeken1Click(Sender: TObject);
var
  a, b, n, i, j, u, v: Integer;
  w, w1: real;
  x, y: Array of Integer;
begin
  frmClear;
  pnlDiagNHoek.Visible := True;
  seBreed.MaxValue := Trunc(pbMain.Width/2) - 40;
  seHoog.MaxValue := Trunc(pbMain.Height/2) - 40;
  a := seBreed.Value;
  b := seHoog.Value;
  n := seHoek.Value;
  SetLength(x,n);
  SetLength(y,n);
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  w := (360/n)*Pi/180;
  for j := 1 to n do
  begin
    w1 := (j)*w;
    x[j-1] := Trunc(u+a*Cos(w1));
    y[j-1] := Trunc(v-b*Sin(w1));
  end;
  for i := 1 to n-1 do
  begin
    for j := i+1 to n do
    begin
      pbMain.Canvas.MoveTo(x[i-1],y[i-1]);
      pbMain.Canvas.LineTo(x[j-1],y[j-1]);
    end;
  end;
end;

procedure TfrmMain.Formule(i: Integer; x: Double; var y: Double);
begin
  case i of
    0:  y := Exp(-0.1*x)*Cos(x);
    1:  y := Sin(x);
    2:  y := x*x;
    3:  y := Exp(x);
    4:  y := x*x*x-2*x*x-x;
  end;
end;

function TfrmMain.FormuleBloem(I: Integer; p: Double): Double;
begin
  Case I of
    1 : Result := Cos(4 * p);
    2 : Result := Cos(5 * p);
    3 : Result := Cos(4 * Sin(5 * p));
    4 : Result := Sin(4 * Cos(5 * p));
    5 : Result := Cos(3 * Tan(5 * p));
    6 : Result := Sin(3 * Tan(5 * p));
    7 : Result := Sin(4 * p);
    8 : Result := Sin(5 * p);
    9 : Result := Sin(5 * Cos(2 * Sin(3 * Cos(4 * p))));
    10 : Result := Cos(14 * P);
    11 : Result := SIN(3 * SIN(2 * P));
    12 : Result := SIN(5 * COS(2 * P));
    13 : Result := COS(4 * SIN(2 * P));
    14 : Result := COS(4 * SIN(3 * P));
    15 : Result := Cos(6 * p);
  end;
end;

function TfrmMain.FormuleBloem2(i, k: Integer; p: Double): Double;
begin
  case i of
    1 : Result := k * Cos(4 * Sin(2 * p));
    2 : Result := Trunc(pbMain.Height/4) + 2*k * Sin(4 * p);
  end;
end;

procedure TfrmMain.frmClear;
begin
  pbMain.Canvas.FillRect(rect(0,0,pbMain.Width,pbMain.Height));
  pnlDiagWeb.Visible := False;
  pnlDiagNHoek.Visible := False;
  pnlIngeschreven.Visible := False;
  pnlContFunctie.Visible := False;
  pnlWillekFunc.Visible := False;
  pnlBloem.Visible := False;
  pnlFuncFPhi.Visible := False;
  pnlLissajous.Visible := False;
  pnlOppKromme.Visible := False;
  pnlSpiralen.Visible := False;
  pnlVlinders.Visible := False;
  pnlSymFig.Visible := False;
  pnlCylKeg.Visible := False;
  Memo1.Visible := False;
end;

procedure TfrmMain.Grafiekvaneencontinuefunctie1Click(Sender: TObject);
var
  a, b, i, xx, yy, x1, x2, y1, y2: Integer;
  x, y, hp, lp, dx, kx, ky: Double;
begin
  frmClear;
  pnlContFunctie.Visible := True;
  a := seLinker.Value;
  b := seRechter.Value;
  if a>b then  Swap(a,b);
  hp := -100000;
  lp := 100000;
  dx := (b-a)/128;
  x := a;
  i := rgFormules.ItemIndex;
  repeat
    Formule(i,x,y);
    if y>hp then hp := y;
    if y<lp then lp := y;
    x := x+dx;
  until x=b;
  lblBoven.Caption := 'Grootste y-waarde: ' + hp.ToString;
  lblOnder.Caption := 'Kleinste y-waarde: ' + lp.ToString;
  seBoven.Value := Trunc(hp)+1;
  seOnder.Value := Trunc(lp)-1;
  //seBoven.Value := Trunc(hp);
  //seOnder.Value := Trunc(lp);
  hp := seBoven.Value;
  lp := seOnder.Value;
  if a=b then b := b+1;
  kx := pbMain.Width/(b-a);
  ky := pbMain.Height/(hp-lp);
  x := a;
  repeat
    Formule(i,x,y);
    xx := Trunc(kx*(x-a));
    yy := Trunc(ky*(hp-y));
    if x=a then
    begin
      x1 := xx;
      y1 := yy;
    end
    else
    begin
      x2 := xx;
      y2 := yy;
      pbMain.Canvas.MoveTo(x1,y1);
      pbMain.Canvas.LineTo(x2,y2);
      x1 := x2;
      y1 := y2;
    end;
    x := x+dx;
  until x=b;
  x1 := 0;
  y1 := Trunc(ky*hp);
  x2 := pbMain.Width;
  y2 := y1;
  if (y1 >= 0) and (y1 <= pbMain.Height) then
  begin
    pbMain.Canvas.MoveTo(x1,y1);
    pbMain.Canvas.LineTo(x2,y2);
  end;
  x1 := Trunc(kx*-a);
  y1 := 0;
  x2 := x1;
  y2 := pbMain.Height;
  if (x1 >= 0) and (x1 <= pbMain.Width) then
  begin
    pbMain.Canvas.MoveTo(x1,y1);
    pbMain.Canvas.LineTo(x2,y2);
  end;
end;

procedure TfrmMain.Ingeschrevenvierkanten1Click(Sender: TObject);
var
  h, j, k, n: Integer;
  a, b, x, y: Array[1..5] of Integer;
begin
  frmClear;
  pnlIngeschreven.Visible := True;
  seK.SetFocus;
  h := pbMain.Height - 40;
  x[1] := 40; x[2] := h; x[3] := h; x[4] := 40; x[5] := 40;
  y[1] := 40; y[2] := 40; y[3] := h; y[4] := h; y[5] := 40;
  k := seK.Value;
  for n:= 1 to 40 do
  begin
    pbMain.Canvas.MoveTo(x[1],y[1]);
    for j := 2 to 4 do
      pbMain.Canvas.LineTo(x[j],y[j]);
    pbMain.Canvas.LineTo(x[1],y[1]);
    for j := 1 to 4 do
    begin
      a[j] := x[j] + Trunc((x[j+1]-x[j])/k);
      b[j] := y[j] + Trunc((y[j+1]-y[j])/k);
    end;
    for j := 1 to 4 do
    begin
      x[j] := a[j];
      y[j] := b[j];
    end;
    for j := 1 to 4 do
    begin
      x[5] := x[1];
      y[5] := y[1];
    end;
  end;
end;

procedure TfrmMain.MoireeeffectClick(Sender: TObject);
var
  a, h, j: Integer;
begin
  frmClear;
  h := pbMain.Height;
  for j := 0 to Trunc(h/10) do
  begin
    a := j * 10;
    with pbMain.Canvas do
    begin
      MoveTo(0,h);
      LineTo(a,0);
      MoveTo(0,h);
      LineTo(h,a);
    end;
  end;
  for j := 0 to Trunc(h/10) do
  begin
    a := j * 10;
    with pbMain.Canvas do
    begin
      MoveTo(h,0);
      LineTo(0,a);
      MoveTo(h,0);
      LineTo(a,h);
    end;
  end;
end;

function TfrmMain.OppKromme(i: Integer; x: Double): Double;
begin
  case i of
   1: Result := Cos(x);
   2: Result := Cos(x) - Cos(3*x)/3;
   3: Result := Cos(x) - Cos(3*x)/3 + Cos(5*x)/5;
   4: Result := Cos(x) - Cos(3*x)/3 + Cos(5*x)/5 - Cos(7*x)/7;
   5: Result := Cos(x) - Cos(3*x)/3 + Cos(5*x)/5 - Cos(7*x)/7 + Cos(9*x)/9;
  end;
end;

procedure TfrmMain.miBloem2Click(Sender: TObject);
var
  i: Integer;
begin
  i := 1;
  Teken2(i);
end;

procedure TfrmMain.miBloem3Click(Sender: TObject);
var
  i: Integer;
begin
  i := 2;
  Teken3(i);
end;

procedure TfrmMain.miBloem4Click(Sender: TObject);
var
  j, k, n, u, v, w, x, x1, x2, y, y1, y2: Integer;
  c, p, p1, r, rd: Double;
begin
  frmClear;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  n := 4;
  c := 0.25;
  rd := pi/180;
  k := 30;
  while k<v-60 do
  begin
    for w := 0 to 360 do
    begin
      p := w * rd;
      r := k * (1 + c * abs(sin(n * p)));
      x := Trunc(u+r*Cos(p));
      y := Trunc(v-r*Sin(p));
      if p=0 then
      begin
        x1 := x;
        y1 := y;
      end
      else
      begin
        x2 := x;
        y2 := y;
        pbMain.Canvas.MoveTo(x1,y1);
        pbMain.Canvas.LineTo(x2,y2);
        x1 := x2;
        y1 := y2;
      end;
    end;
    k := k + 10;
  end;
  r := 30;
  p1 := 180 / n * rd;
  for j := 1 to n do
  begin
    p := j * p1;
    x1 := Trunc(u+r*Cos(p));
    y1 := Trunc(v-r*Sin(p));
    x2 := Trunc(u+r*Cos(p+pi));
    y2 := Trunc(v-r*Sin(p+pi));
    pbMain.Canvas.MoveTo(x1,y1);
    pbMain.Canvas.LineTo(x2,y2);
  end;
end;

procedure TfrmMain.miBloemClick(Sender: TObject);
var
  I : Integer;
begin
  I := rgFormule.ItemIndex + 1;
  Teken(I);
end;

procedure TfrmMain.miCylindersenkegelsClick(Sender: TObject);
var
  a, n, r1, r2, u, v, w0, xx, x1, x2, yy, y1, y2, z: Integer;
  c, dr, k, r, rd, s, w, w1, x, y: Double;
begin
  frmClear;
  pnlCylKeg.Visible := True;
  a := 45;
  k := 0.5;
  r1 := seR1.Value;
  r2 := seR2.Value;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  rd := pi/180;
  dr := (r1-r2)/10;
  n := 0;
  w := a*rd;
  c := k*Cos(w);
  s := k*Sin(w);
  z := -100;
  repeat
    r := r1-n*dr;
    for w0 := 0 to 360 do
    begin
      w1 := w0*rd;
      x := r*Cos(w1);
      y := r*Sin(w1);
      xx := Trunc(u+x+c*y);
      yy := Trunc(v-s*y-z);
      if w0=0 then
      begin
        x1 := xx;
        y1 := yy;
      end
      else
      begin
        x2 := xx;
        y2 := yy;
        pbMain.Canvas.MoveTo(x1,y1);
        pbMain.Canvas.LineTo(x2,y2);
        x1 := x2;
        y1 := y2;
      end;
    end;
    n := n + 1;
    z := z + 20;
  until z>=101;
  w0 := 0;
  repeat
    w1 := w0*rd;
    x := r1*Cos(w1);
    y := r1*Sin(w1);
    x1 := Trunc(u+x+c*y);
    y1 := Trunc(v-s*y+100);
    x := r2*Cos(w1);
    y := r2*Sin(w1);
    x2 := Trunc(u+x+c*y);
    y2 := Trunc(v-s*y-100);
    pbMain.Canvas.MoveTo(x1,y1);
    pbMain.Canvas.LineTo(x2,y2);
    w0 := w0+23;
  until w0>=360;
  pbMain.Canvas.MoveTo(u,0);
  pbMain.Canvas.LineTo(u,pbMain.Height);
end;

procedure TfrmMain.miDraaiendprismaClick(Sender: TObject);
var
  a, om, r, u, v, w0: Integer;
  c, k, rd, s, w, w1, xx, yy: Double;
  x, y: Array[0..7] of Integer;
  j: Integer;
begin
  frmClear;
  a := 45;
  k := 0.5;
  om := 45;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  rd := pi/180;
  r := pbMain.Height div 2 - 50;
  w := a * rd;
  c := k*Cos(w);
  s := k*Sin(w);
  pbMain.Canvas.MoveTo(u,0);
  pbMain.Canvas.LineTo(u,pbMain.Height);
  w0 := 0;
  repeat
    for j := 0 to 3 do
    begin
      w1 := (w0 + j * 120) * rd;
      xx := r * Cos(w1);
      yy := r * Sin(w1);
      x[j] := Trunc(u+xx+c*yy);
      y[j] := Trunc(v-s*yy+150);
      x[j+4] := x[j];
      y[j+4] := Trunc(v-s*yy-150);
    end;
    for j := 0 to 2 do
    begin
      with pbMain.Canvas do
      begin
        MoveTo(x[j],y[j]);
        LineTo(x[j+1],y[j+1]);
        MoveTo(x[j],y[j]);
        LineTo(x[j+4],y[j+4]);
        MoveTo(x[j+4],y[j+4]);
        LineTo(x[j+5],y[j+5]);
      end;
    end;
    w0 := w0 + om;
  until w0=360 ;
end;

procedure TfrmMain.miFuncFPhiClick(Sender: TObject);
var
  a, b, cw, ch, fa, fz, i, lp, hp, w, wo, wn, x1, x2, y1, y2: Integer;
  kx, ky, n, p, r, rd, t, x, y: Double;
begin
  frmClear;
  pnlFuncFPhi.Visible := True;
  cw := pbMain.Width;
  ch := pbMain.Height;
  a := seA.Value;
  b := seB.Value;
  lp := seLP.Value;
  hp := seHP.Value;
  wo := 0;
  wn := 720;
  kx := cw/(b-a);
  ky := ch/(hp-lp);
  rd := pi/180;
  fa := 1;
  i := rgFuncFPhi.ItemIndex + 1;
  for w := wo to wn do
  begin
    p := w * rd;
    case i of
      1:
        begin
          t := Sin(3*p/2);
          n := 1 - 2 * Cos(p);
        end;
      2:
        begin
          t := 4*Sin(3*p/2+2);
          n := Cos(p)*(1+(Cos(3*p)/3));
        end;
    end;
    if n=0 then
      fz := 1
    else
    begin
      r := t/n;
      x := r * Cos(p);
      y := r * Sin(p);
      if (Trunc(x)<a) or (Trunc(x)>b) or (Trunc(y)<lp) or (Trunc(y)>hp) then
        fz := 1
      else
        fz := 0;
    end;
      //if r<0 then
        //fz := 1;
    if fz=1 then
      fa := 1
    else
    begin
      if fa=1 then
      begin
        x1 := Trunc(kx*(x-a));
        y1 := Trunc(ky*(hp-y));
        fa := 0;
      end
      else
      begin
        x2 := Trunc(kx*(x-a));
        y2 := Trunc(ky*(hp-y));
        pbMain.Canvas.MoveTo(x1,y1);
        pbMain.Canvas.LineTo(x2,y2);
        x1 := x2;
        y1 := y2;
      end;
    end;
  end;
end;

procedure TfrmMain.miGrafiekvanzfxyClick(Sender: TObject);
var
  a, dx, dy, g, k1, u, v, w, xg, xx, x1, x2, yg, yy, y1, y2: Integer;
  af, c, k, rd, s, x, y, z: Double;
begin
  frmClear;
  //Memo1.Visible := True;
  w := 45;
  k := 0.5;
  a := 3;
  //k1 := Trunc((pbMain.Height/3)*2);
  k1 := 400;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2)+100;
  rd := pi/180;
  c := k*Cos(w);
  s := k*Sin(w);
  dx := 5;
  dy := 10;
  g := u - 200;
  af := a/g;
  yy := -g;
  repeat
    y := yy * af;
    xx := -g;
    repeat
      x := xx * af;
      z := k1 * Exp(-x * x - y * y);
      xg := Trunc(u + xx + c * yy);
      yg := Trunc(v - s * yy - z);
      //if xg<0 then xg := 0;
      //if xg>255 then xg := 255;
      if (yg<0) or (yg>pbMain.Height) then
      begin
        ShowMessage('Foute k1, yg='+yg.ToString);
        Exit;
      end;
      if xx=-g then
      begin
        x1 := xg;
        y1 := yg;
      end
      else
      begin
        x2 := xg;
        y2 := yg;
        pbMain.Canvas.MoveTo(x1,y1);
        pbMain.Canvas.LineTo(x2,y2);
        x1 := x2;
        y1 := y2;
      end;
      {Memo1.Lines.Add('xg='+xg.ToString+' yg='+yg.ToString+' xx='+xx.ToString+
        ' yy='+yy.ToString+' x1='+x1.ToString+' x2='+x2.ToString+
        ' y1='+y1.ToString+' y2='+y2.ToString);}
      xx := xx + dx;
    until xx>=g;
    yy := yy + dy;
  until yy>=g;
end;

procedure TfrmMain.miGrafiekvanzfxyhiddenlinesClick(Sender: TObject);
var
  a, dx, dy, g, k1, u, v, w, xg, xx, x1, x2, yg, yy, y1, y2: Integer;
  af, c, k, rd, s, x, y, z: Double;
  f1, f2: Boolean;
  h: Array[0..310] of Integer;
  l: Integer;
begin
  frmClear;
  //Memo1.Visible := True;
  w := 45;
  k := 0.5;
  a := 3;
  //k1 := Trunc((pbMain.Height/3)*2);
  k1 := 400;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2)+100;
  rd := pi/180;
  c := k*Cos(w);
  s := k*Sin(w);
  dx := 5;
  dy := 10;
  g := u - 200;
  af := a/g;
  for l := 0 to 310 do
    h[l] := 1000;
  yy := -g;
  repeat
    y := yy * af;
    xx := -g;
    repeat
      x := xx * af;
      z := k1 * Exp(-x * x - y * y);
      xg := Trunc(u + xx + c * yy);
      yg := Trunc(v - s * yy - z);
      //if xg<0 then xg := 0;
      //if xg>255 then xg := 255;
      if (yg<0) or (yg>pbMain.Height) then
      begin
        ShowMessage('Foute k1, yg='+yg.ToString);
        Exit;
      end;
      if xx=-g then
      begin
        f1 := False;
        l := Trunc(xg/dx);
        if yg<=h[l] then
        begin
          f1 := True;
          h[l] := yg;
        end;
        x1 := xg;
        y1 := yg;
      end
      else
      begin
        f2 := False;
        l := Trunc(xg/dx);
        if yg<=h[l] then
        begin
          f2 := True;
          h[l] := yg;
        end;
        x2 := xg;
        y2 := yg;
        if f1 and f2 then
        begin
          pbMain.Canvas.MoveTo(x1,y1);
          pbMain.Canvas.LineTo(x2,y2);
        end;
        x1 := x2;
        y1 := y2;
      end;
      {Memo1.Lines.Add('xg='+xg.ToString+' yg='+yg.ToString+' xx='+xx.ToString+
        ' yy='+yy.ToString);  }
      xx := xx + dx;
    until xx>=g;
    yy := yy + dy;
  until yy>=g;
end;

procedure TfrmMain.miIkosaederClick(Sender: TObject);
var
  a, f, i, j, l, m, u, v, x1, x2, y1, y2: Integer;
  c, k, rd, s, t, w: Double;
  x, y, z: Array of Double;
  zz: Array of string;
  n: Integer;
begin
  frmClear;
  //Memo1.Visible := True;
  a := 90;
  k := 0.4;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  rd := pi/180;
  w := a*rd;
  c := k*Cos(w);
  s := k*Sin(w);
  t := (Sqrt(5)-1)/2;
  f := pbMain.Height div 2 - 100;
  x := [0,0,f,-f,f*t,-f*t,f*t,-f*t,f,-f,0,0];
  y := [f*t,-f*t,0,0,f,f,-f,-f,0,0,f*t,-f*t];
  z := [-f,-f,-f*t,-f*t,0,0,0,0,f*t,f*t,f,f];
  zz := ['bcceeffddbabacaeafad','bhhddjjffkkeeiiccggb','ghhjjkkiiglglhljlkli'];
  for n := 0 to 2 do
  begin
    l := Length(zz[n]);
    m := 1;
    repeat
      i := Ord(zz[n][m])-97;
      j := Ord(zz[n][m+1])-97;
      x1 := Trunc(u+x[i]+c*y[i]);
      y1 := Trunc(v-s*y[i]-z[i]);
      x2 := Trunc(u+x[j]+c*y[j]);
      y2 := Trunc(v-s*y[j]-z[j]);
      pbMain.Canvas.MoveTo(x1,y1);
      pbMain.Canvas.LineTo(x2,y2);
      {Memo1.Lines.Add('n='+n.ToString+' m='+m.ToString+' i='+i.ToString+
        ' j='+j.ToString+' x1='+x1.ToString+' x2='+x2.ToString+
        ' y1='+y1.ToString+' y2='+y2.ToString); }
      m := m + 2;
    until m>l-1 ;
  end;
end;

procedure TfrmMain.miKubusmetachtvlakClick(Sender: TObject);
var
  a, i, j, l, m, n, u, v: Integer;
  c, k, rd, s, w: Double;
  x, y, z: Array of Integer;
  xx, yy: Array of Integer;
  zz: Array[1..2] of String;
begin
  frmClear;
  SetLength(xx,14);
  SetLength(yy,14);
  a := 45;
  k := 0.5;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  rd := pi/180;
  w := a*rd;
  c := k*Cos(w);
  s := k*Sin(w);
  x := [-200,200,200,-200,-200,200,200,-200,0,0,200,0,-200,0];
  y := [-200,-200,200,200,-200,-200,200,200,0,-200,0,200,0,0];
  z := [-200,-200,-200,-200,200,200,200,200,-200,0,0,0,0,200];
  for j := 0 to 13 do
  begin
    xx[j] := Trunc(u+x[j]+c*y[j]);
    yy[j] := Trunc(v-s*y[j]-z[j]);
  end;
  zz[1] := 'abbccddaaebfcgdheffgghhe';
  zz[2] := 'ijikilimjkkllmmjjnknlnmn';
  l := Length(zz[1]);
  for n := 1 to 2 do
    //n := 1;
  begin
    m := 1;
    repeat
      i := Ord(zz[n][m])-96;
      j := Ord(zz[n][m+1])-96;
      pbMain.Canvas.MoveTo(xx[i-1],yy[i-1]);
      pbMain.Canvas.LineTo(xx[j-1],yy[j-1]);
      m := m + 2;
    until m=l+1 ;
  end;
end;

procedure TfrmMain.miKubusmetzadelvlakClick(Sender: TObject);
var
  a, i, j, l, m, n, u, v, x1, x2, y1, y2: Integer;
  c, k, rd, s, w: Double;
  x, y, z: Array of Integer;
  xx, yy: Array of Integer;
  zz: String;
begin
  frmClear;
  SetLength(xx,14);
  SetLength(yy,14);
  a := 45;
  k := 0.5;
  n := 32;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  rd := pi/180;
  w := a*rd;
  c := k*Cos(w);
  s := k*Sin(w);
  x := [-200,200,200,-200,-200,200,200,-200];
  y := [-200,-200,200,200,-200,-200,200,200];
  z := [-200,-200,-200,-200,200,200,200,200];
  for j := 0 to 7 do
  begin
    xx[j] := Trunc(u+x[j]+c*y[j]);
    yy[j] := Trunc(v-s*y[j]-z[j]);
  end;
  zz := 'abbccddaaebfcgdheffgghhe';
  l := Length(zz);
  m := 1;
  repeat
    i := Ord(zz[m])-96;
    j := Ord(zz[m+1])-96;
    pbMain.Canvas.MoveTo(xx[i-1],yy[i-1]);
    pbMain.Canvas.LineTo(xx[j-1],yy[j-1]);
    m := m + 2;
  until m=l+1 ;
  for j := 0 to n do
  begin
    x1 := Trunc(xx[1]+j*(xx[6]-xx[1])/n);
    y1 := Trunc(yy[1]+j*(yy[6]-yy[1])/n);
    x2 := Trunc(xx[4]+j*(xx[3]-xx[4])/n);
    y2 := Trunc(yy[4]+j*(yy[3]-yy[4])/n);
    pbMain.Canvas.MoveTo(x1,y1);
    pbMain.Canvas.LineTo(x2,y2);
  end;
  pbMain.Canvas.MoveTo(xx[1],yy[1]);
  pbMain.Canvas.LineTo(xx[6],yy[6]);
  pbMain.Canvas.MoveTo(xx[4],yy[4]);
  pbMain.Canvas.LineTo(xx[3],yy[3]);
end;

procedure TfrmMain.miLissajousfiguurClick(Sender: TObject);
var
  f1, f2, f3, f4, k1, k2, k3, k4, p1, p3, u, v, w, xx, yy, x1, x2, y1, y2: Integer;
  rd, t, x, y: Double;
begin
  frmClear;
  pnlLissajous.Visible := True;
  f1 := seF1.Value;
  f2 := seF2.Value;
  f3 := seF3.Value;
  f4 := seF4.Value;
  k1 := seK1.Value;
  k2 := seK2.Value;
  k3 := seK3.Value;
  k4 := seK4.Value;
  p1 := seP1.Value;
  p3 := seP3.Value;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  rd := pi/180;
  for w:=0 to 360 do
  begin
    t := w * rd;
    x := k1*Sin(f1*t+p1)+k2*Cos(f2*t);
    y := k3*Sin(f3*t+p3)+k4*Cos(f4*t);
    xx := Trunc(u+x);
    yy := Trunc(v-y);
    if w=0 then
    begin
      x1 := xx;
      y1 := yy;
    end
    else
    begin
      x2 := xx;
      y2 := yy;
      pbMain.Canvas.MoveTo(x1,y1);
      pbMain.Canvas.LineTo(x2,y2);
      x1 := x2;
      y1 := y2;
    end;
  end;
end;

procedure TfrmMain.miOppKrommeClick(Sender: TObject);
var
  i, j, k, v, y: Integer;
  c, x, yy: Double;
begin
  frmClear;
  pnlOppKromme.Visible := True;
  v := pbMain.Width div 4;
  k := pbMain.Height div 4;
  c := 2*pi/pbMain.Height;
  i := seKromme.Value;
  for j := 0 to pbMain.Height do
  begin
    x := j*c-pi;
    yy := OppKromme(i,x);
    y := Trunc(v - k * yy);
    pbMain.Canvas.MoveTo(j,v);
    pbMain.Canvas.LineTo(j,y);
  end;
end;

procedure TfrmMain.miSpiralenClick(Sender: TObject);
var
  q, u, v, w, x, x1, x2, y, y1, y2: Integer;
  c, p, r, rd: Double;
begin
  frmClear;
  pnlSpiralen.Visible := True;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  rd := Pi/180;
  if rgSpiralen.ItemIndex = 0 then
  begin
    seCenter.Visible:=False;
    lblCenter.Visible:=False;
    seGrootte.Visible:=True;
    lblGrootte.Visible:=True;
    c := seGrootte.Value;
  end
  else
  begin
    seCenter.Visible:=True;
    lblCenter.Visible:=True;
    seGrootte.Visible:=False;
    lblGrootte.Visible:=False;
    c := 0.1;
    q := seCenter.Value;
  end;
  for w := 0 to 3000 do
  begin
    p := w * rd;
    if rgSpiralen.ItemIndex = 0 then
    begin
      //c := c * 2;
      r := c * p
    end
    else
    begin
      r := q * Exp(c * p);
      if r > v then Break;
    end;
    x := Trunc(u + r * Cos(p));
    y := Trunc(v - r * Sin(p));
    //if x = 0 or x >= pbMain.Width or y = 0 or y >= pbMain.Height then Break;
    if p = 0 then
    begin
      x1 := x;
      y1 := y;
    end
    else
    begin
      x2 := x;
      y2 := y;
      pbMain.Canvas.MoveTo(x1,y1);
      pbMain.Canvas.LineTo(x2,y2);
      x1 := x2;
      y1 := y2;
    end;
  end;
end;

procedure TfrmMain.miSymmetrischefigurenClick(Sender: TObject);
var
  a, b, c, k, u, v, w, x1, x2, y1, y2: Integer;
  r, rd, t: Double;
begin
  frmClear;
  pnlSymFig.Visible := True;
  u := pbMain.Width div 2;
  v := pbMain.Height div 2;
  k := pbMain.Height div 2 - 50;
  rd := pi/180;
  case rgSymFig.ItemIndex of
  0:
    begin
      a := 2;
      b := 7;
      c := 3;
    end;
  1:
    begin
      a := 6;
      b := 6;
      c := 4;
    end;
  2:
    begin
      a := 4;
      b := 6;
      c := 1;
    end;
  3:
    begin
      a := 1;
      b := 1;
      c := 4;
    end;
  4:
    begin
      a := 3;
      b := 3;
      c := 5;
    end;
  5:
    begin
      a := 2;
      b := 2;
      c := 9;
    end;
  6:
    begin
      a := 20;
      b := -1;
      c := 3;
    end;
  7:
    begin
      a := -40;
      b := -40;
      c := 10;
    end;
  end;

  for w := 0 to 360 do
  begin
    t := w * rd;
    r := k * Sin(c*t);
    x2 := Trunc(u+r*Cos(a*t));
    y2 := Trunc(v-r*Sin(b*t));
    if w = 0 then
    begin
      x1 := x2;
      y1 := y2;
    end
    else
    begin
      pbMain.Canvas.MoveTo(x1,y1);
      pbMain.Canvas.LineTo(x2,y2);
      x1 := x2;
      y1 := y2;
    end;
  end;
end;

procedure TfrmMain.miVliegekopClick(Sender: TObject);
var
  k, u, v, w, xx, x1, x2, yy, y1, y2: Integer;
  rd, t, x, y: Double;
begin
  frmClear;
  u := pbMain.Width div 2;
  v := pbMain.Height div 2;
  k := 100;
  rd := pi/180;
  for w := 90 to 450 do
  begin
    t := w * rd;
    x := k * Sin(2 * t) * (2.5 + Cos(3 * t));
    y := k * 2 * Cos(3 * t);
    xx := Trunc(u + x);
    yy := Trunc(v - y);
    if w = 90 then
    begin
      x1 := xx;
      y1 := yy;
    end
    else
    begin
      x2 := xx;
      y2 := yy;
      pbMain.Canvas.MoveTo(x1,y1);
      pbMain.Canvas.LineTo(x2,y2);
      x1 := x2;
      y1 := y2;
    end;
  end;
end;

procedure TfrmMain.miVlindersClick(Sender: TObject);
var
  a, b, c, n, kx, ky, u, v, w, xx, x1, x2, yy, y1, y2: Integer;
  rd, t, x, y: Double;
begin
  frmClear;
  pnlVlinders.Visible := True;
  u := pbMain.Width div 2;
  v := pbMain.Height div 2;
  kx := 15;
  ky := 15;
  rd := pi/180;
  case rgVlinders.ItemIndex of
  0:
    begin
      a := -6;
      b := 1;
    end;
  1:
    begin
      a := -6;
      b := 2;
    end;
  2:
    begin
      a := -8;
      b := 2;
    end;
  3:
    begin
      a := 4;
      b := 1;
    end;
  4:
    begin
      a := 4;
      b := 2;
    end;
  5:
    begin
      a := 6;
      b := 1;
    end;
  end;
  c := seC.Value;
  for n := -c to c do
    for w := 0 to 360 do
    begin
    //w := 0;
    //repeat
      t := w * rd;
      x := (a+b)*Cos(t)-n*b*Cos((a+b)/b*t);
      y := (a+b)*Sin(t)-n*b*Sin((a+b)/b*t);
      xx := Trunc(u+kx*x);
      yy := Trunc(v-ky*y);
      if w = 0 then
      begin
        x1 := xx;
        y1 := yy;
      end
      else
      begin
        x2 := xx;
        y2 := yy;
        pbMain.Canvas.MoveTo(x1,y1);
        pbMain.Canvas.LineTo(x2,y2);
        x1 := x2;
        y1 := y2;
      end;
      //w := w + 3;
    //until w>=360;
    end;

end;

procedure TfrmMain.miWillekeurigeFunctieClick(Sender: TObject);
var
  a, b, ch, cw, fa, fz, hp, lp, x1, x2, y1, y2: Integer;
  dx, kx, ky, x, y: Double;
begin
  frmClear;
  pnlWillekFunc.Visible:=True;
  ch := pbMain.Height;
  cw := pbMain.Width;
  a := seLinkergrensX.Value;
  b := seRechtergrensX.Value;
  hp := seBovengrensY.Value;
  lp := seOndergrensY.Value;
  if a>b then Swap(a,b);
  kx := cw/(b-a);
  ky := ch/(hp-lp);
  dx := (b-a)/cw;
  fa := 1;
  x := a;
  repeat
    x2 := Trunc(kx*(x-a));
    fn(x,lp,hp,y,fz);
    if fz=1 then
    begin
      fa := 1;
    end
    else
    //begin
      if fa=1 then
      begin
        x1 := x2;
        fa := 0;
        y1 := Trunc(ky*(hp-y));
      end
      else
      begin
        y2 := Trunc(ky*(hp-y));
        pbMain.Canvas.MoveTo(x1,y1);
        pbMain.Canvas.LineTo(x2,y2);
        x1 := x2;
        y1 := y2;
      end;
    //end;
    x := x + dx;
  until x >= b;
  x1 := 0;
  y1 := Trunc(ky*hp);
  x2 := cw;
  y2 := y1;
  if (y1>0) and (y1<ch) then
    pbMain.Canvas.MoveTo(x1,y1);
    pbMain.Canvas.LineTo(x2,y2);
  x1 := Trunc(kx*(-a));
  y1 := 0;
  x2 := x1;
  y2 := ch;
  if (x1>0) and (x1<cw) then
  begin
    pbMain.Canvas.MoveTo(x1,y1);
    pbMain.Canvas.LineTo(x2,y2);
  end;
end;

procedure TfrmMain.ParaboolStelselClick(Sender: TObject);
var
  k, u, v, x, xx, x1, x2, y, y1, y2: Integer;
  yy: Double;
begin
  frmClear;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  k := -v;
  repeat
    x := -110;
    repeat
      xx := Trunc(u+x*4);
      y:= Trunc(-k*x*x/6400+k);
      y := v-y;
      if x = -110 then
      begin
        x1 := xx;
        y1 := y;
      end
      else
      begin
        x2 := xx;
        y2 := y;
        pbMain.Canvas.MoveTo(x1,y1);
        pbMain.Canvas.LineTo(x2,y2);
        x1 := x2;
        y1 := y2;
      end;
      x := x + 5;
    until x >= 110;
    k := k + 10;
  until k>=v;
end;

procedure TfrmMain.Sinuskrommen1Click(Sender: TObject);
var
  f, j, k, n, v, x1, x2, y, y1, y2: Integer;
  c, p, x: Double;
begin
  frmClear;
  v := 300;
  k := 200;
  p := pi/9;
  c := 2*pi/pbMain.Width;
  for n := 0 to 9 do
  begin
    j := 0;
    repeat
      x := j*c;
      y := Trunc(v-k*Sin(x+n*p));
      if j=0 then
      begin
        x1 := j;
        y1 := y;
      end
      else
      begin
        x2 := j;
        y2 := y;
        pbMain.Canvas.MoveTo(x1,y1);
        pbMain.Canvas.LineTo(x2,y2);
        x1 := x2;
        y1 := y2;
      end;
      j := j + 5;
    until  j>=pbMain.Width;
  end;
end;

procedure TfrmMain.Swap(var a, b: Integer);
var
  c: Integer;
begin
  c := a;
  a := b;
  b := c;
end;

procedure TfrmMain.Teken(I: Integer);
var
  RD, P, R: Single;
  K, U, V, W, X1, X2, Y1, Y2: Integer;

begin
  frmClear;
  pnlBloem.Visible:=True;
  U := Trunc(pbMain.Width/2);
  V := Trunc(pbMain.Height/2);
  K := V;
  RD := Pi/180;
  P := 0;
  R := FormuleBloem(I,P);
  X1 := Trunc(U + K * R * Cos(P));
  Y1 := Trunc(V - K * R * Sin(P));
  W := 1;
  while W <= 360 do
  begin
    P := W * RD;
    R := FormuleBloem(I,P);
    X2 := Trunc(U + K * R * Cos(P));
    Y2 := Trunc(V - K * R * Sin(P));
    pbMain.Canvas.MoveTo(x1,y1);
    pbMain.Canvas.LineTo(x2,y2);
    X1 := X2;
    Y1 := Y2;
    W := W + 1;
  end;
end;

procedure TfrmMain.Teken2(i: Integer);
var
  k, v, u, w, x, x1, x2, y, y1, y2: Integer;
  rd, p, r: Double;
begin
  frmClear;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  //u := 200;
  //v := 200;
  rd := pi/180;
  w := 0;
  k := 2;
  repeat
    repeat
      p := w * rd;
      r := FormuleBloem2(i, k, p);
      x := Trunc(u + k * r * Cos(p));
      y := Trunc(v - k * r * Sin(p));
      if p = 0 then
      begin
        x1 := x;
        y1 := y;
      end
      else
      begin
        x2 := x;
        y2 := y;
        pbMain.Canvas.MoveTo(x1,y1);
        pbMain.Canvas.LineTo(x2,y2);
        x1 := x2;
        y1 := y2;
      end;
      w := w + 1;
    until w = 361;
    w := 0;
    k := k + 1;
  until k >= 20;
end;

procedure TfrmMain.Teken3(i: Integer);
var
  k, u, v, w, x, x1, x2, y, y1, y2: Integer;
  p, r, rd: Double;
begin
  frmClear;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  rd := pi/180;
  k := -80;
  repeat
    for w := 0 to 360 do
    begin
      p := w * rd;
      r := FormuleBloem2(i, k, p);
      x := Trunc(u + r * Cos(p));
      y := Trunc(v - r * Sin(p));
      if p = 0 then
      begin
        x1 := x;
        y1 := y;
      end
      else
      begin
        x2 := x;
        y2 := y;
        pbMain.Canvas.MoveTo(x1,y1);
        pbMain.Canvas.LineTo(x2,y2);
        x1 := x2;
        y1 := y2;
      end;
    end;
    k := k + 20;
  until k > 80;
end;

procedure TfrmMain.DriehoekenClick(Sender: TObject);
var
  j, k, x0, y0: Integer;
  a, b, x, y: Array[1..3] of Integer;
begin
  frmClear;
  a[1] := 6;
  a[2] := 20;
  a[3] := 12;
  b[1] := 12;
  b[2] := 9;
  b[3] := -6;
  x0 := 0;
  y0 := Trunc(pbMain.Height/3);
  for k := 1 to 30 do
  begin
    for j:=1 to 3 do
    begin
      x[j] := x0 + k * a[j];
      y[j] := y0 + k * b[j];
    end;
    pbMain.Canvas.MoveTo(x[1],y[1]);
    pbMain.Canvas.LineTo(x[2],y[2]);
    pbMain.Canvas.LineTo(x[3],y[3]);
    pbMain.Canvas.LineTo(x[1],y[1]);
  end;
end;

procedure TfrmMain.fn(x: Double; lp, hp: Integer; var y: Double;
  var fz: Integer);
var
  n : Double;
begin
//subroutine functiewaarde berekenen
  case rgWillekFunc.ItemIndex of
    0:
    begin
      n := x*x-x-6;
      if n=0 then
        fz := 1
      else
        y := (x*x+3)/n;
      if (y<lp) or (y>hp) then
        fz := 1
      else
        fz := 0;
    end;
    1:
    begin
      n := x*x-2;
      if n<=0 then
        fz := 1
      else
      begin
        y := Ln(n);
        if (y<lp) or (y>hp) then
          fz := 1
        else
          fz := 0;
      end;
    end;
    2:
    begin
      n := x-3;
      if n=0 then
        fz := 1
      else
        y := 3-x+Ln(Abs((x-1)/n));
      if (y<lp) or (y>hp) then
        fz := 1
      else
        fz := 0;
    end;
  end;
end;

procedure TfrmMain.Zeshoeken1Click(Sender: TObject);
var
  x, y, a, b: Array[1..7] of Integer;
  u, v, r, j, k, n: Integer;
  h, w, w1: real;
begin
  frmClear;
  u := Trunc(pbMain.Width/2);
  v := Trunc(pbMain.Height/2);
  r := v;
  w := 60*pi/180;
  for j := 1 to 7 do
  begin
    w1 := j * w;
    x[j] := Trunc(u+r*Cos(w1));
    y[j] := Trunc(v-r*Sin(w1));
  end;
  for n := 1 to 20 do
  begin
    for j := 1 to 6 do
    begin
      pbMain.Canvas.MoveTo(x[j],y[j]);
      pbMain.Canvas.LineTo(x[j+1],y[j+1]);
    end;
    for k := 1 to 6 do
    begin
      a[k] := Trunc((x[k] + x[k+1])/2);
      b[k] := Trunc((y[k] + y[k+1])/2);
    end;
    a[7] := a[1];
    b[7] := b[1];
    for j := 1 to 7 do
    begin
      x[j] := a[j];
      y[j] := b[j];
    end;
  end;
end;

end.
