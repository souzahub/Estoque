unit uFormAutentificacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniDateTimePicker, uniLabel, uniButton,
  uniBitBtn, UniFSButton, uniGUIBaseClasses, uniEdit, UniFSMaskEdit,
  uniSweetAlert,DB, uniCheckBox, uniBasicGrid, uniDBGrid,
  uniDBDateTimePicker, uniDBEdit;

type
  TformAutentificacao = class(TUniForm)
    sbCopiar: TUniFSButton;
    sbGerar: TUniFSButton;
    sbAtivar: TUniFSButton;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniSweetAlert1: TUniSweetAlert;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniFSButton1: TUniFSButton;
    dsLicenca: TDataSource;
    UniDBGrid1: TUniDBGrid;
    edNome: TUniEdit;
    edResultado: TUniEdit;
    edIDSistema: TUniEdit;
    dtInicio: TUniDateTimePicker;
    dtFim: TUniDateTimePicker;
    sbAtivaEdita: TUniFSButton;
    procedure sbGerarClick(Sender: TObject);
    procedure sbCopiarClick(Sender: TObject);
    procedure sbAtivarClick(Sender: TObject);
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure UniFSButton1Click(Sender: TObject);
    procedure sbAtivaEditaClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
    xIncluindo, xDeletando, xEditando, xSoAlerta, xDestrava : Boolean;
  public
    { Public declarations }
  end;

function formAutentificacao: TformAutentificacao;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uDados, uFuncoes;

function formAutentificacao: TformAutentificacao;
begin
  Result := TformAutentificacao(UniMainModule.GetFormInstance(TformAutentificacao));
end;

procedure TformAutentificacao.sbAtivarClick(Sender: TObject);
begin
  xIncluindo := True;
  if dmDados.RDWAutentificacao.Locate('ID', StrToInt(edIDSistema.Text),[])  then
    begin
      xSoAlerta := True;
      UniSweetAlert1.Title := (' ATENÇÃO ');
      UniSweetAlert1.AlertType := atInfo;
      UniSweetAlert1.ShowCancelButton := False ;
      UniSweetAlert1.ConfirmButtonText := 'Ok';
      UniSweetAlert1.Show(' Código Já cadastrado para o Sistema: '+ ' ' +dmDados.RDWAutentificacaoNOME_USUARIO.Value);
      exit;
    end;

  if dmDados.RDWAutentificacao.Locate('CODIGO', edResultado.Text,[])  then
    begin
      xSoAlerta := True;
      UniSweetAlert1.Title := (' ATENÇÃO ');
      UniSweetAlert1.AlertType := atInfo;
      UniSweetAlert1.ShowCancelButton := False ;
      UniSweetAlert1.ConfirmButtonText := 'Ok';
      UniSweetAlert1.Show(' Chave Já cadastrado para o Sistema: '+ ' ' +dmDados.RDWAutentificacaoNOME_USUARIO.Value);
      exit;
    end;

//   //  usando  SweetAlert1
//  if edIDSistema.Text = '' then
//    begin
//      xSoAlerta := True;   // bloqueia alerta
//      UniSweetAlert1.Title := ('Atenção!');
//      UniSweetAlert1.AlertType := atInfo;
//      UniSweetAlert1.ShowCancelButton := True;
//      UniSweetAlert1.ShowConfirmButton := False;
//      UniSweetAlert1.CancelButtonColor := clMaroon;
//      UniSweetAlert1.CancelButtonText := 'OK';
//      UniSweetAlert1.Show('Informe o ID do Sistema');
//      exit;
//    end;

  //  usando  SweetAlert1
  if edNome.Text = '' then
    begin
      xSoAlerta := True;   // bloqueia alerta
      UniSweetAlert1.Title := ('Atenção!');
      UniSweetAlert1.AlertType := atInfo;
      UniSweetAlert1.ShowCancelButton := True;
      UniSweetAlert1.ShowConfirmButton := False;
      UniSweetAlert1.CancelButtonColor := clMaroon;
      UniSweetAlert1.CancelButtonText := 'OK';
      UniSweetAlert1.Show('Informe o Nome do Sistema');
      exit;
    end;

    //  usando  SweetAlert1
  if edResultado.Text = '' then
    begin
      xSoAlerta := True;   // bloqueia alerta
      UniSweetAlert1.Title := ('Atenção!');
      UniSweetAlert1.AlertType := atInfo;
      UniSweetAlert1.ShowCancelButton := True;
      UniSweetAlert1.ShowConfirmButton := False;
      UniSweetAlert1.CancelButtonColor := clMaroon;
      UniSweetAlert1.CancelButtonText := 'OK';
      UniSweetAlert1.Show('Informe o Código gerado');
      exit;
    end;

  xSoAlerta := False;

  UniSweetAlert1.Title := 'Ativar a Licença ?';
  UniSweetAlert1.AlertType := atQuestion;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.ConfirmButtonColor := clMaroon;
  UniSweetAlert1.CancelButtonColor := $00684E3E;
  UniSweetAlert1.CancelButtonText := 'Não';
  UniSweetAlert1.ShowConfirmButton := True;
  UniSweetAlert1.Show(edResultado.Text + '?');
  exit;

