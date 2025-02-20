unit uFrmDesafio6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmDesafio6 = class(TForm)
    btnPrincipal: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrincipalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    iContadorBotoes: Integer;
    procedure BotaoNovoClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmDesafio6: TfrmDesafio6;

implementation

{$R *.dfm}

procedure TfrmDesafio6.BotaoNovoClick(Sender: TObject);
begin
     Showmessage('Botão número: ' + IntToStr((Sender as TButton).Tag));
end;

procedure TfrmDesafio6.btnPrincipalClick(Sender: TObject);
var
   NovoBotao: TButton;
begin
     Inc(iContadorBotoes);

     NovoBotao := TButton.Create(Self);
     NovoBotao.Parent := Self;
     NovoBotao.Caption := IntToStr(iContadorBotoes);
     NovoBotao.Left := 10 + (iContadorBotoes - 1) * 80;
     NovoBotao.Top := 50;
     NovoBotao.Tag := iContadorBotoes; // Armazenar o número do botão
     NovoBotao.OnClick := BotaoNovoClick; // Associar o evento de clique
end;

procedure TfrmDesafio6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TfrmDesafio6.FormCreate(Sender: TObject);
begin
     iContadorBotoes := 0;
end;

end.
