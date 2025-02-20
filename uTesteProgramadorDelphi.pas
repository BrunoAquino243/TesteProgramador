unit uTesteProgramadorDelphi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmTesteProgramadorDelphi = class(TForm)
    btnDesafio1: TButton;
    btnDesafio2: TButton;
    btnDesafio3: TButton;
    btnDesafio4: TButton;
    btnDesafio5: TButton;
    btnDesafio6: TButton;
    procedure btnDesafio1Click(Sender: TObject);
    procedure btnDesafio2Click(Sender: TObject);
    procedure btnDesafio3Click(Sender: TObject);
    procedure btnDesafio4Click(Sender: TObject);
    procedure btnDesafio5Click(Sender: TObject);
    procedure btnDesafio6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTesteProgramadorDelphi: TfrmTesteProgramadorDelphi;

implementation

{$R *.dfm}

uses uFrmDesafio1, uFrmDesafio2, uFrmDesafio3, uFrmDesafio4, uFrmDesafio5,
  uFrmDesafio6;

procedure TfrmTesteProgramadorDelphi.btnDesafio1Click(Sender: TObject);
var
   desafio1: TfrmDesafio1;
begin
     desafio1 := TfrmDesafio1.Create(Self);

     try
        desafio1.Show;
     except
           desafio1.Free;
     end;
end;

procedure TfrmTesteProgramadorDelphi.btnDesafio2Click(Sender: TObject);
var
   desafio2: TfrmDesafio2;
begin
     desafio2 := TfrmDesafio2.Create(Self);

     try
        desafio2.Show;
     except
           desafio2.Free;
     end;
end;

procedure TfrmTesteProgramadorDelphi.btnDesafio3Click(Sender: TObject);
var
   desafio3: TfrmDesafio3;
begin
     desafio3 := TfrmDesafio3.Create(Self);

     try
        desafio3.Show;
     except
           desafio3.Free;
     end;
end;

procedure TfrmTesteProgramadorDelphi.btnDesafio4Click(Sender: TObject);
var
   desafio4: TfrmDesafio4;
begin
     desafio4 := TfrmDesafio4.Create(Self);

     try
        desafio4.Show;
     except
           desafio4.Free;
     end;
end;

procedure TfrmTesteProgramadorDelphi.btnDesafio5Click(Sender: TObject);
var
   desafio5: TfrmDesafio5;
begin
     desafio5 := TfrmDesafio5.Create(Self);

     try
        desafio5.Show;
     except
           desafio5.Free;
     end;
end;

procedure TfrmTesteProgramadorDelphi.btnDesafio6Click(Sender: TObject);
var
   desafio6: TfrmDesafio6;
begin
     desafio6 := TfrmDesafio6.Create(Self);

     try
        desafio6.Show;
     except
           desafio6.Free;
     end;
end;

end.
