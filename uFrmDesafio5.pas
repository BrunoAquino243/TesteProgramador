unit uFrmDesafio5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Math, System.Generics.Collections;

type
  TfrmDesafio5 = class(TForm)
    btnCalcular: TButton;
    edtCalculo: TEdit;
    Label1: TLabel;
    edtResultado: TEdit;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    function AvaliarExpressao(const sExpressao: string; out dResultado: Double): Boolean;
  public
    { Public declarations }
  end;

var
  frmDesafio5: TfrmDesafio5;

implementation

{$R *.dfm}

function TfrmDesafio5.AvaliarExpressao(const sExpressao: string;
  out dResultado: Double): Boolean;
var
   iCont, iParentesesAbertos, iPosicao: Integer;
   sExpressaoLimpa: string;
   pilhaOperadores: TStack<Char>;
   pilhaNumeros: TStack<Double>;

   function Precedencia(operador: Char): Integer;
   begin
        case operador of
             '+', '-': Result := 1;
             '*', '/': Result := 2;
             '^': Result := 3;
        else
            Result := 0;
        end;
   end;

   function AplicarOperador(operador: Char; operando2, operando1: Double): Double;
   begin
        case operador of
             '+': Result := operando1 + operando2;
             '-': Result := operando1 - operando2;
             '*': Result := operando1 * operando2;
             '/': begin
                       if operando2 = 0 then
                       begin
                            raise Exception.Create('Divisão por zero');
                       end;

                       Result := operando1 / operando2;
                  end;
             '^': Result := Power(operando1, operando2);
        else
            raise Exception.Create('Operador inválido: ' + operador);
        end;
   end;
begin
     try
        // Inicialização
        dResultado := 0;
        iParentesesAbertos := 0;
        pilhaOperadores := TStack<Char>.Create;
        pilhaNumeros := TStack<Double>.Create;
        sExpressaoLimpa := StringReplace(sExpressao, ' ', '', [rfReplaceAll]);

        try
           // Validar parênteses
           for iCont := 1 to Length(sExpressaoLimpa) do
           begin
                if sExpressaoLimpa[iCont] = '(' then
                begin
                     Inc(iParentesesAbertos)
                end
                else
                    if sExpressaoLimpa[iCont] = ')' then
                    begin
                         Dec(iParentesesAbertos);
                    end;

                if iParentesesAbertos < 0 then
                begin
                     Result := False;
                     Exit;
                end;
           end;

           if iParentesesAbertos <> 0 then
           begin
                Result := False;
                Exit;
           end;

           // Converter para notação polonesa inversa (RPN) e avaliar
           iCont := 1;
           while iCont <= Length(sExpressaoLimpa) do
           begin
                if sExpressaoLimpa[iCont] in ['0'..'9'] then
                begin
                     // Extrair número completo
                     iPosicao := iCont;
                     while (iPosicao <= Length(sExpressaoLimpa)) and (sExpressaoLimpa[iPosicao] in ['0'..'9', '.']) do
                     begin
                          Inc(iPosicao);
                     end;

                     pilhaNumeros.Push(StrToFloat(Copy(sExpressaoLimpa, iCont, iPosicao - iCont)));
                     iCont := iPosicao;
                end
                else
                    if sExpressaoLimpa[iCont] = '(' then
                    begin
                         pilhaOperadores.Push(sExpressaoLimpa[iCont]);
                         Inc(iCont);
                    end
                    else
                        if sExpressaoLimpa[iCont] = ')' then
                        begin
                             while (pilhaOperadores.Count > 0) and (pilhaOperadores.Peek <> '(') do
                             begin
                                  dResultado := AplicarOperador(pilhaOperadores.Pop, pilhaNumeros.Pop, pilhaNumeros.Pop);
                                  pilhaNumeros.Push(dResultado);
                             end;

                             pilhaOperadores.Pop; // Remover '('
                             Inc(iCont);
                        end
                        else
                            if sExpressaoLimpa[iCont] in ['+', '-', '*', '/', '^'] then
                            begin
                                 while (pilhaOperadores.Count > 0) and (Precedencia(sExpressaoLimpa[iCont]) <= Precedencia(pilhaOperadores.Peek)) do
                                 begin
                                      dResultado := AplicarOperador(pilhaOperadores.Pop, pilhaNumeros.Pop, pilhaNumeros.Pop);
                                      pilhaNumeros.Push(dResultado);
                                 end;

                                 pilhaOperadores.Push(sExpressaoLimpa[iCont]);
                                 Inc(iCont);
                            end
                            else
                                begin
                                     Result := False;
                                     Exit;
                                end;
           end;

           // Finalizar avaliação
           while pilhaOperadores.Count > 0 do
           begin
                dResultado := AplicarOperador(pilhaOperadores.Pop, pilhaNumeros.Pop, pilhaNumeros.Pop);
                pilhaNumeros.Push(dResultado);
           end;

           // Resultado final
           dResultado := pilhaNumeros.Pop;
           Result := True;
        except
              on E: Exception do
              begin
                   Result := False;
                   Exit;
              end;
        end;
     finally
            pilhaOperadores.Free;
            pilhaNumeros.Free;
     end;
end;

procedure TfrmDesafio5.btnCalcularClick(Sender: TObject);
var
   sExpressao: string;
   dResultado: Double;
   bSucesso: Boolean;
begin
     sExpressao := edtCalculo.Text;
     bSucesso := AvaliarExpressao(sExpressao, dResultado);

     if bSucesso then
     begin
          edtResultado.Text := FloatToStr(dResultado);
     end
     else
         begin
              Showmessage('Expressão inválida');
         end;
end;

procedure TfrmDesafio5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

end.
