unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    pbMain: TPaintBox;
    MainMenu1: TMainMenu;
    Programma1101: TMenuItem;
    Diagonaalweb1: TMenuItem;
    Moireeeffect1: TMenuItem;
    Moireeeffect2: TMenuItem;
    Zeshoeken1: TMenuItem;
    Diagonalenhoeken1: TMenuItem;
    Panel1: TPanel;
    Ingeschrevenvierkanten1: TMenuItem;
    Memo1: TMemo;
    procedure Diagonaalweb1Click(Sender: TObject);
    procedure Moireeeffect1Click(Sender: TObject);
    procedure Moireeeffect2Click(Sender: TObject);
    procedure Zeshoeken1Click(Sender: TObject);
    procedure Diagonalenhoeken1Click(Sender: TObject);
    procedure Ingeschrevenvierkanten1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Clear;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses prog5dialoog, prog6dialoog;

procedure TForm1.Clear;
begin
  pbMain.Canvas.FillRect(rect(0,0,pbMain.Width,pbMain.Height));
end;

procedure TForm1.Diagonaalweb1Click(Sender: TObject);
var
  a, b, i, j, y1, y2: Integer;
begin
  Clear;
  y1 := 0;
  y2 := 400;
  a := 0;
  b := 0;
  for i := 0 to 7 do
  begin
    a := i * 50;
    for j := 0 to 7 do
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
  n := Form2.SpinEdit3.Value-1;
  SetLength(x,n);
  SetLength(y,n);
  u := 300; v := 200;
  w := (360/n)*Pi/180;
  for j := 1 to n do
  begin
    w1 := (j-1)*w;
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

procedure TForm1.Ingeschrevenvierkanten1Click(Sender: TObject);
var
  j, k, n: Integer;
  a, b, x, y: Array[1..5] of Integer;
begin
  Clear;
  Memo1.Clear;
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
      x[j] := a[j]; Memo1.Lines.Add('x['+j.ToString+']='+IntToStr(x[j]));
      y[j] := b[j]; Memo1.Lines.Add('y['+j.ToString+']='+IntToStr(y[j]));
    end;
    for j := 1 to 4 do
    begin
      x[5] := x[1];
      y[5] := y[1];
    end;
  end;

end;

procedure TForm1.Moireeeffect1Click(Sender: TObject);
var
  a, j: Integer;
begin
  Clear;
  for j := 0 to 40 do
  begin
    a := j * 10;
    with pbMain.Canvas do
    begin
      MoveTo(0,400);
      LineTo(a,0);
      MoveTo(0,400);
      LineTo(400,a);
    end;
  end;
  for j := 0 to 40 do
  begin
    a := j * 10;
    with pbMain.Canvas do
    begin
      MoveTo(400,0);
      LineTo(0,a);
      MoveTo(400,0);
      LineTo(a,400);
    end;
  end;
end;

procedure TForm1.Moireeeffect2Click(Sender: TObject);
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
  for k := 1 to 22 do
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
  u := 200;
  v := 200;
  r := 200;
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
