unit uManutencaoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls, Mask,
  Curedit, DB, DBTables;

type
  TFormEntradaProduto = class(TForm)
    btFechar: TBitBtn;
    meData: TMaskEdit;
    lbData: TLabel;
    lbNproduto: TLabel;
    lbCodigoProduto: TLabel;
    edNproduto: TEdit;
    edCproduto: TEdit;
    lbFornec: TLabel;
    edNfornec: TEdit;
    lbTotalIntens: TLabel;
    ceQUANTIDADE: TCurrencyEdit;
    lbPreco: TLabel;
    ceCusto: TCurrencyEdit;
    lbVtotal: TLabel;
    btEntrada: TBitBtn;
    QueryEstoque: TQuery;
    dsQueryEntrada: TDataSource;
    btOk: TBitBtn;
    QueryEstoqueCODIGO: TIntegerField;
    QueryEstoquePRODUTO: TStringField;
    Label1: TLabel;
    lbSALDOATUAL: TLabel;
    rgTIPO: TRadioGroup;
    ceTOTAL: TEdit;
    Label2: TLabel;
    edFornec: TEdit;
    btFornec: TBitBtn;
    procedure btFecharClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditaBuscaChange(Sender: TObject);
    procedure btEntradaClick(Sender: TObject);
    procedure btEstoqueClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    function CalculaTotal: Real;
    procedure ceQUANTIDADEExit(Sender: TObject);
    procedure ceCustoExit(Sender: TObject);
    procedure btFornecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEntradaProduto: TFormEntradaProduto;

implementation

uses uManutencaoCliente, uDados, uEstoqueT, uEstoque, uFALCON, uFuncoes,
  uFornecedor;

{$R *.dfm}

function TFormEntradaProduto.CalculaTotal: Real;
var vTOTAL, vQUANTIDADE : Real;
begin

  vQUANTIDADE := StrToFloat( TiraStr( ceQUANTIDADE.Text, '.'));
  vTOTAL := vQUANTIDADE * StrToFloat( TiraStr( ceCUSTO.Text, '.'));

  Result := vTOTAL;

end;


procedure TFormEntradaProduto.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormEntradaProduto.btDeletarClick(Sender: TObject);
begin
  if dmDados.tbEntrada.Eof then exit;

If MessageDlg('DESEJA DELETAR ?',mtConfirmation,[mbyes,mbno],0) = mryes then
    dmDados.tbEntrada.delete;
end;

procedure TFormEntradaProduto.FormActivate(Sender: TObject);
begin

    dmDados.tbEstoque.Open;
    QueryEstoque.Close;
    QueryEstoque.SQL.Clear;
    QueryEstoque.SQL.Add('select * from ESTOQUE order by PRODUTO');
    QueryEstoque.Open;
    meData.Text := DateToStr( Date );
    meData.SetFocus;
    lbSaldoAtual.Caption := '';

end;

