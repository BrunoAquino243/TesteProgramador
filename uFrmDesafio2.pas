unit uFrmDesafio2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmDesafio2 = class(TForm)
    btnInverter: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edtFrase: TEdit;
    edtOrdemInversa: TEdit;
    edtQtdVogais: TEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInverterClick(Sender: TObject);
  private
    { Private declarations }
    function InverterStringEVogais(const sTexto: string; out iQuantidadeVogais: Integer): string;
  public
    { Public declarations }
  end;

var
  frmDesafio2: TfrmDesafio2;

implementation

{$R *.dfm}

procedure TfrmDesafio2.btnInverterClick(Sender: TObject);
var
   sTexto, sResultado: string;
   iQuantidadeVogais: Integer;
begin
     sTexto := edtFrase.Text;

     sResultado := InverterStringEVogais(sTexto, iQuantidadeVogais);

     edtOrdemInversa.Text := sResultado;
     edtQtdVogais.Text := IntToStr(iQuantidadeVogais);
end;

procedure TfrmDesafio2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

function TfrmDesafio2.InverterStringEVogais(const sTexto: string;
  out iQuantidadeVogais: Integer): string;
var
  iCont: Integer;
  sPalavra: string;
  sPalavrasInvertidas: TStringList;
  sTemp: string;
begin
  // Inicialização
  iQuantidadeVogais := 0;
  sPalavrasInvertidas := TStringList.Create;

  try
    sPalavra := '';

    for iCont := 1 to Length(sTexto) do
    begin
      // Se encontrar um espaço, adicionar a palavra à lista
      if (sTexto[iCont] = ' ') then
      begin
        if (sPalavra <> '') then
        begin
          sPalavrasInvertidas.Add(sPalavra);
          sPalavra := '';
        end;
      end
      else
      begin
        // Adicionar o caractere à palavra atual
        sPalavra := sPalavra + sTexto[iCont];
        // Contar vogais
        case sTexto[iCont] of
          'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U':
            Inc(iQuantidadeVogais);
        end;
      end;
    end;

    // Adicionar a última palavra, se houver
    if (sPalavra <> '') then
    begin
      sPalavrasInvertidas.Add(sPalavra);
    end;

    // Inverter a ordem das palavras manualmente
    for iCont := 0 to (sPalavrasInvertidas.Count - 1) div 2 do
    begin
      sTemp := sPalavrasInvertidas[iCont];
      sPalavrasInvertidas[iCont] := sPalavrasInvertidas[sPalavrasInvertidas.Count - 1 - iCont];
      sPalavrasInvertidas[sPalavrasInvertidas.Count - 1 - iCont] := sTemp;
    end;

    // Juntar as palavras invertidas em uma string
    Result := sPalavrasInvertidas.Text;
  finally
    sPalavrasInvertidas.Free;
  end;
end;

end.
