program GrafProg;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  prog5dialoog in 'prog5dialoog.pas' {Form2},
  prog6dialoog in 'prog6dialoog.pas' {Form3},
  prog7dialoog in 'prog7dialoog.pas' {Form4},
  prog7adialoog in 'prog7adialoog.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
