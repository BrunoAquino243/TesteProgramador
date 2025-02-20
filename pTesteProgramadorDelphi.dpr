program pTesteProgramadorDelphi;

uses
  Vcl.Forms,
  uTesteProgramadorDelphi in 'uTesteProgramadorDelphi.pas' {frmTesteProgramadorDelphi},
  uFrmDesafio1 in 'uFrmDesafio1.pas' {frmDesafio1},
  uFrmDesafio2 in 'uFrmDesafio2.pas' {frmDesafio2},
  uFrmDesafio3 in 'uFrmDesafio3.pas' {frmDesafio3},
  uFrmDesafio4 in 'uFrmDesafio4.pas' {frmDesafio4},
  uFrmDesafio5 in 'uFrmDesafio5.pas' {frmDesafio5},
  uFrmDesafio6 in 'uFrmDesafio6.pas' {frmDesafio6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTesteProgramadorDelphi, frmTesteProgramadorDelphi);
  Application.CreateForm(TfrmDesafio1, frmDesafio1);
  Application.CreateForm(TfrmDesafio2, frmDesafio2);
  Application.CreateForm(TfrmDesafio3, frmDesafio3);
  Application.CreateForm(TfrmDesafio4, frmDesafio4);
  Application.CreateForm(TfrmDesafio5, frmDesafio5);
  Application.CreateForm(TfrmDesafio6, frmDesafio6);
  Application.Run;
end.
