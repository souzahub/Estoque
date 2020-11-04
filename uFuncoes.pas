unit uFuncoes;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, StdCtrls,
   Db, Menus, Mask, Printers, WinProcs, OutLine, IniFiles, MaskUtils,jpeg;



//{$R *.DFM}

function TemStr( Const Variavel:String; Const Objeto:String ):Boolean;
function TiraStr( Const Variavel:String; Const Objeto:String ):String;
function StrZero( Const Variavel:String; Const Tamanho:Integer ):String;
function Preencher( Const Variavel:String; Const Tamanho:Integer; Const Conteudo:String ):String;
function Alinhar( Const Variavel:String; Const Tamanho:Integer; Const Forma:String ):String;
function ChecaCPF(CPF:String):Boolean;
function ChecaCGC(CGC:String):Boolean;
function extenso (valor: real): string;
function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
function MesExtenso( Data:TDateTime):String;
function DiaExtenso( Data:TDateTime):String;
function ExtraiMes( Data:TDateTime):Integer;
function ExtraiAno( Data:TDateTime):Integer;
function ExtraiDia( Data:TDateTime):Integer;
function IsData( VData:String) : boolean;
function ChecaIE(const InscEst: ShortString): Boolean;
function MapeaRede(Letra,Path,provedor:Pchar):String;
function AchaDVNossoNr( Const Agencia:String; Const TipoConta:String; Const NrConta:String; Const DVConta:String; NossoNr:String ):String;
function AchaDVNossoNrCB( NossoNr:String ):String;
function MontaChaveAcessoNFe( codUF: Integer; dtEmissao: TDateTime; CNPJ: String; Modelo, Serie, NumeroNF, TpEmis, Sequencial: Integer): String;
function Modulo11(Numero: String): String;
function LimpaCNPJ( cnpj: String): String;
function Alltrim(const Search: string): string;
function DecimalPonto(sValor: string): string;
function PegaCodigoUF(sUF: string): string;
function PegaUFCodigo(sCD: string): string;
function AchaSaldo( Conta:String ): Real;
function AchaSaldoClean( Conta:String;Origem:String): Real;
function AchaSaldoCleanAteFim( Conta:String;Origem:String; DTFim : TDateTime): Real;
function AchaSaldoAte( Conta:String; Data:TDateTime ): Real;
function AchaSaldoAteSemFechamento( Conta:String; Data:TDateTime; vZerar:String ): Real;
function AchaSaldoDoDia( Conta:String; Data:TDateTime ): Real;
function PasswordInputBox(const ACaption, APrompt:string): string;
function AchaNovoSequencial( vSequencia : Integer ) : Integer;
function LimparCamposGenerico(sForm:TForm):String;
function SubstituirStr (Text,oldstring,newstring:string):string;
function ConverteUF(sUF: string): string;
function CaptureScreenRect(Canvas : TCanvas; HandleOrig : THandle; SrcRect: TRect; X, Y : Integer):HDC;
function RemoverAcento(Key: Char): char;
function AchaSaldoAteFrota( Conta:String; Data:TDateTime ): Real;
function AchaSaldoPeriodoSemFechamento( Conta:String; Inicio:TDateTime; Fim:TDateTime ): Real;
function AchaSaldoPeriodoSemFechamentoClean( Conta:String; Origem:String; Inicio:TDateTime; Fim:TDateTime ): Real;
function AchaSaldoPeriodoSemFechamentoCleanSub( Conta:String; SubConta:String; Origem:String; SubOrigem:String; Inicio:TDateTime; Fim:TDateTime ): Real;


implementation
uses uDados;

function AchaSaldoPeriodoSemFechamento( Conta:String; Inicio:TDateTime; Fim:TDateTime ): Real;
begin
end;

function AchaSaldoPeriodoSemFechamentoClean( Conta:String; Origem:String; Inicio:TDateTime; Fim:TDateTime ): Real;
begin
end;

function AchaSaldoPeriodoSemFechamentoCleanSub( Conta:String; SubConta:String; Origem:String; SubOrigem:String; Inicio:TDateTime; Fim:TDateTime ): Real;
begin
end;


function AchaSaldoAteSemFechamento( Conta:String; Data:TDateTime; vZerar:String ): Real;
begin
end;

function AchaSaldoAteFrota( Conta:String; Data:TDateTime ): Real;
begin
end;


