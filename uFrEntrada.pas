unit uFrEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, uniScrollBox, uniPanel, uniButton,
  uniBitBtn, uniLabel, uniGUIBaseClasses, uniImageList, Data.DB,
  uniDateTimePicker, uniSpinEdit, uniRadioGroup, uniDBText, uniSweetAlert,
  uniBasicGrid, uniDBGrid, uniDBNavigator, uniPageControl, UniFSiGrowl,
  UniFSEdit, UniFSButton, UniFSToast, uniMultiItem, uniListBox,
  uniFileUpload, uniMemo;

type
  TfrEntrada = class(TUniFrame)
    UniNativeImageList1: TUniNativeImageList;
    dsEntrada: TDataSource;
    dsEstoque: TDataSource;
    UniSweetAlert1: TUniSweetAlert;
    PnUsuario: TUniPanel;
    PageCadastro: TUniPageControl;
    Tab1: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    Tab2: TUniTabSheet;
    UniScrollBox2: TUniScrollBox;
    UniPanel3: TUniPanel;
    uPn1: TUniPanel;
    edCodProduto: TUniEdit;
    lbCodProduto: TUniLabel;
    lbProd: TUniLabel;
    edProd: TUniEdit;
    edFornec: TUniEdit;
    lbFornec: TUniLabel;
    lbFornecedor: TUniLabel;
    edCodFornec: TUniEdit;
    lbCodFornec: TUniLabel;
    lbProduto: TUniLabel;
    UniPanel1: TUniPanel;
    lbQuantidade: TUniLabel;
    seQuantidade: TUniSpinEdit;
    lbPreco: TUniLabel;
    edValorTotal: TUniFormattedNumberEdit;
    UniLabel2: TUniLabel;
    edPreco: TUniFormattedNumberEdit;
    btFornec: TUniBitBtn;
    btCliente: TUniBitBtn;
    edLocal: TUniEdit;
    lbLocal: TUniLabel;
    UniLabel3: TUniLabel;
    edPatrimonio: TUniEdit;
    UniPanel2: TUniPanel;
    UniLabel8: TUniLabel;
    EdPesquisar: TUniEdit;
    BtCan: TUniFSButton;
    BtAlt: TUniFSButton;
    BtInc: TUniFSButton;
    Toast: TUniFSToast;
    UniLabel1: TUniLabel;
    uniRGTipo: TUniRadioGroup;
    SweetCancel: TUniSweetAlert;
    edDataEntrada: TUniDateTimePicker;
    lbEmissao: TUniLabel;
    memoObs: TUniMemo;
    lbObs: TUniLabel;
    BtGrv: TUniFSButton;
    function CalculaTotal: Real;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure seQuantidadeChange(Sender: TObject);
    procedure edPrecoChange(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure EdPesquisarChange(Sender: TObject);
    procedure btClientexClick(Sender: TObject);
    procedure btFornecClick(Sender: TObject);
    procedure btClienteClick(Sender: TObject);
    procedure BtIncClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
    procedure BtCanClick(Sender: TObject);
    procedure BtGrvClick(Sender: TObject);
    procedure ConsultaDados;
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure SweetCancelConfirm(Sender: TObject);
    procedure SweetCancelDismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure dsEntradaDataChange(Sender: TObject; Field: TField);  // função de pesquisa
  private
     xIncluindo, xDeletando, xEditando, xSoAlerta, xGrupo, xAlterar : Boolean;
  public
    { Public declarations }
    xUltimoId : Integer;
  end;

implementation

{$R *.dfm}

uses uDados, Main, uFormBuscaFornec, uFormBuscaProduto, uFuncoes;

procedure TfrEntrada.ConsultaDados;  // função de pesquisa
begin
    // pesquisa dinamica na tabela Usuario
  dmDados.RDWEntrada.SQL.Clear;
  dmDados.RDWEntrada.SQL.Add('select * from ENTRADA  where');
  dmDados.RDWEntrada.SQL.Add('(NPRODUTO LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWEntrada.SQL.Add('or CPRODUTO LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWEntrada.SQL.Add(')order by ID desc ');
  dmDados.RDWEntrada.Open;

end;

procedure TfrEntrada.dsEntradaDataChange(Sender: TObject; Field: TField);
begin

end;

// função  para calcular o valor total
function TfrEntrada.CalculaTotal: Real;
var vTOTAL, vQUANTIDADE : Real;
begin
  vQUANTIDADE := StrToInt( TiraStr( seQuantidade.Text, '.'));
  vTOTAL := vQUANTIDADE * StrToFloat( TiraStr( edPreco.Text, '.'));
  Result := vTOTAL;
end;

procedure TfrEntrada.EdPesquisarChange(Sender: TObject);
begin
  ConsultaDados;
end;

procedure TfrEntrada.edPrecoChange(Sender: TObject);
begin
  edValorTotal.Value := CalculaTotal;
end;

procedure TfrEntrada.BtAltClick(Sender: TObject);
begin
  EdPesquisar.Visible := False;
  xSoAlerta := False;
  xIncluindo := False;
  xEditando := True;
  xDeletando := False;

// Visualizando a Tab2
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
  PageCadastro.Pages[0].TabVisible := False ;
  PageCadastro.Pages[1].TabVisible := True ;

  // Visualizando Botao do Crud
  BtInc.Enabled := False;
  BtAlt.Enabled := False;
  BtGrv.Enabled := True;
  BtCan.Enabled := True;

  lbFornec.Visible := True;
  lbProduto.Visible := True;
  edCodFornec.Visible := True;
  edCodProduto.Visible := True;
  edLocal.Visible := True;
  edPatrimonio.Visible := True;


 //--------------------------------------------------------------------------//
//    dmDados.RDWFornec.Close;
//    dmDados.RDWFornec.Open;
//  if dmDados.RDWFornec.Locate('ID',  dmDados.RDWFornecID.Value, []) then
//  begin
//   edCodFornec.Text := IntToStr(dmDados.RDWFornecID.Value);
//  end;

  edDataEntrada.DateTime := dmDados.RDWEntradaENTRADA.AsDateTime; // Data entrada
  lbFornec.Text := dmDados.RDWEntradaFORNECEDOR.Value;
  seQuantidade.Text := FloatToStr( dmDados.RDWEntradaTOTALITENS.Value );
  edValorTotal.Text := FloatToStr( dmDados.RDWEntradaVALORTOTAL.Value );
  lbProduto.Text := dmDados.RDWEntradaNPRODUTO.Value;
  uniRGTipo.ItemIndex := dmDados.RDWEntradaTIPO.Value ;
  edPreco.Text := FloatToStr( dmDados.RDWEntradaCUSTO.Value );
  edCodProduto.Text := IntToStr( dmDados.RDWEntradaCPRODUTO.Value );
  edLocal.Text := dmDados.RDWEntradaLOCALPRODUTO.Value;
  edPatrimonio.Text := dmDados.RDWEntradaPATRIMONIO.Value;

end;

procedure TfrEntrada.BtCanClick(Sender: TObject);
begin

  EdPesquisar.Visible := True;
  dmDados.RDWEntrada.Cancel;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
  PageCadastro.Pages[0].TabVisible := True ;
  PageCadastro.Pages[1].TabVisible := False ;

  // Visualizando Botao do Crud
  BtInc.Enabled := True;
  BtAlt.Enabled := True;
  BtGrv.Enabled := False;
  BtCan.Enabled := False;
  EdPesquisar.Clear;
  dmDados.RDWEntrada.Close();
  dmDados.RDWEntrada.Open();

end;

procedure TfrEntrada.btClienteClick(Sender: TObject);
begin
  MainForm.vModuloAtual := 1 ; // busca tabela d produtos
  formBuscaProduto.ShowModal ;
  TFrEntrada(MainForm.FindComponent('frEntrada')).lbProduto.Visible := True ; // enterage com frame
  seQuantidade.Value := 0 ;
end;

procedure TfrEntrada.btClientexClick(Sender: TObject);
begin
   MainForm.vModuloAtual := 1 ; // busca tabela d produtos
  formBuscaProduto.ShowModal ;
  TFrEntrada(MainForm.FindComponent('frEntrada')).lbProduto.Visible := True ; // enterage com frame
  seQuantidade.Value := 0 ;
end;

procedure TfrEntrada.btFornecClick(Sender: TObject);
begin
  MainForm.vModuloAtual := 0 ; // busca tabela de fornecedor
  formBuscaFornec.ShowModal ;
  TFrEntrada(MainForm.FindComponent('frEntrada')).lbFornec.Visible := True ; // enterage com frame
end;

procedure TfrEntrada.BtGrvClick(Sender: TObject);
begin
  EdPesquisar.Visible := True;
   //  usando  SweetAlert1
  if edCodFornec.Text = '' then
  begin
  xSoAlerta := True;   // bloqueia alerta
  UniSweetAlert1.Title := ('Fornecedor Obrigatório!');
  UniSweetAlert1.AlertType := atInfo;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.CancelButtonColor := clMaroon;
  UniSweetAlert1.ShowConfirmButton := False;
  UniSweetAlert1.CancelButtonText := 'Não';
  UniSweetAlert1.Show('selecione o Fornecedor');
  exit;
  end;

   if edCodProduto.Text = '' then
  begin
  xSoAlerta := True;   // bloqueia alerta
  UniSweetAlert1.Title := ('Produto Obrigatório!');
  UniSweetAlert1.AlertType := atInfo;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.CancelButtonColor := clMaroon;
  UniSweetAlert1.ShowConfirmButton := False;
  UniSweetAlert1.CancelButtonText := 'Não';
  UniSweetAlert1.Show('selecione o Produto');
  exit;
  end;

   //  usando  SweetAlert1
  if seQuantidade.Value = 0 then
  begin
  xSoAlerta := True;   // bloqueia alerta
  UniSweetAlert1.Title := ('Atenção!');
  UniSweetAlert1.AlertType := atInfo;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.CancelButtonColor := clMaroon;
  UniSweetAlert1.ShowConfirmButton := False;
  UniSweetAlert1.CancelButtonText := 'Não';
  UniSweetAlert1.Show('Quantidade não poder ser 0');
  exit;
  end;

   if edLocal.Text = '' then
  begin
  xSoAlerta := True;   // bloqueia alerta
  UniSweetAlert1.Title := ('Localização Obrigatória!');
  UniSweetAlert1.AlertType := atInfo;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.CancelButtonColor := clMaroon;
  UniSweetAlert1.ShowConfirmButton := False;
  UniSweetAlert1.CancelButtonText := 'Não';
  UniSweetAlert1.Show('Digite a localização para o produto');
  exit;
  end;

  //  Salvando com SweetAlert1
  xIncluindo := True;
  xSoAlerta := False;
  UniSweetAlert1.Title := 'Deseja salvar esse Produto ?';
  UniSweetAlert1.AlertType := atQuestion;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.ConfirmButtonColor := clMaroon;
  UniSweetAlert1.CancelButtonColor := $00684E3E;
  UniSweetAlert1.ShowConfirmButton := True;
  UniSweetAlert1.Show( lbProduto.Text );

  BtInc.Enabled := True;
  BtGrv.Enabled := False;
  BtCan.Enabled := False;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
  PageCadastro.Pages[0].TabVisible := True ;
  PageCadastro.Pages[1].TabVisible := False ;

end;

procedure TfrEntrada.BtIncClick(Sender: TObject);
begin

  EdPesquisar.Visible := False;
  xSoAlerta := False;
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

  edDataEntrada.Text := DateToStr( Date );  // entra com a data do dia
  edPreco.Text := '0,00' ;
  edValorTotal.Text := '0,00' ;
  seQuantidade.Value := 0 ;
  uniRGTipo.ItemIndex := 0;
  lbFornec.Text := '';
  lbProduto.Text := '';
  edCodFornec.Text := '';
  edCodProduto.Text :='';
  edLocal.Text := '';
  edPatrimonio.Text := '';
  memoObs.Lines.Text := '';

end;

procedure TfrEntrada.seQuantidadeChange(Sender: TObject);
begin
 edValorTotal.Value := CalculaTotal;
end;

procedure TfrEntrada.SweetCancelConfirm(Sender: TObject);
var
xErro, xMotivo, xObs :string;

begin
 { if  xAlterar = True then
  begin
    if SweetCancel.InputResult ='' then
    begin
      xSoAlerta := True;
      SweetCancel.Title := ('Atenção!');
      SweetCancel.AlertType := atInfo;
      SweetCancel.InputType := ItNone;
      SweetCancel.ShowCancelButton := True;
      SweetCancel.ShowConfirmButton := False;
      SweetCancel.CancelButtonText := 'Ok';
      SweetCancel.Show('Local Obrigatório');
      exit;
    end;
    xMotivo := SweetCancel.InputResult;

    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('update ENTRADA set LOCALPRODUTO=:vLOCALPRODUTO  where ID=:vID');

    dmDados.RDWAuxiliar.Params[0].DataType := ftString;
    dmDados.RDWAuxiliar.Params[0].Value := xMotivo;

    dmDados.RDWAuxiliar.Params[1].DataType := ftInteger;
    dmDados.RDWAuxiliar.Params[1].Value := dmDados.RDWEntradaID.Value;

    dmDados.RDWAuxiliar.ExecSQL( xErro );

    dmDados.RDWEntrada.Close;
    dmDados.RDWEntrada.Open;

    dmDados.RDWEntrada.Locate('CPRODUTO', xUltimoId, []);// volta para o ultimo Id

    xAlterar := False;
    exit;

   end;  }


  if  xEditando = True then  // edita a Observação
  begin

    xObs := SweetCancel.InputResult;

    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('update ENTRADA set OBS=:vOBS  where ID=:vID');

    dmDados.RDWAuxiliar.Params[0].DataType := ftString;
    dmDados.RDWAuxiliar.Params[0].Value := xObs;

    dmDados.RDWAuxiliar.Params[1].DataType := ftInteger;
    dmDados.RDWAuxiliar.Params[1].Value := dmDados.RDWEntradaid.Value;

    dmDados.RDWAuxiliar.ExecSQL( xErro );

    dmDados.RDWEntrada.Close;
    dmDados.RDWEntrada.Open;

    dmDados.RDWEntrada.Locate('CPRODUTO', xUltimoId, []);// volta para o ultimo Id

    xEditando := False;
    exit;

   end;
end;

procedure TfrEntrada.SweetCancelDismiss(Sender: TObject;
  const Reason: TDismissType);
begin
  xAlterar := False;
  xSoAlerta := False;
end;

procedure TfrEntrada.UniDBGrid1DblClick(Sender: TObject);
var
xErro : string;

begin
// COMENTE UM PARA USAR O OUOTRO NA HORA DE SALVAR (  SweetCancel )

// é habilitado para o balanço ( altera o local )
//    Exit;
//    if (not MainForm.vADMIN) then exit;
//    xUltimoId :=  dmDados.RDWEntradaCPRODUTO.Value;
// -----Altera Loca-------------------------------------
 {   xAlterar := True;
    xSoAlerta := False;
    xIncluindo := False;
    xEditando := False;
    xDeletando := False;

    xSoAlerta := False;
    SweetCancel.Title := 'Informe o local do produto:';
    SweetCancel.AlertType := atQuestion;
    SweetCancel.InputType := ItText;
    SweetCancel.ShowConfirmButton := True;
    SweetCancel.ConfirmButtonText := 'Sim';
    SweetCancel.ShowCancelButton := True;
    SweetCancel.CancelButtonText := 'Não';
    SweetCancel.Show(dmDados.RDWEntradaNPRODUTO.value); }

// -----Altera Loca-------------------------------------

//
// para Editar OBS comentario

    xAlterar := False;
    xSoAlerta := False;
    xIncluindo := False;
    xEditando := True;
    xDeletando := False;

    xSoAlerta := False;
    SweetCancel.Title := 'Salvar';
    SweetCancel.AlertType := atQuestion;
    SweetCancel.InputType := ItText;
    SweetCancel.ShowConfirmButton := True;
    SweetCancel.ConfirmButtonText := 'Sim';
    SweetCancel.ShowCancelButton := True;
    SweetCancel.CancelButtonText := 'Não';
    SweetCancel.Show('Observação ?');

end;

procedure TfrEntrada.UniFrameCreate(Sender: TObject);
begin
  EdPesquisarChange(Sender);
  dmDados.RDWEstoque.Close;
  dmDados.RDWEstoque.Open;
  PageCadastro.Pages[0].TabVisible := True  ;
  PageCadastro.Pages[1].TabVisible := False ;
  BtInc.Enabled := True;
  BtGrv.Enabled := False;
  BtCan.Enabled := False;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
end;

procedure TfrEntrada.UniSweetAlert1Confirm(Sender: TObject);
var xErro : String;
    vESTOQUENOVO, vESTOQUEUSADO, vSALDO, vTOTAL, vQUANTIDADE : Real;
begin



  if xSoAlerta = True then exit;

  if xIncluindo then
  begin
    // retorna o valor do estou atual ---------------------------------------------------------------------------------------------
    vQUANTIDADE := StrToInt( TiraStr( seQuantidade.Text, '.'));
    vTOTAL := vQUANTIDADE * StrToFloat( TiraStr( edPreco.Text, '.'));

    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('select ESTOQUE, ESTOQUE_NOVO, ESTOQUE_USADO from ESTOQUE where ID=:vID');
    dmDados.RDWAuxiliar.Params[0].DataType := ftInteger;
    dmDados.RDWAuxiliar.Params[0].Value := edCodProduto.Text ;
    dmDados.RDWAuxiliar.Open;

    vSALDO := dmDados.RDWAuxiliar.FieldByName('ESTOQUE').AsInteger + vQUANTIDADE; // soma o estoque atual mas o que entra

    vESTOQUENOVO := dmDados.RDWAuxiliar.FieldByName('ESTOQUE_NOVO').AsInteger;
    vESTOQUEUSADO := dmDados.RDWAuxiliar.FieldByName('ESTOQUE_USADO').AsInteger;

    if uniRGTipo.ItemIndex = 0 then
       vESTOQUENOVO := vESTOQUENOVO + vQUANTIDADE;   // adiciona o valor que entra em (Novos)  + a quantidade que ja tem salvo como novos
    if uniRGTipo.ItemIndex = 1 then
       vESTOQUEUSADO := vESTOQUEUSADO + vQUANTIDADE; // adiciona o valor que entra em (Usados) + a quantidade que ja tem salvo como Usados

    if uniRGTipo.ItemIndex = 0 then  // Entra no laço do Tipo = se for (Novo) faça isso ou se nao entra no (Usado)

    // --------------------------------------------------------------------------------------------------------------------------


    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('insert into ENTRADA  values (:vENTRADA, :vFORNECEDOR, :vTOTALITENS, :vVALORTOTAL, NULL, :vNPRODUTO, :vTIPO, :vCUSTO, :vCPRODUTO, :vLOCALPRODUTO, :vPATRIMONIO, :vOBS )');

    dmDados.RDWAuxiliar.Params[0].DataType := ftDateTime; // Data entrada
    dmDados.RDWAuxiliar.Params[0].Value := edDataEntrada.Text ;

    dmDados.RDWAuxiliar.Params[1].DataType := ftString; // Fornecedor
    dmDados.RDWAuxiliar.Params[1].Value := lbFornec.Text ;

    dmDados.RDWAuxiliar.Params[2].DataType := ftInteger; // Total Itens
    dmDados.RDWAuxiliar.Params[2].Value := seQuantidade.Value ;

    dmDados.RDWAuxiliar.Params[3].DataType := ftFloat; // Valor Total
    dmDados.RDWAuxiliar.Params[3].Value := vTOTAL;

    // ID - NULL

    dmDados.RDWAuxiliar.Params[4].DataType := ftString; // Nome do Produto
    dmDados.RDWAuxiliar.Params[4].Value := lbProduto.Text ;

    if uniRGTipo.ItemIndex = 0 then  // Tipo  0 = Novo
    begin
     dmDados.RDWAuxiliar.Params[5].Value := 0  ;
    end;

    if uniRGTipo.ItemIndex =1 then  // Tipo  1 = Usado
    begin
     dmDados.RDWAuxiliar.Params[5].Value := 1  ;
    end;

    dmDados.RDWAuxiliar.Params[6].DataType := ftFloat; // Custo
    dmDados.RDWAuxiliar.Params[6].Value :=StrToFloat( TiraStr( edPreco.Text, '.') );

    dmDados.RDWAuxiliar.Params[7].DataType := ftInteger; // Cod Produto
    dmDados.RDWAuxiliar.Params[7].Value := edCodProduto.Text ;

    dmDados.RDWAuxiliar.Params[8].DataType := ftString; // Local do produto
    dmDados.RDWAuxiliar.Params[8].Value := edLocal.Text;

    dmDados.RDWAuxiliar.Params[9].DataType := ftString; // Local do Patrimonio
    dmDados.RDWAuxiliar.Params[9].Value := edPatrimonio.Text;

    dmDados.RDWAuxiliar.Params[10].DataType := ftString; // OBS
    dmDados.RDWAuxiliar.Params[10].Value := memoObs.Lines.Text;

    dmDados.RDWAuxiliar.ExecSQL( xErro );
    dmDados.RDWEntrada.Close();
    dmDados.RDWEntrada.Open();
    dmDados.RDWMOVIENTRADA.Close();
    dmDados.RDWMOVIENTRADA.Open();


    // atualiza estoque
    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('update ESTOQUE set ESTOQUE=:vSALDO, ESTOQUE_NOVO=:vNOVO, ESTOQUE_USADO=:vUSADO, PRECO=:vPRECO, DTENTRADA=:vENTRADA, '+
    'FORNEC=:vFORNECEDOR, LOCALPRODUTO=:vLOCALPRODUTO where ID=:vID');
    // ESTOQUE TOTAL
    dmDados.RDWAuxiliar.Params[0].DataType := ftInteger;
    dmDados.RDWAuxiliar.Params[0].Value := vSALDO;
    //ESTOQUE NOVO
    dmDados.RDWAuxiliar.Params[1].DataType := ftInteger;
    dmDados.RDWAuxiliar.Params[1].Value := vESTOQUENOVO;
    //ESTOQUE USADO
    dmDados.RDWAuxiliar.Params[2].DataType := ftInteger;
    dmDados.RDWAuxiliar.Params[2].Value := vESTOQUEUSADO;

    dmDados.RDWAuxiliar.Params[3].DataType := ftFloat; // Custo ( Ultimo preço )
    dmDados.RDWAuxiliar.Params[3].Value :=StrToFloat( TiraStr( edPreco.Text, '.') );

    dmDados.RDWAuxiliar.Params[4].DataType := ftDateTime; // Data entrada
    dmDados.RDWAuxiliar.Params[4].Value := edDataEntrada.Text ;

    dmDados.RDWAuxiliar.Params[5].DataType := ftString; // Fornecedor
    dmDados.RDWAuxiliar.Params[5].Value := lbFornec.Text ;

    dmDados.RDWAuxiliar.Params[6].DataType := ftString;
    dmDados.RDWAuxiliar.Params[6].Value := edLocal.Text;

    dmDados.RDWAuxiliar.Params[7].DataType := ftInteger;
    dmDados.RDWAuxiliar.Params[7].Value := edCodProduto.Text ;

    dmDados.RDWAuxiliar.ExecSQL( xErro );

    dmDados.RDWEntrada.Close();
    dmDados.RDWEntrada.Open();
    dmDados.RDWMOVIENTRADA.Close();
    dmDados.RDWMOVIENTRADA.Open();

    dmDados.RDWEstoque.Close;
    dmDados.RDWEstoque.SQL.Clear;
    dmDados.RDWEstoque.SQL.Add('select * from ESTOQUE order by ID desc');
    dmDados.RDWEstoque.Open;

       // mensagem de entrada em balao
//    Toast.Success('Parabéns!','Entrada confirmada do produto ', topCenter);
    MainForm.RegistraLog('ENTRADA', 'ENTRADA DO PRODUTO: '+lbProduto.Text );  // Registra log

  end;

end;

procedure TfrEntrada.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
  xSoAlerta := False;
  xIncluindo := False;
  xEditando := False;
  xDeletando := False;
end;

end.