procedure TFormEntradaProduto.EditaBuscaChange(Sender: TObject);
begin
{
    QueryEstoque.Close;
    QueryEstoque.SQL.Clear;
    QueryEstoque.SQL.Add('select * from ESTOQUE  where (');
    QueryEstoque.SQL.Add('CODIGO LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
    QueryEstoque.SQL.Add('or PRODUTO LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
    QueryEstoque.SQL.Add(') order by PRODUTO');
    QueryEstoque.Open;
}
end;

procedure TFormEntradaProduto.btEntradaClick(Sender: TObject);
var vTOTAL : Real;
    vQUANTIDADE : Integer;
begin
  if edCProduto.text = '' then
  begin
     ShowMessage('ATENÇÃO: Código exige preenchimento obrigatório.');
     edCProduto.SetFocus;
    exit;
  end;
    if ceQUANTIDADE.Text = '0' then
  begin
    ShowMessage('ATENÇÃO: Quantidade preenchido não pode conter  0.');
    ceQUANTIDADE.SetFocus;
  exit;
    end;

      if ceCusto.Text = '0,00' then
  begin
    ShowMessage('ATENÇÃO: valor preenchido não pode ser zerado .');
    ceCusto.SetFocus;
  exit;
    end;

  vQUANTIDADE := StrToInt( TiraStr( ceQUANTIDADE.Text, '.'));
  vTOTAL := vQUANTIDADE * StrToFloat( TiraStr( ceCUSTO.Text, '.'));

  if MessageDlg('DESEJA SALVAR ?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin

      dmDados.tbEntrada.Open;
      dmDados.tbEntrada.Append;
      dmDados.tbEntradaENTRADA.Value := StrToDate( meData.Text );
      dmDados.tbEntradaFORNECEDOR.Value := edNfornec.Text;
      dmDados.tbEntradaCPRODUTO.Value := FormPrincipal.vCodigo_do_Produto;
      dmDados.tbEntradaNPRODUTO.Value := edNProduto.Text;
      dmDados.tbEntradaTIPO.Value := rgTIPO.ItemIndex;
      dmDados.tbEntradaCUSTO.Value := StrToFloat( TiraStr( ceCusto.Text, '.') );
      dmDados.tbEntradaVALORTOTAL.Value := vTOTAL;
      dmDados.tbEntradaTOTALITENS.Value := vQUANTIDADE;
      dmDados.tbEntrada.Post;

      dmDados.tbEstoque.Open;
      dmDados.tbEstoque.Locate('CODIGO', FormPrincipal.vCodigo_do_Produto, [] );
      if dmDados.tbEstoque.Locate('CODIGO', FormPrincipal.vCodigo_do_Produto, [] ) then
      begin
         dmDados.tbEstoque.Edit;
         dmDados.tbEstoqueESTOQUE.Value := dmDados.tbEstoqueESTOQUE.Value + vQUANTIDADE;
         dmDados.tbEstoquePRECO.Value := StrToFloat( TiraStr( ceCusto.Text, '.') );
         dmDados.tbEstoqueDTENTRADA.Value := StrToDate( meData.Text );
         dmDados.tbEstoqueFORNEC.Value := edNfornec.Text;
         if rgTipo.ItemIndex = 0 then
            dmDados.tbEstoqueESTOQUE_NOVO.Value := dmDados.tbEstoqueESTOQUE_NOVO.Value + vQUANTIDADE
         else
            dmDados.tbEstoqueESTOQUE_USADO.Value := dmDados.tbEstoqueESTOQUE_USADO.Value + vQUANTIDADE;

         dmDados.tbEstoque.Post;
      end;
      dmDados.tbEstoque.Close;


   edCProduto.Clear;
   edNfornec.Clear;
   edNproduto.Clear;
   ceQuantidade.Clear;
   ceCusto.Clear;
   ceTOTAL.Clear;
   ceQUANTIDADE.SetFocus;
   end;
  end;




procedure TFormEntradaProduto.btEstoqueClick(Sender: TObject);
begin
    FormEstoque := TFormEstoque.Create(Self);
    FormEstoque.ShowModal;
    FormEstoque.Release;
end;

procedure TFormEntradaProduto.btOkClick(Sender: TObject);
begin
    FormCadastro := TFormCadastro.Create(Self);
    FormCadastro.ShowModal;
    FormCadastro.Release;
    dmDados.tbEstoque.Open;
    dmDados.tbEstoque.Locate('CODIGO', FormPrincipal.vCodigo_do_Produto, []);
    
    if (not dmDados.tbEstoque.Locate('CODIGO', FormPrincipal.vCodigo_do_Produto, [] )) then
    begin
       ShowMessage('ATENÇÃO: Sem produto para Entrada.');
       edCProduto.Text;
       exit;
    end;


    lbSaldoAtual.Caption := IntToStr( dmDados.tbEstoqueESTOQUE.Value );

    edCproduto.Text := IntToStr ( dmDados.tbEstoqueCODIGO.Value );
    edNProduto.Text := dmDados.tbEstoquePRODUTO.Value;
    ceCusto.Text :=  FormatFloat('#,##0.00', dmDados.tbEstoquePRECO.Value );
    btOk.SetFocus;

end;

procedure TFormEntradaProduto.ceQUANTIDADEExit(Sender: TObject);
begin
      ceTotal.Text := FormatFloat('#,##0.00', CalculaTotal );
end;

procedure TFormEntradaProduto.ceCustoExit(Sender: TObject);
begin
      ceTotal.Text := FormatFloat('#,##0.00', CalculaTotal );

end;

procedure TFormEntradaProduto.btFornecClick(Sender: TObject);
begin
    FormFornecedor := TFormFornecedor.Create(Self);
    FormFornecedor.ShowModal;
    FormFornecedor.Release;

    dmDados.tbFornec.Open;
    dmDados.tbFornec.Locate('ID', FormPrincipal.vCodigo_do_Fornec, []);
    if (not dmDados.tbFornec.Locate('ID', FormPrincipal.vCodigo_do_Fornec, [] )) then
    begin
       ShowMessage('ATENÇÃO: Sem fornecedor selecionado.');
       edFornec.Text;
       exit;
    end;
    edFornec.Text := IntToStr( dmDados.tbFornecID.Value );
    edNfornec.Text := dmDados.tbFornecNOME.Value;

end;

end.