function RemoverAcento(Key: Char): char;
begin

    if (key in ['é','è','ê']) then

    begin

        Result := 'e';

    end

    else

    if (key in ['É','È','Ê']) then

    begin

        Result := 'E';

    end

    else

    if (key in ['á','à','ã','â']) then

    begin

        Result := 'a';

    end

    else

    if (key in ['Á','À','Ã','Â']) then

    begin

        Result := 'A';

    end

    else

    if (key in ['í','ì','Í','Ì','î','Î']) then

    begin

        Result := 'i';

    end

    else

    if (key in ['Í','Ì','Î']) then

    begin

        Result := 'I';

    end

    else

    if (key in ['ó','ò','õ','ô']) then

    begin

        Result := 'O';

    end

    else

    if (key in ['Ó','Ò','Õ','Ô']) then

    begin

        Result := 'O';

    end

    else

    if (key in ['ú','ù']) then

    begin

        Result := 'u';

    end

    else

    if (key in ['Ú','Ù']) then

    begin

        Result := 'U';

    end

    else

    if (key in ['ç']) then

    begin

        Result := 'c';

    end

    else

    if (key in ['Ç']) then

    begin

        Result := 'C';

    end

    else

        Result := Key;

end;

function CaptureScreenRect(Canvas : TCanvas; HandleOrig : THandle; SrcRect: TRect; X, Y : Integer):HDC;
var
  ScreenDC: HDC;
begin
  ScreenDC := GetDC( HandleOrig );
  try
    BitBlt(Canvas.Handle, X, Y, SrcRect.Right - SrcRect.Left, SrcRect.Bottom - SrcRect.Top, ScreenDC, SrcRect.Left, SrcRect.Top, SRCCOPY);
  finally
    ReleaseDC( 0, ScreenDC);
  end;
  result := ScreenDC;
end;


function SubstituirStr (Text,oldstring,newstring:string):string;
var atual, strtofind, originalstr:pchar;
  NewText:string; // ou widestring se texto for grande
  lenoldstring,lennewstring,m,index:integer;
begin //ReplaceStr
  NewText:=Text;
  originalstr:=pchar(Text);
  strtofind:=pchar(oldstring);
  lenoldstring:=length(oldstring);
  lennewstring:=length(newstring);
  Atual:=StrPos(OriginalStr,StrtoFind);
  index:=0;
  while Atual<>nil do
  begin //Atual<>nil
    m:=Atual - OriginalStr - index + 1;
    Delete(NewText,m,lenoldstring);
    Insert(newstring,NewText,m);
    inc(index,lenoldstring-lennewstring);
    Atual:=StrPos(Atual+lenoldstring,StrtoFind);
  end; //Atual<>nil
  Result:=NewText;
end; //ReplaceStr

function LimparCamposGenerico(sForm:TForm):String;
var
  i : integer;
begin

    for i:=0 to sForm.ComponentCount-1 do
    begin
      if sForm.Components[i] is TEdit then
          (sForm.Components[i] as TEdit).Clear;
      if sForm.Components[i] is TMemo then
          (sForm.Components[i] as TMemo).Clear;
      if sForm.Components[i] is TMaskEdit then
          (sForm.Components[i] as TMaskEdit).Clear;
      if sForm.Components[i] is TComboBox then
          (sForm.Components[i] as TComboBox).Text :='';
      if sForm.Components[i] is TImage then
        (sForm.Components[i] as TImage).Picture:=nil;
     end;
end;


function PasswordInputBox(const ACaption, APrompt:string): string;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
  Value: string;
  I: Integer;
  Buffer: array[0..51] of Char;
begin
  Result := '';
  Form := TForm.Create(Application);
  with Form do
  try
    Canvas.Font := Font;
    for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
    for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
    GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(DialogUnits));
    DialogUnits.X := DialogUnits.X div 52;
    BorderStyle := bsDialog;
    Caption := ACaption;
    ClientWidth := MulDiv(180, DialogUnits.X, 4);
    ClientHeight := MulDiv(63, DialogUnits.Y, 8);
    Position := poScreenCenter;
    Prompt := TLabel.Create(Form);
    with Prompt do
    begin
      Parent := Form;
      AutoSize := True;
      Left := MulDiv(8, DialogUnits.X, 4);
      Top := MulDiv(8, DialogUnits.Y, 8);
      Caption := APrompt;
    end;
    Edit := TEdit.Create(Form);
    with Edit do
    begin
      Parent := Form;
      Left := Prompt.Left;
      Top := MulDiv(19, DialogUnits.Y, 8);
      Width := MulDiv(164, DialogUnits.X, 4);
      MaxLength := 255;
      PasswordChar := '*';
      SelectAll;
    end;
    ButtonTop := MulDiv(41, DialogUnits.Y, 8);
    ButtonWidth := MulDiv(50, DialogUnits.X, 4);
    ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
    with TButton.Create(Form) do
    begin
      Parent := Form;
      Caption := 'OK';
      ModalResult := mrOk;
      Default := True;
      SetBounds(MulDiv(38, DialogUnits.X, 4),ButtonTop, ButtonWidth,ButtonHeight);
    end;
    with TButton.Create(Form) do
    begin
      Parent := Form;
      Caption := 'Cancelar';
      ModalResult := mrCancel;
      Cancel := True;
      SetBounds(MulDiv(92, DialogUnits.X, 4),ButtonTop, ButtonWidth,ButtonHeight);
    end;
    if ShowModal = mrOk then
    begin
      Value := Edit.Text;
      Result := Value;
    end;
  finally
    Form.Free;
    Form:=nil;
  end;
