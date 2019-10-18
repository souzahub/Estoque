unit uEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids,DB,
  DBTables;

type
  TFormCadastro = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    btIncluir: TBitBtn;
    btEditar: TBitBtn;
    btDeletar: TBitBtn;
    EditaBusca: TEdit;
    QueryEstoque: TQuery;
    QueryEstoqueCODIGO: TIntegerField;
    QueryEstoquePRODUTO: TStringField;
    QueryEstoqueESTOQUE: TIntegerField;
    QueryEstoquePRECO: TFloatField;
    QueryEstoqueDTSAIDA: TDateTimeField;
    dsQueryEstoque: TDataSource;
    Label1: TLabel;
    QueryEstoqueDTENTRADA: TDateTimeField;
    btFechar: TBitBtn;
    QueryEstoqueFORNEC: TStringField;
    QueryEstoqueESTOQUE_USADO: TIntegerField;
    QueryEstoqueESTOQUE_NOVO: TIntegerField;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure btUsadosClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btIncluirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure EditaBuscaChange(Sender: TObject);
    procedure btNovosClick(Sender: TObject);
    procedure btUsadoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vINCLUINDOESTOQUE : Boolean;    
  end;

var
  FormCadastro: TFormCadastro;

implementation

uses uDados, uCadastroP, uEditarCadastro, uEstoque_Novo, uEstoque_Usados,
  uFALCON, uMovi;

{$R *.dfm}

procedure TFormCadastro.Button1Click(Sender: TObject);
begin
    Close;
end;

procedure TFormCadastro.btUsadosClick(Sender: TObject);
var vCaixas : Integer;
    vPrecoCaixas, vPrecoTotal : Real;
    vCaixaDigitada, vPrecoDigitada : String;
begin
    FormEstoque_Usados := TFormEstoque_Usados.Create(Self);
    FormEstoque_Usados.ShowModal;
    FormEstoque_Usados.Release;

end;

procedure TFormCadastro.btFecharClick(Sender: TObject);
begin
  FormPrincipal.vCodigo_do_Produto := QueryEstoqueCODIGO.Value;
  Close;
end;

procedure TFormCadastro.btDeletarClick(Sender: TObject);
begin
 if dmDados.tbEstoque.Eof then exit;

 dmDados.tbEstoque.Locate('CODIGO', QueryEstoqueCODIGO.Value, []);
 dmDados.tbEstoque.Locate('CODIGO', QueryEstoqueCODIGO.Value, []);

If MessageDlg('DESEJA DELETAR O PRODUTO '+dmDados.tbEstoquePRODUTO.Value+' ?',mtConfirmation,[mbyes,mbno],0) = mryes then
    dmDados.tbEstoque.delete;
    QueryEstoque.Close;
    QueryEstoque.Open;

    
end;

procedure TFormCadastro.FormActivate(Sender: TObject);
begin
    vINCLUINDOESTOQUE := False;
    dmDados.tbEstoque.Open;
    QueryEstoque.Close;
    QueryEstoque.SQL.Clear;
    if FormPrincipal.vBuscaSaida then
       QueryEstoque.SQL.Add('select * from ESTOQUE where ESTOQUE>0 order by PRODUTO')
    else
       QueryEstoque.SQL.Add('select * from ESTOQUE order by PRODUTO');
    QueryEstoque.Open;
    btIncluir.SetFocus;
end;

procedure TFormCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dmDados.tbEstoque.Close;

end;

procedure TFormCadastro.btIncluirClick(Sender: TObject);
begin
    vINCLUINDOESTOQUE := True;
    FormMistoEstoque := TFormMistoEstoque.Create(Self);
    FormMistoEstoque.ShowModal;
    FormMistoEstoque.Release;
    QueryEstoque.Close;
    QueryEstoque.Open;

end;

procedure TFormCadastro.btEditarClick(Sender: TObject);
begin
    dmDados.tbEstoque.Locate('CODIGO', QueryEstoqueCODIGO.Value, []);
    dmDados.tbEstoque.Locate('CODIGO', QueryEstoqueCODIGO.Value, []);
    vINCLUINDOESTOQUE := False;
    FormMistoEstoque := TFormMistoEstoque.Create(Self);
    FormMistoEstoque.ShowModal;
    FormMistoEstoque.Release;
    QueryEstoque.Close;
    QueryEstoque.Open;
end;

procedure TFormCadastro.EditaBuscaChange(Sender: TObject);
begin
    QueryEstoque.Close;
    QueryEstoque.SQL.Clear;
    if FormPrincipal.vBuscaSaida then
      QueryEstoque.SQL.Add('select * from ESTOQUE where ESTOQUE>0 and (')
    else
      QueryEstoque.SQL.Add('select * from ESTOQUE  where (');

    QueryEstoque.SQL.Add('CODIGO LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
    QueryEstoque.SQL.Add('or PRODUTO LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
    QueryEstoque.SQL.Add('or PRECO LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
    QueryEstoque.SQL.Add(') order by CODIGO');
    QueryEstoque.Open;

end;

procedure TFormCadastro.btNovosClick(Sender: TObject);
begin
    FormEstoque_Novo := TFormEstoque_Novo.Create(Self);
    FormEstoque_Novo.ShowModal;
    FormEstoque_Novo.Release;
end;

procedure TFormCadastro.btUsadoClick(Sender: TObject);
begin
    FormEstoque_Usados := TFormEstoque_Usados.Create(Self);
    FormEstoque_Usados.ShowModal;
    FormEstoque_Usados.Release;
end;

procedure TFormCadastro.BitBtn1Click(Sender: TObject);
begin
    FormPrincipal.vMoviIndividual := True;
    FormPrincipal.vCodigo_do_Produto := QueryEstoqueCODIGO.Value;
    FormMovi := TFormMovi.Create(Self);
    FormMovi.ShowModal;
    FormMovi.Release;
    FormPrincipal.vMoviIndividual := False;
end;

end.


