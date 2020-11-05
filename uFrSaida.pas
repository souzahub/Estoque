unit uFrSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniImageList, uniEdit,
  uniScrollBox, uniPanel, uniButton, uniBitBtn, uniLabel, uniRadioGroup,
  uniSpinEdit, uniDateTimePicker, uniMultiItem, uniComboBox, uniSweetAlert,
  uniBasicGrid, uniDBGrid, uniDBNavigator, uniPageControl, Data.DB,
  frxClass, frxDBSet, frxGradient, frxExportBaseDialog, frxExportPDF,
  Vcl.Buttons, UniFSiGrowl, UniFSButton, UniFSToast, uniSyntaxEditorBase,
  uniSyntaxEditorEx;

type
  TfraSaida = class(TUniFrame)
    dsSaida: TDataSource;
    PnUsuario: TUniPanel;
    PageCadastro: TUniPageControl;
    Tab1: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    Tab2: TUniTabSheet;
    UniScrollBox2: TUniScrollBox;
    UniNativeImageList1: TUniNativeImageList;
    UniSweetAlert1: TUniSweetAlert;
    frxDBSaida: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxGradientObject1: TfrxGradientObject;
    FSiGrowl: TUniFSiGrowl;
    UniPanel5: TUniPanel;
    EdPesquisar: TUniEdit;
    BtCan: TUniFSButton;
    BtGrv: TUniFSButton;
    BtInc: TUniFSButton;
    Toast: TUniFSToast;
    UniPanel3: TUniPanel;
    edDataSaida: TUniDateTimePicker;
    lbSaida: TUniLabel;
    uPn1: TUniPanel;
    edCodProduto: TUniEdit;
    lbCodProduto: TUniLabel;
    lbProd: TUniLabel;
    edProd: TUniEdit;
    btCliente: TUniBitBtn;
    lbProduto: TUniLabel;
    seQuantidade: TUniSpinEdit;
    lbQuantidade: TUniLabel;
    UniLabel2: TUniLabel;
    edValoProduto: TUniFormattedNumberEdit;
    cbSetor: TUniComboBox;
    UniLabel6: TUniLabel;
    edNome: TUniEdit;
    UniLabel3: TUniLabel;
    uniRGTipo: TUniRadioGroup;
    lbEstoque: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniPanel1: TUniPanel;
    edVaTotal: TUniLabel;
    UniPanel2: TUniPanel;
    lbEstoqueNovo: TUniLabel;
    UniPanel4: TUniPanel;
    lbEstoqueUsado: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel1: TUniLabel;
    procedure btClienteClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure uniRGTipoClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure BtIncClick(Sender: TObject);
    procedure BtGrvClick(Sender: TObject);
    procedure BtCanClick(Sender: TObject);
    procedure EdPesquisarChange(Sender: TObject);
  private
     xIncluindo, xDeletando, xEditando, xSoAlerta, xGrupo : Boolean;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uFormBuscaProduto, Main, uDados, Mainm, uFuncoes, MainModule,
  relatFornec, ServerModule;



procedure TfraSaida.BtCanClick(Sender: TObject);
begin

  EdPesquisar.Visible := True;
  dmDados.RDWSaida.Cancel;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
  PageCadastro.Pages[0].TabVisible := True ;
  PageCadastro.Pages[1].TabVisible := False ;

  // Visualizando Botao do Crud
  BtInc.Enabled := True;
  BtGrv.Enabled := False;
  BtCan.Enabled := False;
  EdPesquisar.Clear;
  dmDados.RDWSaida.Close();
  dmDados.RDWSaida.Open();

end;

procedure TfraSaida.btClienteClick(Sender: TObject);
begin
if uniRGTipo.itemIndex = 0 then
  begin
    MainForm.vModuloAtual := 2 ; // busca tabela novos
    formBuscaProduto.ShowModal ;
    TfraSaida(MainForm.FindComponent('fraSaida')).lbProduto.Visible := True ; // enterage com frame ( deixa visivel o label do produto)
  end;
  seQuantidade.Value := 0 ;
end;

