unit uCadastroP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Curedit, ExtCtrls, Mask, Buttons, DB, DBTables;

type
  TFormMistoEstoque = class(TForm)
    lbCodigoProduto: TLabeledEdit;
    lbNProduto: TLabeledEdit;
    btSalvar: TBitBtn;
    btFechar: TBitBtn;
    QueryProximoCodigo: TQuery;
    QueryProximoCodigoCODIGO: TIntegerField;
    procedure btSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMistoEstoque: TFormMistoEstoque;

implementation

uses uDados, uFuncoes, uEstoque;

{$R *.dfm}

procedure TFormMistoEstoque.btSalvarClick(Sender: TObject);
begin
  if lbCodigoProduto.text = '' then
  begin
    ShowMessage('ATENÇÃO: Código exige preenchimento obrigatório.');
    lbCodigoProduto.SetFocus;
    exit;
  end;

  if lbNProduto.text = '' then
  begin
    ShowMessage('ATENÇÃO: Nome do produto exige preenchimento obrigatório.');
    lbNProduto.SetFocus;
    exit;
  end;

  if FormCadastro.vINCLUINDOESTOQUE then   // se estiver incluindo
  begin
     dmDados.tbEstoque.Locate('CODIGO', lbCodigoProduto.Text, []);
     if dmDados.tbEstoque.Locate('CODIGO', lbCodigoProduto.Text, []) then
     begin
       ShowMessage('ATENÇÃO: Código Já cadastrado para produto '+ dmDados.tbEstoquePRODUTO.Value );
       lbCodigoProduto.SetFocus;
       exit;
     end;
     dmDados.tbEstoque.Locate('PRODUTO', lbNProduto.Text, []);
     if dmDados.tbEstoque.Locate('PRODUTO', lbNProduto.Text, []) then
     begin
       ShowMessage('ATENÇÃO: Produto já cadastrado para o codigo '+ IntToStr( dmDados.tbEstoqueCODIGO.Value ) );
       lbNProduto.SetFocus;
       exit;
     end;
  end;

  If MessageDlg('DESEJA SALVAR ?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    if FormCadastro.vINCLUINDOESTOQUE then   // se estiver incluindo
    begin
      dmDados.tbEstoque.Open;
      dmDados.tbEstoque.Append;
      dmDados.tbEstoqueCODIGO.Value := StrToInt( lbCodigoProduto.Text  );
      dmDados.tbEstoqueProduto.Value := lbNProduto.Text ;
      dmDados.tbEstoque.Post;
    end
    else  // se tiver editando
    begin
      dmDados.tbEstoque.Edit;
      dmDados.tbEstoquePRODUTO.Value := lbNProduto.Text ;
      dmDados.tbEstoque.Post;

    end;
    dmDados.tbEStoque.Close;
    dmDados.tbEstoque.Open;
  end;
  Close;
end;

procedure TFormMistoEstoque.FormActivate(Sender: TObject);
var vNOVOCODIGO : Integer;
begin
    QueryProximoCodigo.Open;
    vNOVOCODIGO := QueryProximoCodigoCODIGO.Value + 1;

    if FormCadastro.vINCLUINDOESTOQUE then   // se estiver incluindo
    begin
       FormMistoEstoque.Caption :=  'Cadastro Produto - Incluindo...';
       lbCodigoProduto.Text := IntToStr( vNOVOCODIGO );
       lbCodigoProduto.ReadOnly := True;
       lbNProduto.Clear;
       lbNProduto.SetFocus;
    end
    else  // senao se, editando
    begin
       FormMistoEstoque.Caption :=  'Cadastro Produto - Editando...';
       lbCodigoProduto.Text := IntToStr( dmDados.tbEstoqueCODIGO.Value );
       lbCodigoProduto.ReadOnly := True;
       lbNProduto.Text := dmDados.tbEstoquePRODUTO.Value;
       lbNProduto.SetFocus;
    end;
end;

procedure TFormMistoEstoque.btFecharClick(Sender: TObject);
begin
  Close;
end;

end.















