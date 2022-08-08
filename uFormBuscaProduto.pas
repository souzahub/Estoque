unit uFormBuscaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniDBNavigator, uniLabel, uniEdit, uniPanel,
  uniGUIBaseClasses, uniImageList, uniBasicGrid, uniDBGrid, uniButton,
  uniBitBtn, Data.DB, UniFSButton, uFormIProdutoSaida;

type
  TformBuscaProduto = class(TUniForm)
    DsConsProduto: TDataSource;
    UniDBGrid1: TUniDBGrid;
    UniNativeImageList1: TUniNativeImageList;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniLabel8: TUniLabel;
    EdPesquisar: TUniEdit;
    btPesquisar: TUniFSButton;
    pnBt: TUniContainerPanel;
    ubtSair: TUniFSButton;
    btCancelar: TUniFSButton;
    procedure UniFormCreate(Sender: TObject);
    procedure ubtSairClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure EdPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure btPesquisarClick(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniFormShow(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function formBuscaProduto: TformBuscaProduto;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uDados, Main, uFrEntrada, uFuncoes,
  uFrSaida, uFrCadastroProduto;

function formBuscaProduto: TformBuscaProduto;
begin
  Result := TformBuscaProduto(UniMainModule.GetFormInstance(TformBuscaProduto));
end;

procedure TformBuscaProduto.btCancelarClick(Sender: TObject);
begin

  // Limpa a tabela
  if MainForm.vModuloAtual = 1 then  // ( entrada )id Produto
    begin
      MainForm.vConsultaProduto := dmDados.RDWEstoqueID.Value;
     // Iteragem Form com Frame
      TFrEntrada(MainForm.FindComponent('frEntrada')).edCodProduto.Text := '';
      TFrEntrada(MainForm.FindComponent('frEntrada')).lbProduto.Text := '';
      TFrEntrada(MainForm.FindComponent('frEntrada')).edPreco.Text := '0,00';
    end
       else if MainForm.vModuloAtual = 2 then  // ( saida ) id do produto
    begin
      MainForm.vConsultaProduto := dmDados.RDWEstoqueID.Value;
     // Iteragem Form com Frame
      TfraSaida(MainForm.FindComponent('fraSaida')).edCodProduto.Text := '';
      TfraSaida(MainForm.FindComponent('fraSaida')).lbProduto.Text := '';
      TfraSaida(MainForm.FindComponent('fraSaida')).edValoProduto.Text := '0,00';
      TfraSaida(MainForm.FindComponent('fraSaida')).edVaTotal.Text := '';
      TfraSaida(MainForm.FindComponent('fraSaida')).lbEstoqueNovo.Text := '';
      TfraSaida(MainForm.FindComponent('fraSaida')).lbEstoqueUsado.Text := '';

    end;

  dmDados.RDWEstoque.SQL.Clear;
  dmDados.RDWEstoque.SQL.Add('select * from ESTOQUE order by PRODUTO');
  dmDados.RDWEstoque.Open;

  Close;

end;

procedure TformBuscaProduto.btPesquisarClick(Sender: TObject);
begin
  // pesquisa dinamica na tabela Usuario
  dmDados.RDWEstoque.SQL.Clear;
  dmDados.RDWEstoque.SQL.Add('select * from ESTOQUE  where');
  dmDados.RDWEstoque.SQL.Add('(PRODUTO LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWEstoque.SQL.Add('or ID LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWEstoque.SQL.Add(')order by PRODUTO ');
  dmDados.RDWEstoque.Open;
end;

procedure TformBuscaProduto.EdPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  btPesquisarClick(Sender);
end;

procedure TformBuscaProduto.ubtSairClick(Sender: TObject);
begin

  if MainForm.vModuloAtual = 1 then  // ( entrada )id Produto
    begin
      MainForm.vConsultaProduto := dmDados.RDWEstoqueID.Value;
     // Iteragem Form com Frame
      TFrEntrada(MainForm.FindComponent('frEntrada')).edCodProduto.Text := IntToStr(dmDados.RDWEstoqueID.Value);
      TFrEntrada(MainForm.FindComponent('frEntrada')).lbProduto.Text := dmDados.RDWEstoquePRODUTO.Value;
      TFrEntrada(MainForm.FindComponent('frEntrada')).edPreco.Text := FloatToStr (dmDados.RDWEstoquePRECO.Value);
    end
       else if MainForm.vModuloAtual = 2 then  // ( saida ) id do produto
    begin
      MainForm.vConsultaProduto := dmDados.RDWEstoqueID.Value;
     // Iteragem Form com Frame
      TfraSaida(MainForm.FindComponent('fraSaida')).edCodProduto.Text := IntToStr(dmDados.RDWEstoqueID.Value);
      TfraSaida(MainForm.FindComponent('fraSaida')).lbProduto.Text := dmDados.RDWEstoquePRODUTO.Value;
      TfraSaida(MainForm.FindComponent('fraSaida')).edValoProduto.Text := FloatToStr ( dmDados.RDWEstoquePRECO.Value );
      TfraSaida(MainForm.FindComponent('fraSaida')).edVaTotal.Text := IntToStr ( dmDados.RDWEstoqueESTOQUE.Value );
      TfraSaida(MainForm.FindComponent('fraSaida')).lbEstoqueNovo.Text := IntToStr ( dmDados.RDWEstoqueESTOQUE_NOVO.Value );
      TfraSaida(MainForm.FindComponent('fraSaida')).lbEstoqueUsado.Text := IntToStr ( dmDados.RDWEstoqueESTOQUE_USADO.Value );

    end;
    Close;
    // Limpa a tabela na saida
    dmDados.RDWEstoque.Close;
    dmDados.RDWEstoque.SQL.Clear;
    dmDados.RDWEstoque.SQL.Add('select * from ESTOQUE order by ID desc');
    dmDados.RDWEstoque.Open;

end;

procedure TformBuscaProduto.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
exit
//
//  if Column.Field = dmDados.RDWEstoqueI_SAIDA then   // modo caso Futuramente der saida para cada numero de Patrimonio
//    begin
//    if MainForm.vModuloAtual = 2 then
//    begin
//
//      dmDados.RDWMOVIENTRADA.Close;
//      dmDados.RDWMOVIENTRADA.SQL.Clear;
//      dmDados.RDWMOVIENTRADA.SQL.Add('select ENTRADA, FORNECEDOR, TOTALITENS, VALORTOTAL, ID, NPRODUTO, TIPO, CUSTO, CPRODUTO, LOCALPRODUTO, PATRIMONIO, OBS ');
//      dmDados.RDWMOVIENTRADA.SQL.Add('from entrada where CPRODUTO=:vCPRODUTO order by ID desc');
//      dmDados.RDWMOVIENTRADA.Params[0].DataType := ftString;
//      dmDados.RDWMOVIENTRADA.Params[0].Value := dmDados.RDWEstoqueID.Value;
//      dmDados.RDWMOVIENTRADA.Open;
//      formIProdutoSaida.ShowModalN;
//      Close;
//      exit;
//
//    end
//    else
//    Exit;
//
//  end;



end;

procedure TformBuscaProduto.UniDBGrid1DblClick(Sender: TObject);
begin
  ubtSairClick(Sender);
//
//  if MainForm.vModuloAtual = 2 then  // modo caso Futuramente der saida para cada numero de Patrimonio
//  begin
//      dmDados.RDWMOVIENTRADA.Close;
//      dmDados.RDWMOVIENTRADA.SQL.Clear;
//      dmDados.RDWMOVIENTRADA.SQL.Add('select ENTRADA, FORNECEDOR, TOTALITENS, VALORTOTAL, ID, NPRODUTO, TIPO, CUSTO, CPRODUTO, LOCALPRODUTO, PATRIMONIO, OBS ');
//      dmDados.RDWMOVIENTRADA.SQL.Add('from entrada where CPRODUTO=:vCPRODUTO order by ID desc');
//      dmDados.RDWMOVIENTRADA.Params[0].DataType := ftString;
//      dmDados.RDWMOVIENTRADA.Params[0].Value := dmDados.RDWEstoqueID.Value;
//      dmDados.RDWMOVIENTRADA.Open;
//      formIProdutoSaida.ShowModalN;
//      Close;
//    Exit;
//  end
//  else
//   ubtSairClick(Sender);
end;

procedure TformBuscaProduto.UniFormCreate(Sender: TObject);
begin
  EdPesquisar.SetFocus;
  dmDados.RDWEstoque.Open;
  EdPesquisar.Text := '';
end;

procedure TformBuscaProduto.UniFormShow(Sender: TObject);
begin
//  if MainForm.vModuloAtual = 2 then // modo caso Futuramente der saida para cada numero de Patrimonio
//  begin
//    pnBt.Visible := False;
//
//  end
//  else
//    pnBt.Visible := True;

end;

end.