procedure TfraSaida.BtGrvClick(Sender: TObject);
begin

  EdPesquisar.Visible := True;
  //  usando  SweetAlert1
  if edCodProduto.Text = '' then
    begin
      xSoAlerta := True;   // bloqueia alerta
      UniSweetAlert1.Title := ('Produto Obrigatório!');
      UniSweetAlert1.AlertType := atInfo;
      UniSweetAlert1.ShowCancelButton := True;
      UniSweetAlert1.CancelButtonColor := clMaroon;
      UniSweetAlert1.ShowConfirmButton := False;
      UniSweetAlert1.CancelButtonText := 'OK';
      UniSweetAlert1.Show('selecione o Produto');
      exit;
    end;


  if uniRGTipo.ItemIndex = 0 then  // estoque novo
  begin
    if  lbEstoqueNovo.Text = '0' then
      begin
        xSoAlerta := True;   // bloqueia alerta
        UniSweetAlert1.Title := ('ATENÇÃO!');
        UniSweetAlert1.AlertType := atInfo;
        UniSweetAlert1.ShowCancelButton := True;
        UniSweetAlert1.ShowConfirmButton := False;
        UniSweetAlert1.CancelButtonColor := clMaroon;
        UniSweetAlert1.CancelButtonText := 'OK';
        UniSweetAlert1.Show(' Estoque Novo (Zerado)');
        exit;
      end ;
  end;

  if uniRGTipo.ItemIndex = 1 then  // estoque Usado
  begin
    if lbEstoqueUsado.Text = '0' then
    begin
      xSoAlerta := True;   // bloqueia alerta
      UniSweetAlert1.Title := ('ATENÇÃO!');
      UniSweetAlert1.AlertType := atInfo;
      UniSweetAlert1.ShowCancelButton := True;
      UniSweetAlert1.ShowConfirmButton := False;
      UniSweetAlert1.CancelButtonColor := clMaroon;
      UniSweetAlert1.CancelButtonText := 'OK';
      UniSweetAlert1.Show('Estoque Usado (Zerado)');
      exit;
    end ;
  end;

   //  usando  SweetAlert1
  if seQuantidade.Value = 0 then
  begin
  xSoAlerta := True;   // bloqueia alerta
  UniSweetAlert1.Title := ('Atenção!');
  UniSweetAlert1.AlertType := atInfo;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.ShowConfirmButton := False;
  UniSweetAlert1.CancelButtonColor := clMaroon;
  UniSweetAlert1.CancelButtonText := 'OK';
  UniSweetAlert1.Show('Quantidade não poder ser 0');
  exit;
  end;

  if uniRGTipo.ItemIndex = 0 then  // estoque novo
  begin
     if seQuantidade.Value > StrToInt( lbEstoqueNovo.Text ) then
     begin
      xSoAlerta := True;   // bloqueia alerta
      UniSweetAlert1.Title := ('ATENÇÃO!');
      UniSweetAlert1.AlertType := atInfo;
      UniSweetAlert1.ShowCancelButton := True;
      UniSweetAlert1.ShowConfirmButton := False;
      UniSweetAlert1.CancelButtonColor := clMaroon;
      UniSweetAlert1.CancelButtonText := 'OK';
      UniSweetAlert1.Show(' Quantidade de saída maior que o saldo em estoque novo');
      exit;
     end;
  end
   else
   begin
     if seQuantidade.Value > StrToInt( lbEstoqueUsado.Text ) then   // checa se o saldo estar maior que o saldo
     begin
      xSoAlerta := True;   // bloqueia alerta
      UniSweetAlert1.Title := ('ATENÇÃO!');
      UniSweetAlert1.AlertType := atInfo;
      UniSweetAlert1.ShowCancelButton := True;
      UniSweetAlert1.ShowConfirmButton := False;
      UniSweetAlert1.CancelButtonColor := clMaroon;
      UniSweetAlert1.CancelButtonText := 'OK';
      UniSweetAlert1.Show(' Quantidade de saída maior que o saldo em estoque de usado');
      exit;
     end;
   end;

  //  Salvando com SweetAlert1
  xIncluindo := True;
  xSoAlerta := False;
  UniSweetAlert1.Title := 'Confirmar a Saida do Produto:';
  UniSweetAlert1.AlertType := atQuestion;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.ConfirmButtonColor := clMaroon;
  UniSweetAlert1.CancelButtonColor := $00684E3E;
  UniSweetAlert1.CancelButtonText := 'Não';
  UniSweetAlert1.ShowConfirmButton := True;
  UniSweetAlert1.Show( lbProduto.Text );

  BtInc.Enabled := True;
  BtGrv.Enabled := False;
  BtCan.Enabled := False;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
  PageCadastro.Pages[0].TabVisible := True ;
  PageCadastro.Pages[1].TabVisible := False ;

