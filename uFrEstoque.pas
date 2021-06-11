unit uFrEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniScreenMask, uniSweetAlert,
  uniGUIBaseClasses, uniImageList, uniPanel, uniButton, uniBitBtn,
  uniBasicGrid, uniDBGrid, uniDBNavigator, uniLabel, uniEdit,
  uniPageControl, Data.DB, UniFSButton, uniGridExporters, uniMemo,
  uniDBMemo, uniMultiItem, uniListBox, uniDBEdit;

type
  TfrEstoque = class(TUniFrame)
    dsEstoque: TDataSource;
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
    dsInfo: TDataSource;
    pnInfo: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniListBox1: TUniListBox;
    UniFSButton2: TUniFSButton;
    TabEntrada: TUniTabSheet;
    TabSaida: TUniTabSheet;
    dsMovEntrada: TDataSource;
    dsMovSaida: TDataSource;
    UniDBGrid2: TUniDBGrid;
    UniDBGrid3: TUniDBGrid;
    btLimpar: TUniFSButton;
    EdPesquisar: TUniEdit;
    btPesquisar: TUniFSButton;
    pnPesquisar: TUniContainerPanel;
    procedure UniFrameCreate(Sender: TObject);
    procedure sbExportHtmlClick(Sender: TObject);
    procedure sbExportExcelClick(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniListBox1Click(Sender: TObject);
    procedure UniFSButton2Click(Sender: TObject);
    procedure TabEntradaBeforeActivate(Sender: TObject;
      var AllowActivate: Boolean);
    procedure TabSaidaBeforeActivate(Sender: TObject;
      var AllowActivate: Boolean);
    procedure Tab1BeforeActivate(Sender: TObject;
      var AllowActivate: Boolean);
    procedure dsEstoqueDataChange(Sender: TObject; Field: TField);
    procedure buscadinamica;
    procedure btLimparClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure EdPesquisarKeyPress(Sender: TObject; var Key: Char);
  private
    FUrl : string;
    procedure ImagemSeq; // imagem da sequencia
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uDados, Main, uFormInfo, ServerModule;

procedure TfrEstoque.ImagemSeq; // atualiza Lista e cria imagem em tempo de execução  e direciona para as imagens relacionadas de acordo com o numero de processo
var
  FFolder : string;
  Sr : TSearchRec;
  vItem : Integer;
  mFile, mExt, DestFolder : string;
  W, vColunaInicial : Integer;

begin
      DestFolder := 'Doc_'+IntToStr ( dmDados.RDWEstoqueID.Value );

      UniListBox1.Items.Clear;
      FFolder := UniServerModule.StartPath+'files\uploads\'+DestFolder+'\';  // destino para da imagens do processo

      FUrl := UniServerModule.FilesFolderURL+'Uploads/'+DestFolder+'\'; // destino para chamada do arquivo no form

      if SysUtils.FindFirst(FFolder+'*.*', faAnyFile, Sr) = 0 then
      begin
        repeat
          if Sr.Attr and faDirectory = 0 then
            UniListBox1.Items.Add(Sr.Name);
        until SysUtils.FindNext(sr) <> 0;
        SysUtils.FindClose(sr);
      end;


end;



procedure TfrEstoque.EdPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  btPesquisarClick(Sender);
end;

procedure TfrEstoque.dsEstoqueDataChange(Sender: TObject; Field: TField);
begin
  dmDados.RDWMOVIENTRADA.Close;
  dmDados.RDWMOVIENTRADA.SQL.Clear;
  dmDados.RDWMOVIENTRADA.SQL.Add('select ENTRADA, FORNECEDOR, TOTALITENS, VALORTOTAL, ID, NPRODUTO, TIPO, CUSTO, CPRODUTO, LOCALPRODUTO, PATRIMONIO ');
  dmDados.RDWMOVIENTRADA.SQL.Add('from entrada where CPRODUTO=:vCPRODUTO order by ID desc');
  dmDados.RDWMOVIENTRADA.Params[0].DataType := ftString;
  dmDados.RDWMOVIENTRADA.Params[0].Value := dmDados.RDWEstoqueID.Value;
  dmDados.RDWMOVIENTRADA.Open;


  dmDados.RDWMOVISAIDA.Close;
  dmDados.RDWMOVISAIDA.SQL.Clear;
  dmDados.RDWMOVISAIDA.SQL.Add('select SAIDA, CPRODUTO, QUANTIDADE, VPRODUTO, SETOR, NPRODUTO, PATRIMONIO, ID, USUARIO ');
  dmDados.RDWMOVISAIDA.SQL.Add('from saida where CPRODUTO=:vCPRODUTO order by ID desc');
  dmDados.RDWMOVISAIDA.Params[0].DataType := ftString;
  dmDados.RDWMOVISAIDA.Params[0].Value := dmDados.RDWEstoqueID.Value;
  dmDados.RDWMOVISAIDA.Open;

end;

procedure TfrEstoque.btLimparClick(Sender: TObject);
begin

  EdPesquisar.Clear;
  buscadinamica;
  EdPesquisar.SetFocus;

end;

procedure TfrEstoque.btPesquisarClick(Sender: TObject);
begin
  buscadinamica;
end;

procedure TfrEstoque.buscadinamica;  // procedure de busca
begin

  dmDados.RDWEstoque.SQL.Clear;
  dmDados.RDWEstoque.SQL.Add('select * from ESTOQUE  where ');
  dmDados.RDWEstoque.SQL.Add('( ID LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWEstoque.SQL.Add('or PRODUTO LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWEstoque.SQL.Add(') order by PRODUTO');
  dmDados.RDWEstoque.Open;

end;

procedure TfrEstoque.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
  // abre o form de  detalhes
  if Column.Field = dmDados.RDWEstoqueVISUALIZAR then
  begin
     pnInfo.Visible := True;
     ImagemSeq;

  end;

end;

procedure TfrEstoque.UniFrameCreate(Sender: TObject);
begin
  dmDados.RDWEstoque.Open;

  UniDBGrid1.Exporter.Enabled := True;

 // acesso apenas para administrador
  if MainForm.vADMIN then
    begin
//      sbExportExcel.Visible := True;
//      sbExportHtml.Visible := True;
      exit;
    end

end;

procedure TfrEstoque.UniFSButton2Click(Sender: TObject);
begin

  pnInfo.Visible := False;

end;

procedure TfrEstoque.UniListBox1Click(Sender: TObject);
begin
  try
    UniSession.BrowserWindow(FUrl+UniListBox1.Items[UniListBox1.ItemIndex],0,0,''); // abre a imagem na outra aba do navegador
    pnInfo.Visible := False;
  except

  end;
end;

procedure TfrEstoque.sbExportHtmlClick(Sender: TObject);
begin

  UniDBGrid1.Exporter.Exporter := UniGridHTMLExporter1;
  UniDBGrid1.Exporter.ExportGrid;

end;

procedure TfrEstoque.Tab1BeforeActivate(Sender: TObject;
  var AllowActivate: Boolean);
begin
  pnPesquisar.Visible := True;
  btLimpar.Visible := True;

end;

procedure TfrEstoque.TabEntradaBeforeActivate(Sender: TObject;
  var AllowActivate: Boolean);
begin

  pnPesquisar.Visible := False;


end;

procedure TfrEstoque.TabSaidaBeforeActivate(Sender: TObject;
  var AllowActivate: Boolean);
begin

  pnPesquisar.Visible := False;

end;

procedure TfrEstoque.sbExportExcelClick(Sender: TObject);
begin

  UniDBGrid1.Exporter.Exporter := UniGridExcelExporter1;
  UniDBGrid1.Exporter.ExportGrid;

end;

end.
