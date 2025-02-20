unit uFrmDesafio4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmDesafio4 = class(TForm)
    btnExibir: TButton;
    edtIdade: TEdit;
    Label2: TLabel;
    edtNome: TEdit;
    Label1: TLabel;
    edtFormatados: TEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExibirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TPessoa = class
  private
    FNome: string;
    FIdade: Integer;
    procedure SetNome(const Value: string);
    procedure SetIdade(const Value: Integer);
    function GetNome: string;
    function GetIdade: Integer;
  public
    property Nome: string read GetNome write SetNome;
    property Idade: Integer read GetIdade write SetIdade;
    function ExibirInfo: string;
  end;

var
  frmDesafio4: TfrmDesafio4;

implementation

{$R *.dfm}

procedure TfrmDesafio4.btnExibirClick(Sender: TObject);
var
  pessoa: TPessoa;
begin
     pessoa := TPessoa.Create;

     try
        pessoa.Nome := edtNome.Text;
        pessoa.Idade := StrToInt(edtIdade.Text);

        edtFormatados.Text := pessoa.ExibirInfo;
     finally
            pessoa.Free;
     end;
end;

procedure TfrmDesafio4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

{ TPessoa }

function TPessoa.ExibirInfo: string;
begin
     Result := 'Nome: ' + Nome + ', Idade: ' + IntToStr(Idade);
end;

function TPessoa.GetIdade: Integer;
begin
     Result := FIdade;
end;

function TPessoa.GetNome: string;
begin
     Result := FNome;
end;

procedure TPessoa.SetIdade(const Value: Integer);
begin
     FIdade := Value;
end;

procedure TPessoa.SetNome(const Value: string);
begin
     FNome := Value;
end;

end.