end;

procedure TfraSaida.BtIncClick(Sender: TObject);
begin

  EdPesquisar.Visible := False;
  xIncluindo := True;
  xEditando := False;
  xDeletando := False;
  //UniDBComboBox1v:= 0;
  PageCadastro.ActivePage := Tab2 ;
  // Visualizando a Tab2
  PageCadastro.Pages[0].TabVisible := False ;
  PageCadastro.Pages[1].TabVisible := Visible ;
  // Visualizando Botao do Crud
  BtInc.Enabled := False;
  BtGrv.Enabled := True;
  BtCan.Enabled := True;

  edDataSaida.Text := DateToStr( Date );  // entra com a data do dia
  edVaTotal.Text :='';
  lbEstoqueNovo.Text :='';
  lbEstoqueUsado.Text :=' ';
  edCodProduto.Text :='';
  lbProduto.Text := '';
  edValoProduto.Text := '0,00' ;
  seQuantidade.Value := 0 ;
  cbSetor.ItemIndex := 0;
  uniRGTipo.ItemIndex := 0;
  edNome.Text := '';

end;

procedure TfraSaida.EdPesquisarChange(Sender: TObject);
begin

  // pesquisa dinamica na tabela Usuario
  dmDados.RDWSaida.SQL.Clear;
  dmDados.RDWSaida.SQL.Add('select * from SAIDA  where');
  dmDados.RDWSaida.SQL.Add('(NPRODUTO LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWSaida.SQL.Add('or CPRODUTO LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWSaida.SQL.Add(')order by ID desc ');
  dmDados.RDWSaida.Open;

end;

procedure TfraSaida.UniBitBtn1Click(Sender: TObject);
var
  FName, PDF, ArqPDF:String;
begin

//  FName := ExtractFileDir(Application.ExeName)+'\reports\relconslivros.fr3';
//  PDF := ExtractFileDir(Application.ExeName)+'\reports\relconslivros.pdf';

  frxReport1.LoadFromFile(UniServerModule.FilesFolderPath+'relatorio\recibo.fr3'); // seleciona o Caminho desejado para a impressao

// Direciona para cada Fornecedor específico
  dmDados.relatSaida.Close;
  dmDados.relatSaida.SQL.Clear;
  dmDados.relatSaida.SQL.Add('select * from SAIDA');
  dmDados.relatSaida.SQL.Add('where ID=:vID');
  dmDados.relatSaida.Params[0].DataType := ftInteger;
  dmDados.relatSaida.Params[0].Value := dmDados.RDWSaidaID.Value;
  dmDados.relatSaida.Open;

  frxReport1.PrepareReport(True);
  ArqPDF := 'saida_'+FormatDateTime('hhmmss.zzz',Now)+'.pdf'; // salva o arquivo com a hora do computador
  frxPDFExport1.FileName := ArqPDF;
  frxPDFExport1.DefaultPath := UniServerModule.LocalCachePath;
  try
    frxPDFExport1.ShowDialog := false;
    frxPDFExport1.ShowProgress := False;
    frxReport1.Export(Self.frxPDFExport1);
    frxReport1.PreviewPages.SaveToFile(ArqPDF);
//    linha abaixo é para abrir o relatorio em formulario
    formRelatFornec.URLRelatorios.URL := UniServerModule.LocalCacheURL+ArqPDF;
    formRelatFornec.ShowModal;

//    aqui é associado o FastRaport do arquivo .FR3 especifico para dentro do URL Frame que esta dentro de uma ABA no page control
//    TfrRelatorioEstoque(MainForm.FindComponent('frRelatorioEstoque')).URLRelatorios.URL := UniServerModule.LocalCacheURL+ArqPDF;
  Except
    ShowMessage('ERRO DURANTE A IMPRESSAO.');
  end;

      try
         DeleteFile(  ArqPDF );
      except

      end;

//     UniURLFrame1.Visible := False;

end;


procedure TfraSaida.UniDBGrid1CellClick(Column: TUniDBGridColumn);
var
  FName, PDF, ArqPDF:String;
begin
   if Column.Field = dmDados.RDWSaidaID then
     begin
      frxReport1.LoadFromFile(UniServerModule.FilesFolderPath+'relatorio\recibo.fr3'); // seleciona o Caminho desejado para a impressao
    // Direciona para cada Fornecedor específico
      dmDados.relatSaida.Close;
      dmDados.relatSaida.SQL.Clear;
      dmDados.relatSaida.SQL.Add('select * from SAIDA');
      dmDados.relatSaida.SQL.Add('where ID=:vID');
      dmDados.relatSaida.Params[0].DataType := ftInteger;
      dmDados.relatSaida.Params[0].Value := dmDados.RDWSaidaID.Value;
      dmDados.relatSaida.Open;

      frxReport1.PrepareReport(True);
      ArqPDF := 'saida_'+FormatDateTime('hhmmss.zzz',Now)+'.pdf'; // salva o arquivo com a hora do computador
      frxPDFExport1.FileName := ArqPDF;
      frxPDFExport1.DefaultPath := UniServerModule.LocalCachePath;
      try
        frxPDFExport1.ShowDialog := false;
        frxPDFExport1.ShowProgress := False;
        frxReport1.Export(Self.frxPDFExport1);
        frxReport1.PreviewPages.SaveToFile(ArqPDF);
    //    linha abaixo é para abrir o relatorio em formulario
        formRelatFornec.URLRelatorios.URL := UniServerModule.LocalCacheURL+ArqPDF;
        formRelatFornec.ShowModal;
    //    aqui é associado o FastRaport do arquivo .FR3 especifico para dentro do URL Frame que esta dentro de uma ABA no page control
    //    TfrRelatorioEstoque(MainForm.FindComponent('frRelatorioEstoque')).URLRelatorios.URL := UniServerModule.LocalCacheURL+ArqPDF;
      Except
//        DeleteFile( ArqPDF );
        ShowMessage('ERRO DURANTE A IMPRESSAO.');
      end;

      try
        DeleteFile( ArqPDF );
      except

      end;

   end;


end;


procedure TfraSaida.UniFrameCreate(Sender: TObject);
begin
  dmDados.RDWSaida.Open;
  dmDados.RDWEstoque.Open;
  PageCadastro.Pages[0].TabVisible := True  ;
  PageCadastro.Pages[1].TabVisible := False ;
  BtInc.Enabled := True;
  BtGrv.Enabled := False;
  BtCan.Enabled := False;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
end;

procedure TfraSaida.uniRGTipoClick(Sender: TObject);
begin
  seQuantidade.Value := 0;
end;

procedure TfraSaida.UniSweetAlert1Confirm(Sender: TObject);
var xErro : String;
vESTOQUENOVO, vESTOQUEUSADO, vSALDO, vQUANTIDADE : Real;
begin

  vQUANTIDADE := StrToInt( TiraStr( seQuantidade.Text, '.'));
  dmDados.RDWAuxiliar.Close;
  dmDados.RDWAuxiliar.SQL.Clear;
  dmDados.RDWAuxiliar.SQL.Add('select ESTOQUE, ESTOQUE_NOVO, ESTOQUE_USADO from ESTOQUE where ID=:vID');
  dmDados.RDWAuxiliar.Params[0].DataType := ftInteger;
  dmDados.RDWAuxiliar.Params[0].Value := edCodProduto.Text ;
  dmDados.RDWAuxiliar.Open;

  vSALDO := dmDados.RDWAuxiliar.FieldByName('ESTOQUE').AsInteger - vQUANTIDADE; // Diminui o estoque atual mas o que entra

  vESTOQUENOVO := dmDados.RDWAuxiliar.FieldByName('ESTOQUE_NOVO').AsInteger;
  vESTOQUEUSADO := dmDados.RDWAuxiliar.FieldByName('ESTOQUE_USADO').AsInteger;

  if uniRGTipo.ItemIndex = 0 then
     vESTOQUENOVO := vESTOQUENOVO - vQUANTIDADE;   // adiciona o valor que entra em (Novos) - a quantidade que ja tem salvo como novos
  if uniRGTipo.ItemIndex = 1 then
     vESTOQUEUSADO := vESTOQUEUSADO - vQUANTIDADE; // adiciona o valor que entra em (Usados) - a quantidade que ja tem salvo como Usados

  if uniRGTipo.ItemIndex = 0 then  // Entra no laço do Tipo = se for (Novo) faça isso ou se nao entra no (Usado)



 if xSoAlerta = True then exit;

  if xIncluindo then
  begin
    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('insert into SAIDA values (:vSAIDA, :vCPRODUTO, :vQUANTIDADE, :vVPRODUTO, :vSETOR, :vNPRODUTO, NULL, :vUSUARIO,  NULL )');

    dmDados.RDWAuxiliar.Params[0].DataType := ftDateTime; // Data Saida
    dmDados.RDWAuxiliar.Params[0].Value := edDataSaida.Text ;

    dmDados.RDWAuxiliar.Params[1].DataType := ftInteger; // Codigo do produto
    dmDados.RDWAuxiliar.Params[1].Value := edCodProduto.Text ;

    dmDados.RDWAuxiliar.Params[2].DataType := ftInteger; // quantidade
    dmDados.RDWAuxiliar.Params[2].Value := seQuantidade.Value ;

    dmDados.RDWAuxiliar.Params[3].DataType := ftFloat; // Valor do produto
    dmDados.RDWAuxiliar.Params[3].Value := StrToFloat( TiraStr( edValoProduto.Text, '.') );

    dmDados.RDWAuxiliar.Params[4].DataType := ftString; // setor
    dmDados.RDWAuxiliar.Params[4].Value := cbSetor.Text ;

    dmDados.RDWAuxiliar.Params[5].DataType := ftString; // nome do produto
    dmDados.RDWAuxiliar.Params[5].Value := lbProduto.Text ;

   // PATRIMONIO = NULL

    dmDados.RDWAuxiliar.Params[6].DataType := ftString; // Cod Produto
    dmDados.RDWAuxiliar.Params[6].Value := edNome.Text ;
     // ID

    dmDados.RDWAuxiliar.ExecSQL( xErro );
    dmDados.RDWSaida.Close();
    dmDados.RDWSaida.Open();

    // atualiza estoque
    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('update ESTOQUE set ESTOQUE=:vSALDO, ESTOQUE_NOVO=:vNOVO, ESTOQUE_USADO=:vUSADO, DTSAIDA=:vSAIDA  where ID=:vID');
    // ESTOQUE TOTAL
    dmDados.RDWAuxiliar.Params[0].DataType := ftInteger;
    dmDados.RDWAuxiliar.Params[0].Value := vSALDO;
    //ESTOQUE NOVO
    dmDados.RDWAuxiliar.Params[1].DataType := ftInteger;
    dmDados.RDWAuxiliar.Params[1].Value := vESTOQUENOVO;
    //ESTOQUE USADO
    dmDados.RDWAuxiliar.Params[2].DataType := ftInteger;
    dmDados.RDWAuxiliar.Params[2].Value := vESTOQUEUSADO;

    dmDados.RDWAuxiliar.Params[3].DataType := ftDateTime; // Data Saida
    dmDados.RDWAuxiliar.Params[3].Value := edDataSaida.Text ;

    dmDados.RDWAuxiliar.Params[4].DataType := ftInteger;
    dmDados.RDWAuxiliar.Params[4].Value := edCodProduto.Text ;

    dmDados.RDWAuxiliar.ExecSQL( xErro );

    dmDados.RDWSaida.Close();
    dmDados.RDWSaida.Open();

    dmDados.RDWEstoque.Close;
    dmDados.RDWEstoque.SQL.Clear;
    dmDados.RDWEstoque.SQL.Add('select * from ESTOQUE order by ID desc');
    dmDados.RDWEstoque.Open;

       // mensagem de entrada em balao
    Toast.Success('Parabéns!','Saída confirmada do produto ', topCenter);
    MainForm.RegistraLog('SAIDA', 'SAIDA DO PRODUTO: '+lbProduto.Text );  // Registra log

  end;

end;

procedure TfraSaida.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
  xSoAlerta := False;
  xIncluindo := False;
  xEditando := False;
  xDeletando := False;

end;

end.
