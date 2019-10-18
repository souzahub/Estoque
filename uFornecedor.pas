unit uFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, DBCtrls, DB,
  DBTables;

type
  TFormFornecedor = class(TForm)
    btIncluir: TBitBtn;
    btEditar: TBitBtn;
    btDeletar: TBitBtn;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    EditaBusca: TEdit;
    dsQueryFornec: TDataSource;
    QueryFornec: TQuery;
    QueryFornecENDERECO: TStringField;
    QueryFornecBAIRRO: TStringField;
    QueryFornecCIDADE: TStringField;
    QueryFornecUF: TStringField;
    QueryFornecCEP: TStringField;
    QueryFornecFONE: TStringField;
    QueryFornecEMAIL: TStringField;
    QueryFornecNOME: TStringField;
    QueryFornecCNPJ: TStringField;
    DBGrid1: TDBGrid;
    btFechar: TBitBtn;
    QueryFornecID: TIntegerField;
    procedure btFecharClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEditarClick(Sender: TObject);
    procedure EditaBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vINCLUINDOFORNECEDOR :Boolean;
  end;

var
  FormFornecedor: TFormFornecedor;

implementation

uses uDados,  uEditarCadastro, uIncluiFornecedor, uFalcon;

{$R *.dfm}

procedure TFormFornecedor.btFecharClick(Sender: TObject);
begin
    FormPrincipal.vCodigo_do_Fornec := QueryFornecID.Value;
    Close;
end;

procedure TFormFornecedor.btDeletarClick(Sender: TObject);
begin
  if dmDados.tbFornec.Eof then exit;
   dmDados.tbFornec.Locate('ID', QueryFornecID.Value, []);
   dmDados.tbFornec.Locate('ID', QueryFornecID.Value, []);

  If MessageDlg('DESEJA DELETAR ?',mtConfirmation,[mbyes,mbno],0) = mryes then
    dmDados.tbFornec.delete;
    QueryFornec.Close;
    QueryFornec.Open;

end;

procedure TFormFornecedor.FormActivate(Sender: TObject);
begin
    vINCLUINDOFORNECEDOR := False;
    dmDados.tbFornec.Open;
    QueryFornec.Close;
    QueryFornec.SQL.Clear;
    QueryFornec.SQL.Add('select * from FORNEC order by NOME');
    QueryFornec.Open;
    btIncluir.SetFocus;

end;

procedure TFormFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dmDados.tbFornec.Close;
    
end;

procedure TFormFornecedor.btIncluirClick(Sender: TObject);
begin
    vINCLUINDOFORNECEDOR := True;
    FormMistoiForncedor := TFormMistoiForncedor.Create(Self);
    FormMistoiForncedor.ShowModal;
    FormMistoiForncedor.Release;
    QueryFornec.Close;
    QueryFornec.Open;
end;
procedure TFormFornecedor.btEditarClick(Sender: TObject);
begin
    dmDados.tbFornec.Locate('ID', QueryFornecID.Value, []);
    dmDados.tbFornec.Locate('ID', QueryFornecID.Value, []);
    vINCLUINDOFORNECEDOR := False;
    FormMistoiForncedor := TFormMistoiForncedor.Create(Self);
    FormMistoiForncedor.ShowModal;
    FormMistoiForncedor.Release;
    QueryFornec.Close;
    QueryFornec.Open;
    
end;

procedure TFormFornecedor.EditaBuscaChange(Sender: TObject);
begin
     QueryFornec.Close;
     QueryFornec.SQL.Clear;
     QueryFornec.SQL.Add('select * from FORNEC  where (');
     QueryFornec.SQL.Add('CODIGO LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
     QueryFornec.SQL.Add('or NOME LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
     QueryFornec.SQL.Add('or ENDERECO LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
     QueryFornec.SQL.Add(') order by CODIGO');
     QueryFornec.Open;
end;

end.
