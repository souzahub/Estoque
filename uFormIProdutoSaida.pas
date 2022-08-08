unit uFormIProdutoSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, UniFSButton,
  uniDateTimePicker, uniLabel, uniPanel, uniGUIBaseClasses, uDados,
  frxClass, frxExportBaseDialog, frxExportPDF, uniSweetAlert, Data.DB,
  frxDBSet, frxGradient, uniRadioGroup, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniEdit, uniDBEdit, uniDBText,
  uniMemo, uniDBMemo, uniBasicGrid, uniDBGrid, uFrEntrada, uFrSaida;

type
  TformIProdutoSaida = class(TUniForm)
    pnProd: TUniContainerPanel;
    UniPanel4: TUniPanel;
    UniContainerPanel3: TUniContainerPanel;
    btGravar: TUniFSButton;
    UniFSButton4: TUniFSButton;
    UniContainerPanel4: TUniContainerPanel;
    UniSimplePanel2: TUniSimplePanel;
    UniDBGrid2: TUniDBGrid;
    UniPanel5: TUniPanel;
    UniLabel12: TUniLabel;
    dsMovEntrada: TDataSource;
    procedure UniFSButton4Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure UniDBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

function formIProdutoSaida: TformIProdutoSaida;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, Main;

function formIProdutoSaida: TformIProdutoSaida;
begin
  Result := TformIProdutoSaida(UniMainModule.GetFormInstance(TformIProdutoSaida));
end;

procedure TformIProdutoSaida.btGravarClick(Sender: TObject);
begin
    if MainForm.vModuloAtual = 2 then  // ( saida ) id do produto
    begin
      MainForm.vConsultaProduto := dmDados.RDWEstoqueID.Value;
     // Iteragem Form com Frame
      TfraSaida(MainForm.FindComponent('fraSaida')).edCodProduto.Text := IntToStr(dmDados.RDWEstoqueID.Value);
      TfraSaida(MainForm.FindComponent('fraSaida')).lbProduto.Text := dmDados.RDWEstoquePRODUTO.Value;
      TfraSaida(MainForm.FindComponent('fraSaida')).edValoProduto.Text := FloatToStr ( dmDados.RDWEstoquePRECO.Value );
      TfraSaida(MainForm.FindComponent('fraSaida')).edVaTotal.Text := IntToStr ( dmDados.RDWEstoqueESTOQUE.Value );
      TfraSaida(MainForm.FindComponent('fraSaida')).lbEstoqueNovo.Text := IntToStr ( dmDados.RDWEstoqueESTOQUE_NOVO.Value );
      TfraSaida(MainForm.FindComponent('fraSaida')).lbEstoqueUsado.Text := IntToStr ( dmDados.RDWEstoqueESTOQUE_USADO.Value );
      TfraSaida(MainForm.FindComponent('fraSaida')).edPatrimonio.Text :=  dmDados.RDWMOVIENTRADAPATRIMONIO.Value ;

    end;
    Close;
    // Limpa a tabela na saida
    dmDados.RDWEstoque.Close;
    dmDados.RDWEstoque.SQL.Clear;

    dmDados.RDWEstoque.SQL.Add('select * from ESTOQUE order by ID desc');
    dmDados.RDWEstoque.Open;
end;

procedure TformIProdutoSaida.UniDBGrid2DblClick(Sender: TObject);
begin
  btGravarClick(Sender);
end;

procedure TformIProdutoSaida.UniFSButton4Click(Sender: TObject);
begin

    if MainForm.vModuloAtual = 2 then  // ( saida ) id do produto
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

end.