end;

function AchaNovoSequencial( vSequencia : Integer ) : Integer;
begin
end;

function AchaSaldo( Conta:String ): Real;
begin
end;

function AchaSaldoClean( Conta:String;Origem:String): Real;
begin
end;

function AchaSaldoCleanAteFim( Conta:String;Origem:String; DTFim : TDateTime): Real;
begin
end;

function AchaSaldoAte( Conta:String; Data:TDateTime ): Real;
begin
end;

function AchaSaldoDoDia( Conta:String; Data:TDateTime ): Real;
begin
end;

function PegaCodigoUF(sUF: string): string;
begin
  Result := sUF;
  if sUF = 'RO' then Result := '11';
  if sUF = 'AC' then Result := '12';
  if sUF = 'AM' then Result := '13';
  if sUF = 'RR' then Result := '14';
  if sUF = 'PA' then Result := '15';
  if sUF = 'AP' then Result := '16';
  if sUF = 'TO' then Result := '17';
  if sUF = 'MA' then Result := '21';
  if sUF = 'PI' then Result := '22';
  if sUF = 'CE' then Result := '23';
  if sUF = 'RN' then Result := '24';
  if sUF = 'PB' then Result := '25';
  if sUF = 'PE' then Result := '26';
  if sUF = 'AL' then Result := '27';
  if sUF = 'SE' then Result := '28';
  if sUF = 'BA' then Result := '29';
  if sUF = 'MG' then Result := '31';
  if sUF = 'ES' then Result := '32';
  if sUF = 'RJ' then Result := '33';
  if sUF = 'SP' then Result := '35';
  if sUF = 'PR' then Result := '41';
  if sUF = 'SC' then Result := '42';
  if sUF = 'RS' then Result := '43';
  if sUF = 'MS' then Result := '50';
  if sUF = 'MT' then Result := '51';
  if sUF = 'GO' then Result := '52';
  if sUF = 'DF' then Result := '53';
end;

function ConverteUF(sUF: string): string;
begin
  Result := sUF;
  if sUF = 'RO' then Result := 'RONDONIA';
  if sUF = 'AC' then Result := 'ACRE';
  if sUF = 'AM' then Result := 'AMAZONAS';
  if sUF = 'RR' then Result := 'RORAIMA';
  if sUF = 'PA' then Result := 'PARA';
  if sUF = 'AP' then Result := 'AMAPA';
  if sUF = 'TO' then Result := 'TOCANTIS';
  if sUF = 'MA' then Result := 'MATOGROSSO';
  if sUF = 'PI' then Result := 'PIAU';
  if sUF = 'CE' then Result := 'CEARA';
  if sUF = 'RN' then Result := 'RIO GRANDE DO NORTE';
  if sUF = 'PB' then Result := 'PARAIBA';
  if sUF = 'PE' then Result := 'PERNAMBUCO';
  if sUF = 'AL' then Result := 'ALAGOAS';
  if sUF = 'SE' then Result := 'SERGIPE';
  if sUF = 'BA' then Result := 'BAHIA';
  if sUF = 'MG' then Result := 'MINAS GERAIS';
  if sUF = 'ES' then Result := 'ESPIRITO SANTO';
  if sUF = 'RJ' then Result := 'RIO DE JANEIRO';
  if sUF = 'SP' then Result := 'SAO PAULO';
  if sUF = 'PR' then Result := 'PARANA';
  if sUF = 'SC' then Result := 'SANTA CATARINA';
  if sUF = 'RS' then Result := 'RIO GRANDE DO SUL';
  if sUF = 'MS' then Result := 'MATO GROSSO DO SUL';
  if sUF = 'MT' then Result := 'MATO GROSSO';
  if sUF = 'GO' then Result := 'GOIAS';
  if sUF = 'DF' then Result := 'DISTRITO FEDERAL';
