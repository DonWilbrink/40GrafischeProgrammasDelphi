program GrafProg;

uses
  Vcl.Forms,
  main in 'main.pas' {frmMain},
  prog7dialoog in 'prog7dialoog.pas' {Form4},
  prog7adialoog in 'prog7adialoog.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
