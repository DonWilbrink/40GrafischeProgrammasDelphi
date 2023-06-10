unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    pbMain: TPaintBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure Clear;
    procedure BresenhamLine(x1, y1, x2, y2 : integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.BresenhamLine(x1, y1, x2, y2 : integer);
var i, deltax, deltay, numpixels,
    d, dinc1, dinc2,
    x, xinc1, xinc2,
    y, yinc1, yinc2 : integer;

begin
  // Calculate deltax and deltay for initialisation
  deltax := abs(x2 - x1);
  deltay := abs(y2 - y1);

  // Initialize all vars based on which is the independent variable

  if deltax >= deltay then
    begin

      // x is independent variable

      numpixels := deltax + 1;
      d := (2 * deltay) - deltax;
      dinc1 := deltay Shl 1;
      dinc2 := (deltay - deltax) shl 1;
      xinc1 := 1;
      xinc2 := 1;
      yinc1 := 0;
      yinc2 := 1;
    end
  else
    begin

      // y is independent variable

      numpixels := deltay + 1;
      d := (2 * deltax) - deltay;
      dinc1 := deltax Shl 1;
      dinc2 := (deltax - deltay) shl 1;
      xinc1 := 0;
      xinc2 := 1;
      yinc1 := 1;
      yinc2 := 1;
    end;

  // Make sure x and y move in the right directions

  if x1 > x2 then
    begin
      xinc1 := - xinc1;
      xinc2 := - xinc2;
    end;

  if y1 > y2 then
    begin
      yinc1 := - yinc1;
      yinc2 := - yinc2;
    end;

  // Start drawing at

  x := x1;
  y := y1;

  // Draw the pixels

  for i := 1 to numpixels do
    begin
      pbMain.Canvas.Pixels[x,y]:=clBlack;
      if d < 0 then
	    begin
	      d := d + dinc1;
	      x := x + xinc1;
	      y := y + yinc1;
	    end
      else
	    begin
	      d := d + dinc2;
	      x := x + xinc2;
	      y := y + yinc2;
	    end;
    end;
  // BresenhamLine
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  a, b, i, j, y1, y2: Integer;
begin
  Clear;
  y1 := 0;
  y2 := 300;
  a := 0;
  b := 0;
  for i := 0 to 7 do
  begin
    a := i * 36;
    for j := 0 to 7 do
    begin
      b := j * 36;
      pbMain.Canvas.MoveTo(a,y1);
      pbMain.Canvas.LineTo(b,y2);
      //BresenhamLine(a,y1,b,y2);
    end;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  a, j: Integer;
begin
  Clear;
  for j := 0 to 25 do
  begin
    a := j * 10;
    with pbMain.Canvas do
    begin
      MoveTo(0,250);
      LineTo(a,0);
      MoveTo(0,250);
      LineTo(250,a);
    end;
  end;
  for j := 0 to 25 do
  begin
    a := j * 10;
    with pbMain.Canvas do
    begin
      MoveTo(250,0);
      LineTo(0,a);
      MoveTo(250,0);
      LineTo(a,250);
    end;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
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
  k := 1;
  repeat
    for j:=1 to 3 do
    begin
      x[j] := x0 + k * a[j];
      y[j] := y0 + k * b[j];
    end;
    pbMain.Canvas.MoveTo(x[1],y[1]);
    pbMain.Canvas.LineTo(x[2],y[2]);
    pbMain.Canvas.LineTo(x[3],y[3]);
    pbMain.Canvas.LineTo(x[1],y[1]);
    k := k + 1;
  until k >= 22;
end;

procedure TForm1.Button4Click(Sender: TObject);
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

procedure TForm1.Clear;
begin
  pbMain.Canvas.FillRect(rect(0,0,pbMain.Width,pbMain.Height));
end;

end.