end;

function PegaUFCodigo(sCD: string): string;
begin
  Result := sCD;
  if sCD = '11' then Result := 'RO';
  if sCD = '12' then Result := 'AC';
  if sCD = '13' then Result := 'AM';
  if sCD = '14' then Result := 'RR';
  if sCD = '15' then Result := 'PA';
  if sCD = '16' then Result := 'AP';
  if sCD = '17' then Result := 'TO';
  if sCD = '21' then Result := 'MA';
  if sCD = '22' then Result := 'PI';
  if sCD = '23' then Result := 'CE';
  if sCD = '24' then Result := 'RN';
  if sCD = '25' then Result := 'PB';
  if sCD = '26' then Result := 'PE';
  if sCD = '27' then Result := 'AL';
  if sCD = '28' then Result := 'SE';
  if sCD = '29' then Result := 'BA';
  if sCD = '31' then Result := 'MG';
  if sCD = '32' then Result := 'ES';
  if sCD = '33' then Result := 'RJ';
  if sCD = '35' then Result := 'SP';
  if sCD = '41' then Result := 'PR';
  if sCD = '42' then Result := 'SC';
  if sCD = '43' then Result := 'RS';
  if sCD = '50' then Result := 'MS';
  if sCD = '51' then Result := 'MT';
  if sCD = '52' then Result := 'GO';
  if sCD = '53' then Result := 'DF';
end;

///    MontaChaveAcesso
///    -------------------------------------------------------------------------
///    Parametros:
///    codUF         - codigo da Unidade e Federação do Município de acordo tabela IBGE.
///    dtEmissaso    - data de emissão da nota fiscal
///    CNPJ          - codigo CNPJ do emitente
///    Modelo        - Modelo da Nota Fiscal NF-e (55)
///    Serie         - codigo de serie da NFe
///    NumeroNF      - Número da Nota Fiscal
///    TpEmis        - Tipo Emissao 1 digitos
///    Sequencial    - Codigo sequencial ou randomico de 8 digitos
///    Result        = Chave de acesso

function MontaChaveAcessoNFe( codUF: Integer; dtEmissao: TDateTime; CNPJ: String; Modelo, Serie, NumeroNF, TpEmis, Sequencial: Integer): String;
var
  emissao : string[10];
  chave : string;
  CodigoNumerico : Integer;

begin
  emissao := formatdatetime('DD/MM/YY', dtEmissao);

  // Essa parte do código gera o Código Numérico (Aleatório)
//  Randomize;
//  CodigoNumerico := Random(9999999);

//  CodigoNumerico := (2 * StrToInt(FormatDateTime('ddmmyy', dtEmissao))) + NumeroNF;
//  strCodNumerico := Copy(strZero(CodigoNumerico,9), 1, 9);

  chave := IntToStr(codUF) + copy( emissao, 7,2) + copy(emissao,4,2) +
  LimpaCNPJ(CNPJ) + StrZero(IntToStr(Modelo),2) + StrZero(IntToStr(Serie),3) +
  StrZero(IntToStr(NumeroNF),9) + IntToStr(TpEmis) + StrZero(IntToStr(Sequencial),8);

  Result := chave + Modulo11(chave);
end;

  // Cálculo Modulo 11
function Modulo11(Numero: String): String;
var
  i, k : Integer;
  Soma : Integer;
  Digito : Integer;

begin
  Result := '';
  Try
    Soma := 0;
    k := 2;
    for i := Length(Numero) downto 1 do
      begin
        Soma := Soma + (StrToInt(Numero[i]) * k);
        inc(k);
        if k > 9 then
          k := 2;
      end;
    Digito := 11 - Soma mod 11;
    if Digito >= 10 then
      Digito := 0;
    Result := Result + Chr(Digito + Ord('0'));
  except
    Result := 'X';
  end;
end;

(* Essa função retira os pontos de valores numéricos e no lugar da vírgula coloca um ponto...*)
function DecimalPonto(sValor: string): string;
begin
  Result := StringReplace(sValor, '.', '',[rfReplaceAll]);
  Result := StringReplace(Result, ',', '.',[rfReplaceAll]);
end;

  // LimpaCNPJ (retira máscaras do CNPJ)
function LimpaCNPJ( cnpj: String): String;
begin
  Result := StringReplace(StringReplace(StringReplace( cnpj,
  '.','',[rfReplaceAll]),
  '-','',[rfReplaceAll]),
  '/','',[rfReplaceAll]);
end;

