program GrafProg;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  prog5dialoog in 'prog5dialoog.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