end;

procedure TformAutentificacao.sbCopiarClick(Sender: TObject);
begin
  edResultado.SelectAll; // SELECIONA TODO O CONTEUDO DENTRO DO EDIT
   // COPIA O VALOR DO EDIT
end;

procedure TformAutentificacao.sbGerarClick(Sender: TObject);
var
i:integer;
const
// Gera codigos aleatorios
str='1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ';
max=20;
begin
  edResultado.Text:='';
for i:=1 to max do
  begin
    edResultado.Text:=edResultado.Text+str[random(length(str))+1];
  end;

end;

procedure TformAutentificacao.UniFormCreate(Sender: TObject);
var vNOVOCODIGO : Integer;
begin
  // entra com o valor do ID + 1
  dmDados.RDWAutentificacao.Open;
  vNOVOCODIGO := dmDados.RDWAutentificacaoID.Value +1;
  edIDSistema.Text := IntToStr( vNOVOCODIGO );

  edNome.Text := '';
  dtInicio.Text := DateToStr( Date );
  dtFim.Text := DateToStr( Date );
  edResultado.Text := '';



end;

procedure TformAutentificacao.UniFSButton1Click(Sender: TObject);
begin
  sbAtivar.Visible := False;
  sbAtivaEdita.Visible := True;

  xSoAlerta := False;
  xIncluindo := False;
  xEditando := True;
  xDeletando := False;


  edIDSistema.Text := IntToStr(dmDados.RDWAutentificacaoID.Value);
  edResultado.Text := dmDados.RDWAutentificacaoCODIGO.Value;
  edNome.Text := dmDados.RDWAutentificacaoNOME_USUARIO.Value;
  dtInicio.DateTime := dmDados.RDWAutentificacaoDATA_INICIO.AsDateTime;
  dtFim.DateTime := dmDados.RDWAutentificacaoDATA_FIM.AsDateTime;


end;

procedure TformAutentificacao.sbAtivaEditaClick(Sender: TObject);
begin
  xEditando := True;

  //  usando  SweetAlert1
  if edNome.Text = '' then
    begin
      xSoAlerta := True;   // bloqueia alerta
      UniSweetAlert1.Title := ('Atenção!');
      UniSweetAlert1.AlertType := atInfo;
      UniSweetAlert1.ShowCancelButton := True;
      UniSweetAlert1.ShowConfirmButton := False;
      UniSweetAlert1.CancelButtonColor := clMaroon;
      UniSweetAlert1.CancelButtonText := 'OK';
      UniSweetAlert1.Show('Informe o Nome do Sistema');
      exit;
    end;

    //  usando  SweetAlert1
  if edResultado.Text = '' then
    begin
      xSoAlerta := True;   // bloqueia alerta
      UniSweetAlert1.Title := ('Atenção!');
      UniSweetAlert1.AlertType := atInfo;
      UniSweetAlert1.ShowCancelButton := True;
      UniSweetAlert1.ShowConfirmButton := False;
      UniSweetAlert1.CancelButtonColor := clMaroon;
      UniSweetAlert1.CancelButtonText := 'OK';
      UniSweetAlert1.Show('Informe o Código gerado');
      exit;
    end;

  xSoAlerta := False;

  UniSweetAlert1.Title := 'Ativar a Licença ?';
  UniSweetAlert1.AlertType := atQuestion;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.ConfirmButtonColor := clMaroon;
  UniSweetAlert1.CancelButtonColor := $00684E3E;
  UniSweetAlert1.CancelButtonText := 'Não';
  UniSweetAlert1.ShowConfirmButton := True;
  UniSweetAlert1.Show(edResultado.Text + '?');
  exit;

