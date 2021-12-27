unit uFrBalanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniScreenMask, uniSweetAlert,
  uniGUIBaseClasses, uniImageList, uniPanel, uniButton, uniBitBtn,
  uniBasicGrid, uniDBGrid, uniDBNavigator, uniLabel, uniEdit,
  uniPageControl, Data.DB, UniFSButton, uniGridExporters, uniMemo,
  uniDBMemo, uniMultiItem, uniListBox, uniDBEdit, UniFSEdit, uniScrollBox;

type
  TfrBalanco = class(TUniFrame)
    dsBalanco: TDataSource;
    PnUsuario: TUniPanel;
    PageCadastro: TUniPageControl;
    Tab1: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    UniNativeImageList1: TUniNativeImageList;
    UniSweetAlert1: TUniSweetAlert;
    UniGridHTMLExporter1: TUniGridHTMLExporter;
    UniGridExcelExporter1: TUniGridExcelExporter;
    UniPanel1: TUniPanel;
    UniLabel8: TUniLabel;
    sbExportHtml: TUniFSButton;
    sbExportExcel: TUniFSButton;
    Tab2: TUniTabSheet;
    btLimpar: TUniFSButton;
    EdPesquisar: TUniEdit;
    btPesquisar: TUniFSButton;
    pnPesquisar: TUniContainerPanel;
    UniScrollBox2: TUniScrollBox;
    UniContainerPanel5: TUniContainerPanel;
    pn1: TUniPanel;
    edBalanco: TUniEdit;
    UniLabel31: TUniLabel;
    pn3: TUniContainerPanel;
    BtGrv: TUniFSButton;
    UniPanel22: TUniPanel;
    lbProdu: TUniLabel;
    UniLabel1: TUniLabel;
    UniFSButton2: TUniFSButton;
    UniLabel2: TUniLabel;
    UniSimplePanel1: TUniSimplePanel;
    UniLabel3: TUniLabel;
    lbCod: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    procedure UniFrameCreate(Sender: TObject);
    procedure sbExportHtmlClick(Sender: TObject);
    procedure sbExportExcelClick(Sender: TObject);
    procedure Tab2BeforeActivate(Sender: TObject;
      var AllowActivate: Boolean);
    procedure TabSaidaBeforeActivate(Sender: TObject;
      var AllowActivate: Boolean);
    procedure Tab1BeforeActivate(Sender: TObject;
      var AllowActivate: Boolean);
    procedure dsBalancoDataChange(Sender: TObject; Field: TField);
    procedure buscadinamica;
    procedure btLimparClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure EdPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure BtGrvClick(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniFSButton2Click(Sender: TObject);
    procedure edBalancoKeyPress(Sender: TObject; var Key: Char);
  private

  public
    { Public declarations }
    xIncluindo,xSoAlerta : Boolean;
    xUltimoId : Integer;// ultimo Id

  end;

implementation

{$R *.dfm}

uses uDados, Main, uFormInfo, ServerModule;

procedure TfrBalanco.EdPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  btPesquisarClick(Sender);
end;

procedure TfrBalanco.dsBalancoDataChange(Sender: TObject; Field: TField);
begin
  dmDados.RDWMOVIENTRADA.Close;
  dmDados.RDWMOVIENTRADA.SQL.Clear;
  dmDados.RDWMOVIENTRADA.SQL.Add('select ENTRADA, FORNECEDOR, TOTALITENS, VALORTOTAL, ID, NPRODUTO, TIPO, CUSTO, CPRODUTO, LOCALPRODUTO, PATRIMONIO ');
  dmDados.RDWMOVIENTRADA.SQL.Add('from entrada where CPRODUTO=:vCPRODUTO order by ID desc');
  dmDados.RDWMOVIENTRADA.Params[0].DataType := ftString;
  dmDados.RDWMOVIENTRADA.Params[0].Value := dmDados.RDWBalancoID.Value;
  dmDados.RDWMOVIENTRADA.Open;


  dmDados.RDWMOVISAIDA.Close;
  dmDados.RDWMOVISAIDA.SQL.Clear;
  dmDados.RDWMOVISAIDA.SQL.Add('select SAIDA, CPRODUTO, QUANTIDADE, VPRODUTO, SETOR, NPRODUTO, PATRIMONIO, ID, USUARIO ');
  dmDados.RDWMOVISAIDA.SQL.Add('from saida where CPRODUTO=:vCPRODUTO order by ID desc');
  dmDados.RDWMOVISAIDA.Params[0].DataType := ftString;
  dmDados.RDWMOVISAIDA.Params[0].Value := dmDados.RDWBalancoID.Value;
  dmDados.RDWMOVISAIDA.Open;

end;

procedure TfrBalanco.edBalancoKeyPress(Sender: TObject; var Key: Char);
begin
  BtGrvClick(Sender);
end;

procedure TfrBalanco.BtGrvClick(Sender: TObject);
begin
  if edBalanco.Text = '' then
  begin
    xSoAlerta := True;
    UniSweetAlert1.Title := ('Atenção!');
    UniSweetAlert1.AlertType := atInfo;
    UniSweetAlert1.ShowCancelButton := True;
    UniSweetAlert1.ShowConfirmButton := False;
    UniSweetAlert1.CancelButtonText := 'Ok';
    UniSweetAlert1.Show('Informe o Valor do Estoque');
    exit;
  end;

  xSoAlerta := False;
  UniSweetAlert1.Title := 'Confirmar Balanço:';
  UniSweetAlert1.AlertType := atQuestion;
  UniSweetAlert1.ShowConfirmButton := True;
  UniSweetAlert1.ConfirmButtonText := 'Sim';
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.CancelButtonText := 'Não';
  UniSweetAlert1.Show(dmDados.RDWBalancoPRODUTO.Value);

  EdPesquisar.Visible := True;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
  PageCadastro.Pages[0].TabVisible := True ;
  PageCadastro.Pages[1].TabVisible := False ;

  exit;
end;

procedure TfrBalanco.btLimparClick(Sender: TObject);
begin

  EdPesquisar.Clear;
  buscadinamica;
  EdPesquisar.SetFocus;

end;

procedure TfrBalanco.btPesquisarClick(Sender: TObject);
begin
  buscadinamica;
end;

procedure TfrBalanco.buscadinamica;  // procedure de busca
begin

  dmDados.RDWBalanco.SQL.Clear;
  dmDados.RDWBalanco.SQL.Add('select * from ESTOQUE  where ');
  dmDados.RDWBalanco.SQL.Add('( ID LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWBalanco.SQL.Add('or PRODUTO LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWBalanco.SQL.Add(') order by PRODUTO');
  dmDados.RDWBalanco.Open;

end;

procedure TfrBalanco.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
   if Column.Field =  dmDados.RDWBalancoINFO then  // Finalizar para a Conclusão
   Begin
    xUltimoId := dmDados.RDWBalancoID.Value ;

    if dmDados.RDWBalancoDTBALANCAO.AsDateTime > 0 then  // bloquea se ja tiver alguma data no cadastro
    begin
      xSoAlerta := True;
      UniSweetAlert1.Title := ('Atenção!');
      UniSweetAlert1.AlertType := atInfo;
      UniSweetAlert1.ShowCancelButton := True;
      UniSweetAlert1.ShowConfirmButton := False;
      UniSweetAlert1.CancelButtonText := 'Ok';
      UniSweetAlert1.Show('Saldo já cadastrado');
      exit;
    end;
      EdPesquisar.Visible := False;
      EdPesquisar.Clear;

      PageCadastro.ActivePage := Tab2 ;
      // Visualizando a Tab2
      PageCadastro.Pages[0].TabVisible := False ;
      PageCadastro.Pages[1].TabVisible := Visible ;

      edBalanco.Text := '';
      edBalanco.SetFocus;
//      edBalanco.setFocus;
      lbCod.Caption := IntToStr( dmDados.RDWBalancoID.Value );
      lbProdu.Text := dmDados.RDWBalancoPRODUTO.Value;


      //ShowMessage(IntToStr( dmDados.RDWBalancoID.Value ));
      xSoAlerta := False;
      xIncluindo := True;
   End;
end;

procedure TfrBalanco.UniFrameCreate(Sender: TObject);
begin
    UniDBGrid1.Exporter.Enabled := True;

    dmDados.RDWBalanco.Open;
    EdPesquisar.Visible := True;
    PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
    PageCadastro.Pages[0].TabVisible := True ;
    PageCadastro.Pages[1].TabVisible := False ;

// // acesso apenas para administrador
//  if MainForm.vADMIN then
//    begin
////      sbExportExcel.Visible := True;
////      sbExportHtml.Visible := True;
//      exit;
//    end

end;

procedure TfrBalanco.UniFSButton2Click(Sender: TObject);
begin
  EdPesquisar.Visible := True;
  dmDados.RDWBalanco.Cancel;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
  PageCadastro.Pages[0].TabVisible := True ;
  PageCadastro.Pages[1].TabVisible := False ;
end;

procedure TfrBalanco.UniSweetAlert1Confirm(Sender: TObject);
var
xErro : string;

begin
  if xIncluindo = True then
   begin
       dmDados.RDWAuxiliar.Close;
       dmDados.RDWAuxiliar.SQL.Clear;
       dmDados.RDWAuxiliar.SQL.Add('update ESTOQUE set BALANCAO=:vBALANCAO, DTBALANCAO=:vDTBALANCAO where ID=:vID');

       dmDados.RDWAuxiliar.Params[0].DataType := ftInteger;
       dmDados.RDWAuxiliar.Params[0].Value := edBalanco.Text;

       dmDados.RDWAuxiliar.Params[1].DataType := ftDate;
       dmDados.RDWAuxiliar.Params[1].Value := '22/12/2021';

       dmDados.RDWAuxiliar.Params[2].DataType := ftInteger;
       dmDados.RDWAuxiliar.Params[2].Value := dmDados.RDWBalancoID.Value;

       dmDados.RDWAuxiliar.ExecSQL( xErro );

       dmDados.RDWBalanco.Close;
       dmDados.RDWBalanco.Open;

      dmDados.RDWBalanco.Locate('ID', xUltimoId, []);// volta para o ultimo Id

      xIncluindo := False;
        exit;
   end;
end;

procedure TfrBalanco.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
  xSoAlerta := False;
  xIncluindo := False;

end;

procedure TfrBalanco.sbExportHtmlClick(Sender: TObject);
begin

  UniDBGrid1.Exporter.Exporter := UniGridHTMLExporter1;
  UniDBGrid1.Exporter.ExportGrid;

end;

procedure TfrBalanco.Tab1BeforeActivate(Sender: TObject;
  var AllowActivate: Boolean);
begin
  pnPesquisar.Visible := True;
  btLimpar.Visible := True;

end;

procedure TfrBalanco.Tab2BeforeActivate(Sender: TObject;
  var AllowActivate: Boolean);
begin

  pnPesquisar.Visible := False;


end;

procedure TfrBalanco.TabSaidaBeforeActivate(Sender: TObject;
  var AllowActivate: Boolean);
begin

  pnPesquisar.Visible := False;

end;

procedure TfrBalanco.sbExportExcelClick(Sender: TObject);
begin

  UniDBGrid1.Exporter.Exporter := UniGridExcelExporter1;
  UniDBGrid1.Exporter.ExportGrid;

end;

end.