function Alltrim(const Search: string): string;
const
  BlackSpace = [#33..#126];
var
  Index: byte;

begin
  Index:=1;
  while (Index <= Length(Search)) and not (Search[Index] in BlackSpace) do
    begin
      Index:=Index + 1;
    end;
  Result:=Copy(Search, Index, 255);
  Index := Length(Result);
  while (Index > 0) and not (Result[Index] in BlackSpace) do
    begin
      Index:=Index - 1;
    end;
  Result := Copy(Result, 1, Index);
end;

function AchaDVNossoNrCB( NossoNr:String ):String;
var PesoNossoNr : String;
    Resto, SNossoNr : Real;
    x : Integer;
begin
   PesoNossoNr := '2765432765432';
   SNossoNr := 0;
   NossoNr := '09'+NossoNr;
   for x := 1 to 13 do
      SNossoNr := SNossoNr + (StrToInt( copy( NossoNr, x, 1 )) * StrToInt( copy( PesoNossoNr, x, 1 )));
   Resto := (((SNossoNR / 11) - Int( SNossoNr / 11 )))*10;
   if Resto <> Int( Resto ) then
      Resto := Int( Resto ) + 1
   else
      Resto := Int( Resto );
{   ShowMessage(FormatFloat('#,##0.00',SNOssoNr)+' - '+FormatFloat('#,##0.00',resto) );}
   if Resto < 0 then
      Resto := Resto * -1;
   if Int( Resto ) = 0 then
      Result := '0'
   else if Int( Resto ) = 1 then
      Result := 'P'
   else
      Result := FormatFloat( '#', 11 - Resto);

{     ShowMessage('DISTRIVAM: '+AchaDVNossoNr( '00000000001' ));
     ShowMessage('FRINENSE: '+AchaDVNossoNr( '0074', '06', '0000079', '2', '0000001' ));
}
end;

function AchaDVNossoNr( Const Agencia:String; Const TipoConta:String; Const NrConta:String; Const DVConta:String; NossoNr:String ):String;
var PesoAgencia, PesoTipoConta, PesoNrConta, PesoDVConta, PesoNossoNr : String;
    Resto, STotal, SAgencia, STipoConta, SNrConta, SDVConta, SNossoNr : Real;
    x : Integer;
begin
   PesoAgencia := '0197';
   PesoTipoConta := '31';
   PesoNrConta := '9731973';
   PesoDVConta := '1';
   PesoNossoNr := '9731973';
   SAgencia := 0;
   STipoConta := 0;
   SNrConta := 0;
   SDVConta := 0;
   SNossoNr := 0;
   for x := 1 to 4 do
      SAgencia := SAgencia + (StrToInt( copy( Agencia, x, 1 )) * StrToInt( copy( PesoAgencia, x, 1 )));
   for x := 1 to 2 do
      STipoConta := STipoConta + (StrToInt( copy( TipoConta, x, 1 )) * StrToInt( copy( PesoTipoConta, x, 1 )));
   for x := 1 to 7 do
      SNrConta := SNrConta + (StrToInt( copy( NrConta, x, 1 )) * StrToInt( copy( PesoNrConta, x, 1 )));
   SDVConta := SDVConta + (StrToInt( DVConta ) * StrToInt( PesoDVConta ));
   for x := 1 to 7 do
      SNossoNr := SNossoNr + (StrToInt( copy( NossoNr, x, 1 )) * StrToInt( copy( PesoNossoNr, x, 1 )));
   STotal := SAgencia + STipoConta + SNrConta + SDVConta + SNossoNr;
   Resto := (((STotal / 10) - Int( STotal / 10 )))*10;
   if Resto < 0 then
      Resto := Resto * -1;
   if Int( Resto ) = 0 then
      Result := '0'
   else
      Result := FormatFloat( '#', 10 - Resto);
{
     ShowMessage('DISTRIVAM: '+AchaDVNossoNr( '0074', '06', '0000080', '6', '0000001' ));
     ShowMessage('FRINENSE: '+AchaDVNossoNr( '0074', '06', '0000079', '2', '0000001' ));
}
end;

Function MapeaRede(Letra,Path,provedor:Pchar):String;
          // &nbspLocal = Letra atribuida a unidade
          // &nbspPath = &nbspCaminho do mapeamento
          // &nbspProvedor = Provedor da rede
          var
          NRW: TNetResource;
          begin
          with NRW do
               begin
               dwType := RESOURCETYPE_ANY;
               lpLocalName := Letra;
               lpRemoteName := Path;
               lpProvider := provedor;
               end;
          WNetAddConnection2(NRW, ' ', ' ', CONNECT_UPDATE_PROFILE);
          Case GetLastError() of
               5:    Result := 'Acesso Negado';
               66:   Result := 'Tipo de dispositivo local ou recurso inválido';
               67:   Result := 'Caminho não encontrado ou inválido';
               85:   Result := 'Este mapeamento já existe';
               86:   Result := 'Senha não encontrada ou inválida';
               1200: Result := 'Letra atribuída a unidade já é reservada ou inválida';
               1202: Result := 'Um mapeamento com esta letra já existe';
               1203: Result := 'Rede ou caminho não encontrado ou inválido';
               1204: Result := 'Provedor não encontrado ou inválido';
               1205: Result := 'Não foi possível abrir o perfil';
               1206: Result := 'Perfil do usuário não encontrado ou inválido';
               1208: Result := 'Ocorreu um Erro específico na rede';
               170:  Result := 'Rede congestionada';
               2138: Result := 'Rede não encontrada ou fora do ar'
          else
               Result := 'Unidade mapeada com sucesso';
          end;
end;

function ChecaIE(const InscEst: ShortString): Boolean;
var
  tmpInsc: ShortString;
  tmpSoma: ShortString;
  Calculo, Resto: Short;
  i, m, n: Byte;
  DV1, DV2: Byte;
begin
  Result := True;
  if InscEst = '' then Exit;

  // Cálculo do primeiro dígito verificador
  tmpInsc := Copy(InscEst, 1, 3) + '0' + Copy(InscEst, 4, 8);
  n := Length(tmpInsc);
  m := 1;
  tmpSoma := '';
  for i := 1 to n do begin
    tmpSoma := tmpSoma + IntToStr(StrToInt(tmpInsc[i]) * m);
    Inc(m);
    if m > 2 then m := 1;
  end;
  Calculo := 0;
  for i := 1 to Length(tmpSoma) do
    Calculo := Calculo + StrToInt(tmpSoma[i]);
  m := ((Calculo div 10) + 1) * 10;
  DV1 := m - Calculo;

  // Cálculo do primeiro dígito verificador
  tmpInsc := Copy(InscEst, 1, 3) + Copy(InscEst, 4, 8) + IntToStr(DV1);
  n := Length(tmpInsc);
  m := 2;
  Calculo := 0;
  for i := n downto 1 do begin
    Calculo := Calculo + (StrToInt(tmpInsc[i]) * m);
    Inc(m);
    if m > 11 then m := 2;
  end;
  Resto := Calculo mod 11;
  if (Resto = 0) or (Resto = 1) then
    DV2 := 0
  else
    DV2 := 11 - Resto;

  // compara os dígitos
  Result := (StrToInt(InscEst[12]) = DV1) and (StrToInt(InscEst[13]) = DV2);
  if not Result then
  begin
    ShowMessage('A Inscrição Estadual "' +
      FormatMaskText('999\.999\.999\/9999;0; ', InscEst) + '" é inválida.');
      Result := False;
  end;

end;

function IsData(VData : String) : boolean;
begin
    try
       StrToDate(VData);
       Result:=True;
    except
       Result:=False;
{       raise Exception.Create('Data inválida!');}
    end;
end;

function DiaExtenso( Data:TDateTime ):String;
var Dia : Integer;
begin
   Dia := DayOfWeek( Data );
   case Dia of
   1:Result := 'Domingo';
   2:Result := 'Segunda-Feira';
   3:Result := 'Terça-Feira';
   4:Result := 'Quarta-Feira';
   5:Result := 'Quinta-Feira';
   6:Result := 'Sexta-Feira';
   7:Result := 'Sábado';
   end;
end;

function MesExtenso( Data:TDateTime ):String;
var Ano, Mes, Dia : Word;
begin
   DecodeDate( Data, Ano, Mes, Dia );
   case Mes of
   1:Result := 'Janeiro';
   2:Result := 'Fevereiro';
   3:Result := 'Março';
   4:Result := 'Abril';
   5:Result := 'Maio';
   6:Result := 'Junho';
   7:Result := 'Julho';
   8:Result := 'Agosto';
   9:Result := 'Setembro';
   10:Result := 'Outubro';
   11:Result := 'Novembro';
   12:Result := 'Dezembro';
   end;
end;

function ExtraiMes( Data:TDateTime ):Integer;
var Ano, Mes, Dia : Word;
begin
   DecodeDate( Data, Ano, Mes, Dia );
   Result := Mes;
end;

function ExtraiAno( Data:TDateTime ):Integer;
var Ano, Mes, Dia : Word;
begin
   DecodeDate( Data, Ano, Mes, Dia );
   Result := Ano;
end;

function ExtraiDia( Data:TDateTime ):Integer;
var Ano, Mes, Dia : Word;
begin
   DecodeDate( Data, Ano, Mes, Dia );
   Result := Dia;
end;

function TemStr( Const Variavel:String; Const Objeto:String ):Boolean;
var
   x, y : integer;
begin
   For y:=1 to length( Objeto ) do
   begin
      For x:=1 to length( Variavel ) do
      begin
         if copy( Variavel, x, 1) = copy( objeto, y, 1 ) then
         begin
           Result := True;
           exit;
         end;
       end;
   end;
   Result := False;

end;

function TiraStr( Const Variavel:String; Const Objeto:String ):String;
var
   x : integer;
   NovVariavel : string;
begin
   NovVariavel := '';
   For x:=1 to length( Variavel ) do
      if copy( Variavel, x, length(objeto)) <> objeto then
        NovVariavel := NovVariavel + copy( Variavel, x, length(objeto));
   Result := (NovVariavel);

end;

function StrZero( Const Variavel:String; Const Tamanho:Integer ):String;
var
   x : integer;
   zeros : string;
begin
   zeros := '';
   For x:=1 to (Tamanho - length( Variavel )) do
       zeros := zeros + '0';
   Result := (Zeros+Variavel);

end;

function Preencher( Const Variavel:String; Const Tamanho:Integer; Const Conteudo:String ):String;
var
   x : integer;
   dados : String;
begin
   dados := '';
   For x:=1 to (Tamanho - length( Variavel )) do
       dados := dados + Conteudo;
   Result := (Variavel+Dados);
end;

function Alinhar( Const Variavel:String; Const Tamanho:Integer; Const Forma:String ):String;
var
   x : integer;
   dados : String;
begin
   dados := '';
   For x:=1 to (Tamanho - length( Variavel )) do
       dados := dados + ' ';
   if Forma = 'D' then {Direita}
      Result := (Dados+Variavel)
   else if Forma = 'E' then
      Result := (Variavel+Dados)
   else if Forma = 'C' then
      Result := (copy( Dados, 1, StrToInt(FormatFloat('#0',length( Dados )/ 2)) ) + Variavel + copy( Dados, 1, StrToInt(FormatFloat('#0',length( Dados )/ 2 ))));
end;

function ChecaCPF(CPF:String):Boolean;
var
   TextCPF:String;
   Laco, Soma, Digito1, Digito2:Integer;
begin
     Result := False;
     for Laco :=1 to Length(CPF) do
     if not (CPF[Laco] in ['0'..'9', '-', '.',' ']) then
        exit;
     TextCPF:= '';
     for Laco := 1 to Length(CPF) do
     if CPF[Laco] in ['0'..'9'] then
        TextCPF := TextCPF + CPF[Laco];
     if TextCPF = '' then Result := True;
     if Length(TextCPF) <> 11 then Exit;
     Soma := 0;
     for Laco := 1 to 9 do
         Soma := Soma + (StrToInt(TextCPF[Laco])*Laco);
     Digito1:= Soma mod 11;
     if Digito1 = 10 then Digito1 := 0;
     Soma := 0;
     For Laco := 1 to 8 do
         Soma := Soma + (StrToInt( TextCPF[Laco+1])*(Laco));
     Soma := Soma + (Digito1*9);
     Digito2 := Soma mod 11;
     if Digito2 = 10 then Digito2 := 0;
     if Digito1 = StrToInt(TextCPF[10]) then
        if Digito2 = StrToInt(TextCPF[11]) then
           Result := True;
end;

function ChecaCGC(CGC: String): Boolean;
var
   TextCGC: String;
   Laco, Soma, Digito1, Digito2 : Integer;
begin
   Result := False;
   for Laco := 1 to Length(CGC) do
      if not (CGC[Laco] in ['0'..'9', '-', '.', ' ', '/']) then
         exit;
      TextCGC:='';
      for Laco :=1 to Length(CGC) do
         if CGC[Laco] in ['0'..'9'] then
            TextCGC := TextCGC + CGC[ Laco ];
      if TextCGC = '' then Result := True;
      if Length( TextCGC) <> 14 then Exit;
      {Verifica o primeiro digito}
      Soma := StrToInt(TextCGC[01])*5 + StrToInt(TextCGC[02])*4+
      StrToInt(TextCGC[03])*3 + StrToInt(TextCGC[04])*2 +
      StrToInt(TextCGC[05])*9 + StrToInt(TextCGC[06])*8 +
      StrToInt(TextCGC[07])*7 + StrToInt(TextCGC[08])*6 +
      StrToInt(TextCGC[09])*5 + StrToInt(TextCGC[10])*4 +
      StrToInt(TextCGC[11])*3 + StrToInt(TextCGC[12])*2;
      Digito1 := Soma mod 11;
      if Digito1 <=1 then
         Digito1:=0
      else
         Digito1 := 11 - Digito1;
      {Verifica o segundo digito}
      Soma := StrToInt(TextCGC[01])*6 + StrToInt(TextCGC[02])*5 +
      StrToInt(TextCGC[03])*4 + StrToInt(TextCGC[04])*3 +
      StrToInt(TextCGC[05])*2 + StrToInt(TextCGC[06])*9 +
      StrToInt(TextCGC[07])*8 + StrToInt(TextCGC[08])*7 +
      StrToInt(TextCGC[09])*6 + StrToInt(TextCGC[10])*5 +
      StrToInt(TextCGC[11])*4 + StrToInt(TextCGC[12])*3 +
      Digito1*2;
      Digito2 := Soma mod 11;
      if Digito2 <= 1 then
         Digito2 := 0
      else
         Digito2 := 11 - Digito2;
      if StrToInt(TextCGC[13]) = Digito1 then
         if StrToInt(TextCGC[14]) = Digito2 then
            Result := True;
end;


function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
begin
 if Expressao
  then Result:=CasoVerdadeiro
  else Result:=CasoFalso;
end;

function extenso (valor: real): string;
var
 Centavos, Centena, Milhar, Milhao, Texto, msg: string;
const
 Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco',
                                    'Seis', 'Sete', 'Oito', 'Nove');
 Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze',
                               'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
 Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta',
                                   'Cinquenta', 'Sessenta', 'Setenta',
                                   'Oitenta', 'Noventa');
 Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos',
                                    'Quatrocentos', 'Quinhentos', 'Seiscentos',
                                    'Setecentos', 'Oitocentos', 'Novecentos');

