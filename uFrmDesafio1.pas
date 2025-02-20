unit uFrmDesafio1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmDesafio1 = class(TForm)
    btnRetornar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    edtSegundoMaior: TEdit;
    edtSomaPares: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRetornarClick(Sender: TObject);
  private
    { Private declarations }
    function SegundoMaiorSomaPares(const iNumeros: array of Integer; out iSegundoMaior: Integer; out iSomaPares: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  frmDesafio1: TfrmDesafio1;

implementation

{$R *.dfm}

procedure TfrmDesafio1.btnRetornarClick(Sender: TObject);
var
   iNumeros: array[0..5] of Integer;
   iSegundoMaior, iSomaPares: Integer;
   bSucesso: Boolean;
begin
     iNumeros[0] := 5;
     iNumeros[1] := 10;
     iNumeros[2] := 3;
     iNumeros[3] := 8;
     iNumeros[4] := 12;
     iNumeros[5] := 7;
     iNumeros[3] := 4;
     iNumeros[4] := 35;
     iNumeros[5] := 20;

     //Chama função para a retornar o segundo maior e a soma dos pares
     bSucesso := SegundoMaiorSomaPares(iNumeros, iSegundoMaior, iSomaPares);

     if bSucesso then
     begin
          edtSegundoMaior.Text := IntToStr(iSegundoMaior);
          edtSomaPares.Text := IntToStr(iSomaPares);
     end
     else
         begin
              Showmessage('Array inválido');
         end;
end;

procedure TfrmDesafio1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

function TfrmDesafio1.SegundoMaiorSomaPares(const iNumeros: array of Integer;
  out iSegundoMaior, iSomaPares: Integer): Boolean;
var
   iCont: Integer;
   iMaior, iTemp: Integer;
begin
     try
        iSegundoMaior := 0;
        iSomaPares := 0;
        iMaior := Low(Integer);
        iSegundoMaior := Low(Integer);

        if Length(iNumeros) < 2 then
        begin
             //Não encontrou o segundo maior
             Result := False;
             Exit;
        end;

        //For para encontrar o maior e o segundo maior
        for iCont := Low(iNumeros) to High(iNumeros) do
        begin
             iTemp := iNumeros[iCont];

             if iTemp > iMaior then
             begin
                  iSegundoMaior := iMaior;
                  iMaior := iTemp;
             end
             else
                 if (iTemp > iSegundoMaior) and (iTemp <> iMaior) then
                 begin
                      iSegundoMaior := iTemp;
                 end;

             if (iTemp mod 2) = 0 then
             begin
                  //Calcula a soma dos pares
                  iSomaPares := iSomaPares + iTemp;
             end;
        end;

        Result := True;
     except
           Result := False;
     end;
end;

end.
