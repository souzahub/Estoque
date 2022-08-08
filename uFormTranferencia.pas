unit uFormTranferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, UniFSButton,
  uniDateTimePicker, uniLabel, uniPanel, uniGUIBaseClasses, uDados,
  frxClass, frxExportBaseDialog, frxExportPDF, uniSweetAlert, Data.DB,
  frxDBSet, frxGradient, uniRadioGroup, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniEdit, uniDBEdit, uniDBText,
  uniMemo, uniDBMemo, uniBasicGrid, uniDBGrid;

type
  TformTranferencia = class(TUniForm)
    cp: TUniContainerPanel;
    UniPanel22: TUniPanel;
    UniPanel4: TUniPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniFSButton3: TUniFSButton;
    UniFSButton4: TUniFSButton;
    UniLabel9: TUniLabel;
    UniLabel6: TUniLabel;
    lbProduto: TUniDBText;
    UniLabel7: TUniLabel;
    dsEstoque: TDataSource;
    UniSweetAlert1: TUniSweetAlert;
    UniLabel12: TUniLabel;
    UniSimplePanel2: TUniSimplePanel;
    UniLabel13: TUniLabel;
    edCod: TUniDBText;
    dbEditLocalAntigo: TUniEdit;
    edLocal: TUniEdit;
    procedure UniFSButton3Click(Sender: TObject);
    procedure UniFSButton4Click(Sender: TObject);
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }

    xIncluindo, xDeletando, xEditando, xSoAlerta: Boolean;

  public
    { Public declarations }

  end;

function formTranferencia: TformTranferencia;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, Main, uFrEstoque;

function formTranferencia: TformTranferencia;
begin
  Result := TformTranferencia(UniMainModule.GetFormInstance(TformTranferencia));
end;

procedure TformTranferencia.UniFormShow(Sender: TObject);
begin

 edLocal.Text := '';
 edLocal.setfocus;

end;

procedure TformTranferencia.UniFSButton3Click(Sender: TObject);
begin
 if  edLocal.Text = '' then
    begin
      xSoAlerta := True;   // bloqueia alerta
      UniSweetAlert1.Title := ('Campo Obrigatório!');
      UniSweetAlert1.AlertType := atInfo;
      UniSweetAlert1.ShowConfirmButton := True;
      UniSweetAlert1.ShowCancelButton := False;
      UniSweetAlert1.ConfirmButtonText := 'Ok';
      UniSweetAlert1.Show('Informe o Novo Local');
      exit;
    end;

     //  Salvando com SweetAlert1
    xSoAlerta := False;
    UniSweetAlert1.Title := 'Confirmar';
    UniSweetAlert1.AlertType := atQuestion;
    UniSweetAlert1.ShowConfirmButton := True;
    UniSweetAlert1.ConfirmButtonText := 'Sim';
    UniSweetAlert1.ShowCancelButton := True;
    UniSweetAlert1.CancelButtonText := 'Não';
    UniSweetAlert1.Show ('Nova Localidade ?');
end;

procedure TformTranferencia.UniFSButton4Click(Sender: TObject);
begin
   dmDados.RDWEstoque.Cancel;
   Close;
end;

procedure TformTranferencia.UniSweetAlert1Confirm(Sender: TObject);
var
xErro : string;
begin
  if xSoAlerta = True then exit;
  dmDados.RDWAuxiliar.Close;
  dmDados.RDWAuxiliar.SQL.Clear;
  dmDados.RDWAuxiliar.SQL.Add('update ESTOQUE set LOCALPRODUTO=:vLOCALPRODUTO where ID=:vID');

  dmDados.RDWAuxiliar.Params[0].DataType := ftString;
  dmDados.RDWAuxiliar.Params[0].Value := edLocal.Text;

  dmDados.RDWAuxiliar.Params[1].DataType := ftInteger;
  dmDados.RDWAuxiliar.Params[1].Value := dmDados.RDWEstoqueID.Value;

  dmDados.RDWAuxiliar.ExecSQL( xErro );

  dmDados.RDWEstoque.Close;
  dmDados.RDWEstoque.Open;

  MainForm.RegistraLog('SAIDA', 'ANTIGO LOCAL: '+dbEditLocalAntigo.Text );  // Registra log
  MainForm.RegistraLog('ENTRADA', 'NOVO LOCAL : '+edLocal.Text );  // Registra log

  Close;
  dmDados.RDWEstoque.Locate('ID', TfrEstoque(MainForm.FindComponent('frEstoque')).xUltimoId, []);// volta para o ultimo Id

//  exit;

end;

procedure TformTranferencia.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin

   xIncluindo := False;
   xDeletando := False;
   xEditando := False;
   xSoAlerta := False;
   Exit;

end;

end.
