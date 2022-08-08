unit uFrEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniScreenMask, uniSweetAlert,
  uniGUIBaseClasses, uniImageList, uniPanel, uniButton, uniBitBtn,
  uniBasicGrid, uniDBGrid, uniDBNavigator, uniLabel, uniEdit,
  uniPageControl, Data.DB, UniFSButton, uniGridExporters, uniMemo,
  uniDBMemo, uniMultiItem, uniListBox, uniDBEdit, uniDBText,
  uFormTranferencia;

type
  TfrEstoque = class(TUniFrame)
    dsEstoque: TDataSource;
    PnUsuario: TUniPanel;
    PageCadastro: TUniPageControl;
    Tab1: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    UniNativeImageList1: TUniNativeImageList;
    UniGridHTMLExporter1: TUniGridHTMLExporter;
    UniGridExcelExporter1: TUniGridExcelExporter;
    UniPanel1: TUniPanel;
    UniLabel8: TUniLabel;
    sbExportHtml: TUniFSButton;
    sbExportExcel: TUniFSButton;
    dsInfo: TDataSource;
    pnInfo: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniListBox1: TUniListBox;
    UniFSButton2: TUniFSButton;
    TabEntrada: TUniTabSheet;
    TabSaida: TUniTabSheet;
    dsMovEntrada: TDataSource;
    dsMovSaida: TDataSource;
    UniDBGrid2: TUniDBGrid;
    UniDBGrid3: TUniDBGrid;
    btLimpar: TUniFSButton;
    EdPesquisar: TUniEdit;
    btPesquisar: TUniFSButton;
    pnPesquisar: TUniContainerPanel;
    cpEstoque: TUniContainerPanel;
    pn1: TUniPanel;
    edAtualEsto: TUniEdit;
    UniLabel31: TUniLabel;
    pn3: TUniContainerPanel;
    BtGrv: TUniFSButton;
    UniFSButton1: TUniFSButton;
    lbProdu: TUniLabel;
    UniLabel1: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    edNovo: TUniEdit;
    UniLabel4: TUniLabel;
    edUsado: TUniEdit;
    UniLabel5: TUniLabel;
    UniPanel22: TUniPanel;
    UniLabel2: TUniLabel;
    UniSimplePanel1: TUniSimplePanel;
    UniLabel3: TUniLabel;
    lbCod: TUniLabel;
    pnTranf: TUniContainerPanel;
    UniPanel4: TUniPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniFSButton3: TUniFSButton;
    UniFSButton4: TUniFSButton;
    UniLabel9: TUniLabel;
    UniContainerPanel4: TUniContainerPanel;
    UniPanel5: TUniPanel;
    UniLabel12: TUniLabel;
    UniSimplePanel2: TUniSimplePanel;
    UniLabel13: TUniLabel;
    UniLabel6: TUniLabel;
    UniDBText1: TUniDBText;
    UniLabel7: TUniLabel;
    dbEditLocalAntigo: TUniDBEdit;
    UniSweetAlert1: TUniSweetAlert;
    edLocal: TUniEdit;
    edCod: TUniDBText;
    procedure UniFrameCreate(Sender: TObject);
    procedure sbExportHtmlClick(Sender: TObject);
    procedure sbExportExcelClick(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniListBox1Click(Sender: TObject);
    procedure UniFSButton2Click(Sender: TObject);
    procedure TabEntradaBeforeActivate(Sender: TObject;
      var AllowActivate: Boolean);
    procedure TabSaidaBeforeActivate(Sender: TObject;
      var AllowActivate: Boolean);
    procedure Tab1BeforeActivate(Sender: TObject;
      var AllowActivate: Boolean);
    procedure buscadinamica;
    procedure btLimparClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure EdPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure UniFSButton1Click(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure BtGrvClick(Sender: TObject);
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure UniDBGrid2DblClick(Sender: TObject);
    procedure Tab1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    FUrl : string;
    procedure ImagemSeq; // imagem da sequencia
  public
    { Public declarations }
     xUltimoId : Integer;// ultimo Id
     xIncluindo, xDeletando, xEditando, xSoAlerta: Boolean;

  end;

implementation

{$R *.dfm}

uses uDados, Main, uFormInfo, ServerModule, uFormInfoEstoque,
  uFormInfoEntrada;

procedure TfrEstoque.ImagemSeq; // atualiza Lista e cria imagem em tempo de execução  e direciona para as imagens relacionadas de acordo com o numero de processo
var
  FFolder : string;
  Sr : TSearchRec;
  vItem : Integer;
  mFile, mExt, DestFolder : string;
  W, vColunaInicial : Integer;

begin
      DestFolder := 'Doc_'+IntToStr ( dmDados.RDWEstoqueID.Value );

      UniListBox1.Items.Clear;
      FFolder := UniServerModule.StartPath+'files\uploads\'+DestFolder+'\';  // destino para da imagens do processo

      FUrl := UniServerModule.FilesFolderURL+'Uploads/'+DestFolder+'\'; // destino para chamada do arquivo no form

      if SysUtils.FindFirst(FFolder+'*.*', faAnyFile, Sr) = 0 then
      begin
        repeat
          if Sr.Attr and faDirectory = 0 then
            UniListBox1.Items.Add(Sr.Name);
        until SysUtils.FindNext(sr) <> 0;
        SysUtils.FindClose(sr);
      end;


end;



procedure TfrEstoque.EdPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  btPesquisarClick(Sender);
end;

procedure TfrEstoque.BtGrvClick(Sender: TObject);
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

procedure TfrEstoque.btLimparClick(Sender: TObject);
begin

  EdPesquisar.Clear;
  buscadinamica;
  EdPesquisar.SetFocus;

end;

procedure TfrEstoque.btPesquisarClick(Sender: TObject);
begin
  buscadinamica;
end;

procedure TfrEstoque.buscadinamica;  // procedure de busca
begin

  dmDados.RDWEstoque.SQL.Clear;
  dmDados.RDWEstoque.SQL.Add('select * from ESTOQUE  where ');
  dmDados.RDWEstoque.SQL.Add('( ID LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );           // busca por codigo
  dmDados.RDWEstoque.SQL.Add('or PRODUTO LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );     // busca por nome
  dmDados.RDWEstoque.SQL.Add('or LOCALPRODUTO LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') ); // busca por localidade
  dmDados.RDWEstoque.SQL.Add(') order by PRODUTO');
  dmDados.RDWEstoque.Open;

end;

procedure TfrEstoque.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin

  if Column.Field = dmDados.RDWEstoqueTRANSF then
  begin
    dmDados.RDWMOVIENTRADA.Close;
    dmDados.RDWMOVIENTRADA.SQL.Clear;
    dmDados.RDWMOVIENTRADA.SQL.Add('select ENTRADA, FORNECEDOR, TOTALITENS, VALORTOTAL, ID, NPRODUTO, TIPO, CUSTO, CPRODUTO, LOCALPRODUTO, PATRIMONIO, OBS ');
    dmDados.RDWMOVIENTRADA.SQL.Add('from entrada where CPRODUTO=:vCPRODUTO order by ID desc');
    dmDados.RDWMOVIENTRADA.Params[0].DataType := ftString;
    dmDados.RDWMOVIENTRADA.Params[0].Value := dmDados.RDWEstoqueID.Value;
    dmDados.RDWMOVIENTRADA.Open;

    pnTranf.Visible := True;
    edLocal.Text := '';
    edLocal.SetFocus;
    xUltimoId := dmDados.RDWEstoqueID.Value ;
    exit;


//     formTranferencia.showModalN;
//     formTranferencia.lbProduto.Text :=  dmDados.RDWEstoquePRODUTO.Value;
//     formTranferencia.dbEditLocalAntigo.Text := dmDados.RDWMOVIENTRADALOCALPRODUTO.Value;
//     formTranferencia.edCod.Text := IntToStr( dmDados.RDWEstoqueID.Value );
  end;

end;

procedure TfrEstoque.UniDBGrid1DblClick(Sender: TObject);
begin
//exit;
//  xUltimoId := dmDados.RDWEstoqueID.Value ;
////
//  edUsado.SetFocus;
//  cpEstoque.Visible := True;
//
//  lbCod.Caption := IntToStr(dmDados.RDWEstoqueID.Value);
//  edAtualEsto.Text := IntToStr(dmDados.RDWESTOQUEESTOQUE.Value);
//  lbProdu.Caption := dmDados.RDWEstoquePRODUTO.Value;
//
//  edNovo.Text := '';
//  edUsado.Text := '';
end;

procedure TfrEstoque.UniDBGrid2DblClick(Sender: TObject);
begin
  formInfoEntrada.ShowModalN;
  exit;
end;

procedure TfrEstoque.UniFrameCreate(Sender: TObject);
begin
  btPesquisarClick(Sender);
  pnTranf.Visible := False;
  UniDBGrid1.Exporter.Enabled := True;

 // acesso apenas para administrador
  if MainForm.vADMIN then
    begin
//      sbExportExcel.Visible := True;
//      sbExportHtml.Visible := True;
      exit;
    end;

end;

procedure TfrEstoque.UniFSButton1Click(Sender: TObject);
begin
   pnTranf.Visible := False;
   dmDados.RDWEstoque.Cancel;
   Exit;

end;

procedure TfrEstoque.UniFSButton2Click(Sender: TObject);
begin

  pnInfo.Visible := False;

end;

procedure TfrEstoque.UniListBox1Click(Sender: TObject);
begin
  try
    UniSession.BrowserWindow(FUrl+UniListBox1.Items[UniListBox1.ItemIndex],0,0,''); // abre a imagem na outra aba do navegador
    pnInfo.Visible := False;
  except

  end;
end;

procedure TfrEstoque.UniSweetAlert1Confirm(Sender: TObject);
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

  dmDados.RDWEstoque.Locate('ID', xUltimoId, []);// volta para o ultimo Id
  pnTranf.Visible := False;
  MainForm.RegistraLog('SAIDA', 'ANTIGO LOCAL: '+dbEditLocalAntigo.Text );  // Registra log
  MainForm.RegistraLog('ENTRADA', 'NOVO LOCAL : '+edLocal.Text );  // Registra log
  exit;

end;

procedure TfrEstoque.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
  Exit;
end;

procedure TfrEstoque.sbExportHtmlClick(Sender: TObject);
begin

  UniDBGrid1.Exporter.Exporter := UniGridHTMLExporter1;
  UniDBGrid1.Exporter.ExportGrid;

end;

procedure TfrEstoque.Tab1AjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  dmDados.RDWEstoque.Locate('ID', xUltimoId, []);// volta para o ultimo Id
end;

procedure TfrEstoque.Tab1BeforeActivate(Sender: TObject;
  var AllowActivate: Boolean);
begin
  pnPesquisar.Visible := True;
  btLimpar.Visible := True;
//  dmDados.RDWEstoque.Close;
//  dmDados.RDWEstoque.Open;
  exit;

end;

procedure TfrEstoque.TabEntradaBeforeActivate(Sender: TObject;
  var AllowActivate: Boolean);
begin
    pnPesquisar.Visible := False;
    dmDados.RDWMOVIENTRADA.Close;
    dmDados.RDWMOVIENTRADA.SQL.Clear;
    dmDados.RDWMOVIENTRADA.SQL.Add('select ENTRADA, FORNECEDOR, TOTALITENS, VALORTOTAL, ID, NPRODUTO, TIPO, CUSTO, CPRODUTO, LOCALPRODUTO, PATRIMONIO, OBS ');
    dmDados.RDWMOVIENTRADA.SQL.Add('from entrada where CPRODUTO=:vCPRODUTO order by ID desc');
    dmDados.RDWMOVIENTRADA.Params[0].DataType := ftString;
    dmDados.RDWMOVIENTRADA.Params[0].Value := dmDados.RDWEstoqueID.Value;
    dmDados.RDWMOVIENTRADA.Open;
    Exit;
end;

procedure TfrEstoque.TabSaidaBeforeActivate(Sender: TObject;
  var AllowActivate: Boolean);
begin

  dmDados.RDWMOVISAIDA.Close;
  dmDados.RDWMOVISAIDA.SQL.Clear;
  dmDados.RDWMOVISAIDA.SQL.Add('select SAIDA, CPRODUTO, QUANTIDADE, VPRODUTO, SETOR, NPRODUTO, PATRIMONIO, ID, USUARIO ');
  dmDados.RDWMOVISAIDA.SQL.Add('from saida where CPRODUTO=:vCPRODUTO order by ID desc');
  dmDados.RDWMOVISAIDA.Params[0].DataType := ftString;
  dmDados.RDWMOVISAIDA.Params[0].Value := dmDados.RDWEstoqueID.Value;
  dmDados.RDWMOVISAIDA.Open;
  pnPesquisar.Visible := False;
  Exit;


end;

procedure TfrEstoque.sbExportExcelClick(Sender: TObject);
begin

  UniDBGrid1.Exporter.Exporter := UniGridExcelExporter1;
  UniDBGrid1.Exporter.ExportGrid;

end;

end.
