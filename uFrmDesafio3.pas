unit uFrmDesafio3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmDesafio3 = class(TForm)
    btnIniciar: TButton;
    Label1: TLabel;
    lblContagem: TLabel;
    tTimerRegressiva: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIniciarClick(Sender: TObject);
    procedure tTimerRegressivaTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    iContagem: Integer;
  public
    { Public declarations }
  end;

var
  frmDesafio3: TfrmDesafio3;

implementation

{$R *.dfm}

procedure TfrmDesafio3.btnIniciarClick(Sender: TObject);
begin
     iContagem := 10;
     lblContagem.Caption := IntToStr(iContagem);
     tTimerRegressiva.Enabled := True;
end;

procedure TfrmDesafio3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TfrmDesafio3.FormCreate(Sender: TObject);
begin
     tTimerRegressiva.Enabled := False;
end;

procedure TfrmDesafio3.tTimerRegressivaTimer(Sender: TObject);
begin
     if iContagem > 0 then
     begin
          iContagem := iContagem - 1;
          lblContagem.Caption := IntToStr(iContagem);
     end
     else
         begin
              tTimerRegressiva.Enabled := False;
              ShowMessage('Tempo esgotado!');
              iContagem := 10;
              lblContagem.Caption := IntToStr(iContagem);
         end;
end;

end.
