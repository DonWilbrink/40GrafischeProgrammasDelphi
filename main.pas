unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    pbMain: TPaintBox;
    MainMenu1: TMainMenu;
    Programma1101: TMenuItem;
    Diagonaalweb1: TMenuItem;
    Moireeeffect: TMenuItem;
    Driehoeken: TMenuItem;
    Zeshoeken1: TMenuItem;
    Diagonalenhoeken1: TMenuItem;
    Panel1: TPanel;
    Ingeschrevenvierkanten1: TMenuItem;
    Grafiekvaneencontinuefunctie1: TMenuItem;
    edN: TSpinEdit;
    lblN: TLabel;
    Sinuskrommen1: TMenuItem;
    procedure Diagonaalweb1Click(Sender: TObject);
    procedure MoireeeffectClick(Sender: TObject);
    procedure DriehoekenClick(Sender: TObject);
    procedure Zeshoeken1Click(Sender: TObject);
    procedure Diagonalenhoeken1Click(Sender: TObject);
    procedure Ingeschrevenvierkanten1Click(Sender: TObject);
    procedure Grafiekvaneencontinuefunctie1Click(Sender: TObject);
    procedure Sinuskrommen1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Clear;
    procedure Formule(x: Double; var y:Double);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses prog5dialoog, prog6dialoog, prog7dialoog, prog7adialoog;

procedure TForm1.Clear;
begin
  pbMain.Canvas.FillRect(rect(0,0,pbMain.Width,pbMain.Height));
  lblN.Visible:=False;
  edN.Visible:=False;
end;

procedure TForm1.Diagonaalweb1Click(Sender: TObject);
var
  a, b, h, i, j, n, y1, y2: Integer;
begin
  Clear;
  lblN.Visible:=True;
  edN.Visible:=True;
  h := pbMain.Height;
  y1 := 0;
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

procedure TForm1.Diagonalenhoeken1Click(Sender: TObject);
var
  a, b, n, i, j, u, v: Integer;
  w, w1: real;
  x, y: Array of Integer;
begin
  Clear;
  Form2.ShowModal;
  a := Form2.SpinEdit1.Value;
  b := Form2.SpinEdit2.Value;
  n := Form2.SpinEdit3.Value;
  SetLength(x,n);
  SetLength(y,n);
  u := 300; v := 200;
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

procedure TForm1.Formule(x: Double; var y: Double);
begin
  y := Exp(-0.1*x)*Cos(x);
end;

procedure TForm1.Grafiekvaneencontinuefunctie1Click(Sender: TObject);
var
  a, b, c, xx, yy, x1, x2, y1, y2: Integer;
  x, y, hp, lp, dx, kx, ky: Double;
begin
  Clear;
  Form4.ShowModal;
  a := Form4.SpinEdit1.Value;
  b := Form4.SpinEdit2.Value;
  if a>b then
  begin
    c := a;
    a := b;
    b := c;
  end;
  hp := -100000;
  lp := 100000;
  dx := (b-a)/128;
  x := a;
  repeat
    Formule(x,y);
    if y>hp then hp := y;
    if y<lp then lp := y;
    x := x+dx;
  until x=b;
  Form5.Label1.Caption := 'Grootste y-waarde: ' + hp.ToString;
  Form5.Label2.Caption := 'Kleinste y-waarde: ' + lp.ToString;
  Form5.SpinEdit1.Value := Trunc(hp);
  Form5.SpinEdit2.Value := Trunc(lp);
  Form5.ShowModal;
  hp := Form5.SpinEdit1.Value;
  lp := Form5.SpinEdit2.Value;
  if a=b then b := b+1;
  kx := 500/(b-a);
  ky := 400/(hp-lp);
  x := a;
  repeat
    Formule(x,y);
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
  x2 := 500;
  y2 := y1;
  if (y1 >= 0) and (y1 <= 400) then
  begin
    pbMain.Canvas.MoveTo(x1,y1);
    pbMain.Canvas.LineTo(x2,y2);
  end;
  x1 := Trunc(kx*-a);
  y1 := 0;
  x2 := x1;
  y2 := 400;
  if (x1 >= 0) and (x1 <= 500) then
  begin
    pbMain.Canvas.MoveTo(x1,y1);
    pbMain.Canvas.LineTo(x2,y2);
  end;
end;

procedure TForm1.Ingeschrevenvierkanten1Click(Sender: TObject);
var
  j, k, n: Integer;
  a, b, x, y: Array[1..5] of Integer;
begin
  Clear;
  Form3.ShowModal;
  x[1] := 40; x[2] := 400; x[3] := 400; x[4] := 40; x[5] := 40;
  y[1] := 40; y[2] := 40; y[3] := 400; y[4] := 400; y[5] := 40;
  k := Form3.SpinEdit1.Value;
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

procedure TForm1.MoireeeffectClick(Sender: TObject);
var
  a, h, j: Integer;
begin
  Clear;
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

procedure TForm1.Sinuskrommen1Click(Sender: TObject);
var
  f, j, k, n, v, x1, x2, y, y1, y2: Integer;
  c, p, x: Double;
begin
  Clear;
  v := 200;
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

procedure TForm1.DriehoekenClick(Sender: TObject);
var
  j, k, x0, y0: Integer;
  a, b, x, y: Array[1..3] of Integer;
begin
  Clear;
  a[1] := 6;
  a[2] := 20;
  a[3] := 12;
  b[1] := 12;
  b[2] := 9;
  b[3] := -6;
  x0 := 0;
  y0 := 139;
  for k := 1 to 24 do
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

procedure TForm1.Zeshoeken1Click(Sender: TObject);
var
  x, y, a, b: Array[1..7] of Integer;
  u, v, r, j, k, n: Integer;
  h, w, w1: real;
begin
  Clear;
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