function MiniExtenso (trio: string): string;
var
Unidade, Dezena, Centena: string;
begin
Unidade:='';
Dezena:='';
Centena:='';
if (trio[2]='1') and (trio[3]<>'0') then
 begin
  Unidade:=Dez[strtoint(trio[3])];
  Dezena:='';
 end
else
 begin
  if trio[2]<>'0' then Dezena:=Dezenas[strtoint(trio[2])];
  if trio[3]<>'0' then Unidade:=Unidades[strtoint(trio[3])];
 end;
if (trio[1]='1') and (Unidade='') and (Dezena='')
 then Centena:='Cem'
else
 if trio[1]<>'0'
  then Centena:=Centenas[strtoint(trio[1])]
  else Centena:='';
 Result:= Centena + ifs((Centena<>'') and ((Dezena<>'') or (Unidade<>'')), ' e ', '')
          + Dezena + ifs((Dezena<>'') and (Unidade<>''),' e ', '') + Unidade;
end;

begin
if (valor>999999.99) or (valor<0) then
 begin
  msg:='O valor está fora do intervalo permitido.';
  msg:=msg+'O número deve ser maior ou igual a zero e menor que 999.999,99.';
  msg:=msg+' Se não for corrigido o número não será escrito por extenso.';
  showmessage(msg);
  Result:='';
  exit;
 end;
