unit uSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, Curedit, DB, DBTables, ExtCtrls;

type
  TFormSaida = class(TForm)
    meData: TMaskEdit;
    lbData: TLabel;
    lbCodigoProduto: TLabel;
    edCproduto: TEdit;
    btSaida: TBitBtn;
    btFechar: TBitBtn;
    lbNproduto: TLabel;
    edNproduto: TEdit;
    lbTotalIntens: TLabel;
    ceQUANTIDADE: TCurrencyEdit;
    lbVtotal: TLabel;
    edVproduto: TEdit;
    Label1: TLabel;
    lbSetor: TLabel;
    edUsuario: TEdit;
    QueryEstoque: TQuery;
    dtQuerySaida: TDataSource;
    QueryEstoqueSAIDA: TDateTimeField;
    QueryEstoqueCPRODUTO: TIntegerField;
    QueryEstoqueQUANTIDADE: TIntegerField;
    QueryEstoqueVPRODUTO: TFloatField;
    QueryEstoqueSETOR: TStringField;
    QueryEstoqueNPRODUTO: TStringField;
    btOk: TBitBtn;
    rgTIPO: TRadioGroup;
    lbPatrimonio: TLabeledEdit;
    QueryEstoquePATRIMONIO: TStringField;
    Label2: TLabel;
    cbSetor: TComboBox;
    procedure btFecharClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btSaidaClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSaida: TFormSaida;

implementation

uses  uFuncoes, uEstoque, uDados, uFALCON;

{$R *.dfm}

procedure TFormSaida.btFecharClick(Sender: TObject);
begin  
  close;

end;

procedure TFormSaida.btcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormSaida.btSalvarClick(Sender: TObject);
begin
  If MessageDlg('DESEJA SALVAR ?',mtConfirmation,[mbyes,mbno],0) = mryes then
  Close;
end;

procedure TFormSaida.btSaidaClick(Sender: TObject);

var vQUANTIDADE: Integer;
var vProduto: Real;

begin
 if edCproduto.text = '' then
  begin
    ShowMessage('ATENÇÃO: Código exige preenchimento obrigatório.');
    edCProduto.SetFocus;
    exit;
    end;
      if ceQUANTIDADE.Text = '0' then
  begin
    ShowMessage('ATENÇÃO: Quantidade preenchimento não pode conter  0.');
    ceQUANTIDADE.SetFocus;
  exit;  
    end;
     if cbSetor.Text = '' then
  begin
    ShowMessage('ATENÇÃO: Setor preenchimento obrigatório.');
  exit;
    end;
  vQUANTIDADE := StrToInt( TiraStr( ceQUANTIDADE.Text, '.'));
  if vQUANTIDADE > dmDados.tbEstoqueESTOQUE.Value then
  begin
     ShowMessage('ATENÇÃO: Quantidade de saída maior que o saldo em estoque.');
     exit;
  end;

  if rgTipo.ItemIndex = 0 then  // estoque novo
  begin
     if vQUANTIDADE >  dmDados.tbEstoqueESTOQUE_NOVO.Value then
     begin
       ShowMessage('ATENÇÃO: Quantidade de saída maior que o saldo em estoque novo.');
       exit;
     end;
  end
  else
  begin
     if vQUANTIDADE >  dmDados.tbEstoqueESTOQUE_USADO.Value then
     begin
       ShowMessage('ATENÇÃO: Quantidade de saída maior que o saldo em estoque de usado.');
       exit;
     end;
  end;
   vProduto :=  StrToFloat( TiraStr( edVproduto.Text, '.'));


  if MessageDlg('Confirmar a saída ?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dmDados.tbSaida.Open;
    dmDados.tbSaida.Append;
    dmDados.tbSaidaSAIDA.Value := StrToDate( meData.Text );
    dmDados.tbSaidaCPRODUTO.Value := FormPrincipal.vCodigo_do_Produto;
    dmDados.tbSaidaNPRODUTO.Value := edNProduto.Text;
    dmDados.tbSaidaVPRODUTO.Value :=  vProduto;
    dmDados.tbSaidaSETOR.Value := cbSetor.Text;
    dmDados.tbSaidaPATRIMONIO.Value := lbPatrimonio.Text;
    dmDados.tbSaidaQUANTIDADE.Value := vQUANTIDADE;
    dmdados.tbSaidaUSUARIO.Value :=  edUsuario.Text;
    btOk.SetFocus;


    dmDados.tbSaida.Post;

  end;

  dmDados.tbEstoque.Open;
  dmDados.tbEstoque.Locate('CODIGO', FormPrincipal.vCodigo_do_Produto, [] );
  if dmDados.tbEstoque.Locate('CODIGO', FormPrincipal.vCodigo_do_Produto, [] ) then
  begin
      dmDados.tbEstoque.Edit;
      dmDados.tbEstoqueESTOQUE.Value := dmDados.tbEstoqueESTOQUE.Value - vQUANTIDADE;
      dmDados.tbEstoqueDTSAIDA.Value := StrToDate( meData.Text );
      if rgTipo.ItemIndex = 0 then
         dmDados.tbEstoqueESTOQUE_NOVO.Value := dmDados.tbEstoqueESTOQUE_NOVO.Value - vQUANTIDADE
      else
        dmDados.tbEstoqueESTOQUE_USADO.Value := dmDados.tbEstoqueESTOQUE_USADO.Value - vQUANTIDADE;

     dmDados.tbEstoque.Post;
  end;
  dmDados.tbEstoque.Close;
  dmDados.tbSaida.Close;
  dmDados.tbSaida.Open;
  edCproduto.Clear;
  edNproduto.Clear;
  ceQUANTIDADE.Clear;
  edVproduto.Clear;
  lbPatrimonio.Clear;
  cbSetor.Clear;



end;



procedure TFormSaida.btOkClick(Sender: TObject);
begin
    FormPrincipal.vBuscaSaida := True;
    FormCadastro := TFormCadastro.Create(Self);
    FormCadastro.ShowModal;
    FormCadastro.Release;
    FormPrincipal.vBuscaSaida := False;
    dmDados.tbEstoque.Open;
    dmDados.tbEstoque.Locate('CODIGO', FormPrincipal.vCodigo_do_Produto, []);
    if (not dmDados.tbEstoque.Locate('CODIGO', FormPrincipal.vCodigo_do_Produto, [])) then
    begin
       ShowMessage('ATENÇÃO: Sem produto para saída.');
       edCProduto.Text;
       exit;
    end;
    

    edCproduto.Text := IntToStr ( dmDados.tbEstoqueCODIGO.Value );
    edNProduto.Text := dmDados.tbEstoquePRODUTO.Value;
    edVproduto.Text :=  FormatFloat('#,##0.00', dmDados.tbEstoquePRECO.Value )
    

end;

procedure TFormSaida.FormActivate(Sender: TObject);
begin
    meData.Text := DateToStr( Date );
    meData.SetFocus;
    edNproduto.Clear;
    ceQUANTIDADE.Clear;
    lbPatrimonio.Clear;
    edVproduto.Clear;
    edVproduto.Clear;
    lbPatrimonio.Clear;
    cbSetor.Text := '';



end;

end.