end;

procedure TformAutentificacao.UniSweetAlert1Confirm(Sender: TObject);
var xErro : String;
begin

if xSoAlerta = True then exit;

  if xIncluindo then

  begin
    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('insert into AUTENTICACAO  values (NULL,:vDATA_INICIO, :vDATA_FIM, :vCODIGO, :vID_IDENTIFICACAO, :vNOME_USUARIO )');
    // ID - NULL

    dmDados.RDWAuxiliar.Params[0].DataType := ftDateTime; // Data Inicio
    dmDados.RDWAuxiliar.Params[0].Value := dtInicio.Text ;

    dmDados.RDWAuxiliar.Params[1].DataType := ftDateTime; // Data fim
    dmDados.RDWAuxiliar.Params[1].Value := dtFim.Text ;

    dmDados.RDWAuxiliar.Params[2].DataType := ftString; // codigo gerado
    dmDados.RDWAuxiliar.Params[2].Value := edResultado.Text ;

    dmDados.RDWAuxiliar.Params[3].DataType := ftInteger; // ID Sistema
    dmDados.RDWAuxiliar.Params[3].Value := edIDSistema.Text ;

    dmDados.RDWAuxiliar.Params[4].DataType := ftString; // Nome do Sistema
    dmDados.RDWAuxiliar.Params[4].Value := edNome.Text;

    dmDados.RDWAuxiliar.ExecSQL( xErro );
    dmDados.RDWAutentificacao.Close();
    dmDados.RDWAutentificacao.Open();
    xIncluindo := False;
    Close;
  end;

  if xEditando then
  begin
    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('update AUTENTICACAO set DATA_INICIO=:vDATA_INICIO, DATA_FIM=:vDATA_FIM, CODIGO=:vCODIGO, ID_IDENTIFICACAO=:vID_IDENTIFICACAO, NOME_USUARIO=:vNOME_USUARIO where ID=:vID ');

    dmDados.RDWAuxiliar.Params[0].DataType := ftDateTime; // Data Inicio
    dmDados.RDWAuxiliar.Params[0].Value := dtInicio.Text ;

    dmDados.RDWAuxiliar.Params[1].DataType := ftDateTime; // Data fim
    dmDados.RDWAuxiliar.Params[1].Value := dtFim.Text ;

    dmDados.RDWAuxiliar.Params[2].DataType := ftString; // codigo gerado
    dmDados.RDWAuxiliar.Params[2].Value := edResultado.Text ;

    dmDados.RDWAuxiliar.Params[3].DataType := ftInteger; // ID Sistema
    dmDados.RDWAuxiliar.Params[3].Value := edIDSistema.Text ;

    dmDados.RDWAuxiliar.Params[4].DataType := ftString; // Nome do Sistema
    dmDados.RDWAuxiliar.Params[4].Value := edNome.Text;

    dmDados.RDWAuxiliar.Params[5].DataType := ftInteger; // ID
    dmDados.RDWAuxiliar.Params[5].Value := dmDados.RDWAutentificacaoID.Value;

    dmDados.RDWAuxiliar.ExecSQL( xErro );
    dmDados.RDWAutentificacao.Close();
    dmDados.RDWAutentificacao.Open();
    xEditando := False;
    Close;

   end;


end;

procedure TformAutentificacao.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
  xSoAlerta := False;
  xIncluindo := False;
  xEditando := False;
  xDeletando := False;
  sbAtivaEdita.Visible := False;
  sbAtivar.Visible := True;
end;

end.