if valor=0 then
 begin
  Result:='';
  Exit;
 end;
Texto:=formatfloat('000000.00',valor);
Milhar:=MiniExtenso(Copy(Texto,1,3));
Centena:=MiniExtenso(Copy(Texto,4,3));
Centavos:=MiniExtenso('0'+Copy(Texto,8,2));
Result:=Milhar;
if Milhar<>'' then
  if copy(texto,4,3)='000' then
   Result:=Result+' Mil Reais'
  else
   Result:=Result+' Mil, ';
{if (((copy(texto,4,2)='00') and (Milhar<>'')
    and (copy(texto,6,1)<>'0')) or (centavos=''))
    and (Centena<>'') then Result:=Result+' e ';}
if (Milhar+Centena <>'') then Result:=Result+Centena;
if (Milhar='') and (copy(texto,4,3)='001') then
  Result:=Result+' Real'
 else
  if (copy(texto,4,3)<>'000') then Result:=Result+' Reais';
if Centavos='' then
 begin
  Result:=Result+'.';
  Exit;
 end
else
 begin
  if Milhar+Centena='' then
    Result:=Centavos
   else
    Result:=Result+', e '+Centavos;
if (copy(texto,8,2)='01') and (Centavos<>'') then
  Result:=Result+' Centavo.'
 else
  Result:=Result+' Centavos.';
end;
end;

end.
