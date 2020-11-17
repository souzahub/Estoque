unit uFrCadastroProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMultiItem, uniComboBox, uniDBComboBox,
  uniSweetAlert, uniScreenMask, uniGUIBaseClasses, uniImageList, uniPanel,
  uniButton, uniBitBtn, uniScrollBox, uniBasicGrid, uniDBGrid,
  uniDBNavigator, uniLabel, uniEdit, uniPageControl, Data.DB, uniRadioGroup,
  uniCheckBox, uniDBLookupComboBox, uniStatusBar, UniFSButton, UniFSToggle,
  UniFSCombobox, uniListBox, uniFileUpload, uniMemo, UniFSToast;

type
  TfrCadastroProduto = class(TUniFrame)
    dsProdutos: TDataSource;
    PnUsuario: TUniPanel;
    PageCadastro: TUniPageControl;
    Tab1: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    Tab2: TUniTabSheet;
    UniNativeImageList1: TUniNativeImageList;
    UniScreenMask1: TUniScreenMask;
    UniSweetAlert1: TUniSweetAlert;
    dsGrupos: TDataSource;
    UniPanel1: TUniPanel;
    UniLabel8: TUniLabel;
    EdPesquisar: TUniEdit;
    BtCan: TUniFSButton;
    BtGrv: TUniFSButton;
    BtExc: TUniFSButton;
    BtAlt: TUniFSButton;
    BtInc: TUniFSButton;
    UniPanel3: TUniPanel;
    UniContainerPanel1: TUniContainerPanel;
    lbGrupo: TUniLabel;
    dbCbGrupos: TUniFSComboBox;
    UniLabel6: TUniLabel;
    edNome: TUniEdit;
    tgl1: TUniFSToggle;
    UniLabel1: TUniLabel;
    sbExcluir: TUniFSButton;
    sbAnexar: TUniFSButton;
    UniFileUpload: TUniFileUpload;
    Toast: TUniFSToast;
    UniFileUploadEditar: TUniFileUpload;
    UniContainerPanel2: TUniContainerPanel;
    UniListBox1: TUniListBox;
    UniLabel2: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure BtIncClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
    procedure BtExcClick(Sender: TObject);
    procedure BtGrvClick(Sender: TObject);
    procedure BtCanClick(Sender: TObject);
    procedure EdPesquisarChange(Sender: TObject);
    procedure tgl1Toggled(const Value: Boolean);
    procedure AtualizarLista;// procedure atualiza lista
    procedure AtualizarListaEditar; // procedure atualiza lista para editar
    procedure sbAnexarClick(Sender: TObject);
    procedure UniFileUploadCompleted(Sender: TObject;
      AStream: TFileStream);
    procedure sbExcluirClick(Sender: TObject);
    procedure UniFileUploadEditarCompleted(Sender: TObject;
      AStream: TFileStream);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniFSButton1Click(Sender: TObject);
    procedure UniDBGrid1BodyDblClick(Sender: TObject); // procedure atualiza lista uploado
    procedure VisualisaBotao;
  private
     xIncluindo, xDeletando, xEditando, xSoAlerta : Boolean;
     FUrl : string;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uDados, Main, uformCadGrupo, uFuncoes, ServerModule;

procedure TfrCadastroProduto.VisualisaBotao;
begin
   if MainForm.vADMIN then
    begin
     BtExc.Visible := True;
     exit;
    end
    else
    begin
     BtExc.Visible := False;
     exit;
    end;

end;

procedure TfrCadastroProduto.AtualizarLista;  // procedure atualiza lista uploado
var
  FFolder : string;
  Sr : TSearchRec;
  seq : Integer;
  mFile, mExt, DestFolder, xProcRecebe : string;
  W, vColunaInicial : Integer;

begin
      seq := dmDados.RDWCAD_PRODUTOID.Value+1;
      xProcRecebe:='Doc_'+IntToStr(seq); //recebe valor do Numero do processo

      DestFolder:=UniServerModule.StartPath+'files\Uploads\'+xProcRecebe+'\'; //destino para onde vai o arquivo / usando a variavel que recebe o valor do processo
      DestFolder := 'Doc_'+IntToStr ( seq ); //destino das imagens em tempo de excução


      UniListBox1.Items.Clear;
      FFolder := UniServerModule.StartPath+'files\uploads\'+DestFolder+'\';  // destino para da imagens do processo


      if SysUtils.FindFirst(FFolder+'*.*', faAnyFile, Sr) = 0 then
      begin
        repeat
          if Sr.Attr and faDirectory = 0 then
            UniListBox1.Items.Add(Sr.Name);
        until SysUtils.FindNext(sr) <> 0;
        SysUtils.FindClose(sr);
      end;
end;
procedure TfrCadastroProduto.AtualizarListaEditar;  // procedure atualiza lista upload para editar
var
  FFolder : string;
  Sr : TSearchRec;
  seq : Integer;
  mFile, mExt, DestFolder, xProcRecebe : string;
  W, vColunaInicial : Integer;

begin
      seq := dmDados.RDWCAD_PRODUTOID.Value;
      xProcRecebe:='Doc_'+IntToStr(seq); //recebe valor do Numero do processo

      DestFolder:=UniServerModule.StartPath+'files\Uploads\'+xProcRecebe+'\'; //destino para onde vai o arquivo / usando a variavel que recebe o valor do processo

      DestFolder := 'Doc_'+IntToStr ( seq ); //destino das imagens em tempo de excução

      UniListBox1.Items.Clear;

      FFolder := UniServerModule.StartPath+'files\uploads\'+DestFolder+'\';  // destino para da imagens do processo

      if SysUtils.FindFirst(FFolder+'*.*', faAnyFile, Sr) = 0 then
      begin
        repeat
          if Sr.Attr and faDirectory = 0 then
            UniListBox1.Items.Add(Sr.Name);
        until SysUtils.FindNext(sr) <> 0;
        SysUtils.FindClose(sr);
      end;

end;

procedure TfrCadastroProduto.BtAltClick(Sender: TObject);
begin

  EdPesquisar.Visible := False;
  xSoAlerta := False;
  xIncluindo := False;
  xEditando := True;
  xDeletando := False;

  dbCbGrupos.SetFocus;

// Visualizando a Tab2
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
  PageCadastro.Pages[0].TabVisible := False ;
  PageCadastro.Pages[1].TabVisible := True ;

 // Visualizando Botao do Crud
  BtInc.Enabled := False;
  BtAlt.Enabled := False;
  BtExc.Enabled := False;
  BtGrv.Enabled := True;
  BtCan.Enabled := True;

  edNome.Text := dmDados.RDWCAD_PRODUTOPRODUTO.Value;
  dbCbGrupos.Text := dmDados.RDWCAD_PRODUTOGRUPO.Value;

  AtualizarListaEditar;//

end;

procedure TfrCadastroProduto.BtCanClick(Sender: TObject);
begin

  EdPesquisar.Visible := True;
  dmDados.RDWCAD_PRODUTO.Cancel;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
  PageCadastro.Pages[0].TabVisible := True ;
  PageCadastro.Pages[1].TabVisible := False ;

  // Visualizando Botao do Crud
  BtInc.Enabled := True;
  BtAlt.Enabled := True;
  BtExc.Enabled := True;
  BtGrv.Enabled := False;
  BtCan.Enabled := False;
  EdPesquisar.Clear;

  dmDados.RDWCAD_PRODUTO.Close();
  dmDados.RDWCAD_PRODUTO.Open();

  dmDados.RDWEstoque.Close();
  dmDados.RDWEstoque.Open();

  btAlt.Enabled := dmDados.RDWCAD_PRODUTO.RecordCount > 0; // verifica se tem registro/ se nao => ele deixa ele desabilitado
  btExc.Enabled := dmDados.RDWCAD_PRODUTO.RecordCount > 0; // verifica se tem registro/ se nao => ele deixa ele desabilitado.

end;

procedure TfrCadastroProduto.BtExcClick(Sender: TObject);
begin

  //  Confirmacao da exclusao com SweetAlert1
  xSoAlerta := False;
  xIncluindo := False;
  xEditando := False;
  xDeletando := True;


  UniSweetAlert1.Title := 'Deseja excluir esse Produto';
  UniSweetAlert1.AlertType := atError;
  UniSweetAlert1.CancelButtonColor := $00684E3E;
  UniSweetAlert1.ConfirmButtonColor :=  rgb(157, 224, 246) ;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.Show( dmDados.RDWCAD_PRODUTOPRODUTO.Value);

end;

procedure TfrCadastroProduto.BtGrvClick(Sender: TObject);
begin
   EdPesquisar.Visible := True;
  //  usando  SweetAlert1
  if dbCbGrupos.Text = '' then
  begin
    xSoAlerta := True;   // bloqueia alerta
    UniSweetAlert1.Title := ('Grupo Obrigatório!');
    UniSweetAlert1.AlertType := atInfo;
    UniSweetAlert1.ShowCancelButton := True;
    UniSweetAlert1.ShowConfirmButton := False;
    UniSweetAlert1.CancelButtonColor := clMaroon;
    UniSweetAlert1.CancelButtonText := 'OK';
    UniSweetAlert1.Show('Informe o Grupo');
    exit;
  end;

  //  Salvando com SweetAlert1
  xSoAlerta := False;
  UniSweetAlert1.Title := 'Deseja salvar esse Produto ?';
  UniSweetAlert1.AlertType := atQuestion;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.ConfirmButtonColor := clMaroon;
  UniSweetAlert1.CancelButtonColor := $00684E3E;
  UniSweetAlert1.CancelButtonText := 'Não';
  UniSweetAlert1.ShowConfirmButton := True;
  UniSweetAlert1.Show(edNome.Text);

  BtInc.Enabled := True;
  BtAlt.Enabled := True;
  BtExc.Enabled := True;
  BtGrv.Enabled := False;
  BtCan.Enabled := False;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
  PageCadastro.Pages[0].TabVisible := True ;
  PageCadastro.Pages[1].TabVisible := False ;

end;

procedure TfrCadastroProduto.BtIncClick(Sender: TObject);
var
seq : Integer;
seqGrupo : string ;

begin
  VisualisaBotao;
  EdPesquisar.Clear;
  EdPesquisarChange(Sender);  // é usado para que volte para o Id inicial independente de qual query esteja selecionada
  seq := dmDados.RDWCAD_PRODUTOID.Value+1;  // acrescenta +1 para o ID
  if not DirectoryExists(UniServerModule.StartPath+'files\uploads\Doc_'+IntToStr(seq)) then
     CreateDir(UniServerModule.StartPath+'files\Uploads\Doc_'+IntToStr(seq));

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
  BtAlt.Enabled := False;
  BtExc.Enabled := False;
  BtGrv.Enabled := True;
  BtCan.Enabled := True;
  edNome.Clear;

  dbCbGrupos.ItemIndex := -1;
  dbCbGrupos.EmptyText := ' GRUPOS ';

  dbCbGrupos.Items.Clear;
  dmDados.RDWGrupos.Open;
  while (not dmDados.RDWGrupos.eof) do // enquanto nao for o ultimo
  begin

//  dbCBGrupos.Items.Add(StrZero( IntToStr( dmDados.RDWGruposID.Value ), 3 ) +' - '+ dmDados.RDWGruposGRUPOS.Value);
    dbCBGrupos.Items.Add( dmDados.RDWGruposGRUPOS.Value );
    dmDados.RDWGrupos.Next;

  end;

  dbCbGrupos.Text := '';
  AtualizarLista;// função Atualizar lista quando for clicado no grid

end;

procedure TfrCadastroProduto.EdPesquisarChange(Sender: TObject);
begin

  // pesquisa dinamica na tabela Usuario
  dmDados.RDWCAD_PRODUTO.SQL.Clear;
  dmDados.RDWCAD_PRODUTO.SQL.Add('select * from ESTOQUE  where');
  dmDados.RDWCAD_PRODUTO.SQL.Add('(ID LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWCAD_PRODUTO.SQL.Add('or PRODUTO LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWCAD_PRODUTO.SQL.Add(')order by ID desc');
  dmDados.RDWCAD_PRODUTO.Open;


end;

procedure TfrCadastroProduto.sbAnexarClick(Sender: TObject);
begin
  if xEditando = True then
  begin
    UniFileUploadEditar.Execute;
    AtualizarListaEditar;
    exit;
  end
  else
   UniFileUpload.Execute;
   AtualizarLista;
end;

procedure TfrCadastroProduto.sbExcluirClick(Sender: TObject);
var
DestFolder, FFolder:  string;
seq, seqEditar : Integer;


begin

   if xEditando = True then
  begin
    seqEditar := dmDados.RDWCAD_PRODUTOID.Value;

    DestFolder := 'Doc_'+IntToStr ( seqEditar );

    FFolder := UniServerModule.StartPath+'files\uploads\'+DestFolder+'\';  // destino para da imagens do processo
    if (UniListBox1.ItemIndex)>-1 then
    begin
        //ShowMessage(FFolder+UniListBox1.Items[UniListBox1.ItemIndex]);
      deletefile(FFolder+UniListBox1.Items[UniListBox1.ItemIndex]);
      UniListBox1.Items.Delete(UniListBox1.ItemIndex);
      exit;
    end
  else
    ShowMessage('Impossivel excluir');
    exit;

  end
  else

//   UniFileUpload.Execute;
//   AtualizarLista;

   seq := dmDados.RDWCAD_PRODUTOID.Value+1;

   DestFolder := 'Doc_'+IntToStr ( seq );

   FFolder := UniServerModule.StartPath+'files\uploads\'+DestFolder+'\';  // destino para da imagens do processo
  if (UniListBox1.ItemIndex)>-1 then
  begin
      //ShowMessage(FFolder+UniListBox1.Items[UniListBox1.ItemIndex]);
     deletefile(FFolder+UniListBox1.Items[UniListBox1.ItemIndex]);
     UniListBox1.Items.Delete(UniListBox1.ItemIndex);
  end
  else
    ShowMessage('Impossivel excluir');
end;

procedure TfrCadastroProduto.UniDBGrid1BodyDblClick(Sender: TObject);
begin
  BtAltClick(Sender);
end;

procedure TfrCadastroProduto.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin

  if not DirectoryExists(UniServerModule.StartPath+'files\Uploads\'+'Proc_'+IntToStr ( dmDados.RDWCAD_PRODUTOID.Value ) ) then   // cria pasta para envio de arquivos direcionado pelo numero do processo
    CreateDir(UniServerModule.StartPath+'files\Uploads\'+'Doc_'+IntToStr ( dmDados.RDWCAD_PRODUTOID.Value ) );
  AtualizarListaEditar;// função Atualizar lista quando for clicado no grid



end;

procedure TfrCadastroProduto.UniFileUploadCompleted(Sender: TObject;
  AStream: TFileStream);
  var

  DestName : string;
  DestFolder : string;
  I, seq, vNProc: Integer;
  vLocal : string;
  xProcRecebe : string ;
  xNome : String;

begin
     seq := dmDados.RDWCAD_PRODUTOID.Value+1;
     xProcRecebe:='Doc_'+IntToStr(seq); //recebe valor do Numero do processo

      DestFolder:=UniServerModule.StartPath+'files\Uploads\'+xProcRecebe+'\'; //destino para onde vai o arquivo / usando a variavel que recebe o valor do processo

      xNome := TiraStr( DateTimeToStr( Now ), '/' );
      xNome := TiraStr( xNome, ':' );
      xNome := TiraStr( xNome, ' ' );


      DestName:=DestFolder+('Doc_'+IntToStr(seq)+'_')+xNome+(UniFileUpload.FileName); //nome do arquivo novo

      CopyFile(PChar(AStream.FileName), PChar(DestName), True);

      // mensagem de saida em balao
      Toast.Success('Arquivo','Carregado com Sucesso ', topCenter);
      exit;


//   ShowMessage('Arquivo: '+UniFileUpload.FileName+' Carregado para a pasta: '+DestFolder);

end;

procedure TfrCadastroProduto.UniFileUploadEditarCompleted(Sender: TObject;
  AStream: TFileStream);
 var
  DestName : string;
  DestFolder : string;
  I, seq, vNProc: Integer;
  vLocal : string;
  xProcRecebe : string ;
  xNome : String;

begin
     seq := dmDados.RDWCAD_PRODUTOID.Value;
     xProcRecebe:='Doc_'+IntToStr(seq); //recebe valor do Numero do processo

      DestFolder:=UniServerModule.StartPath+'files\Uploads\'+xProcRecebe+'\'; //destino para onde vai o arquivo / usando a variavel que recebe o valor do processo

      xNome := TiraStr( DateTimeToStr( Now ), '/' );
      xNome := TiraStr( xNome, ':' );
      xNome := TiraStr( xNome, ' ' );

      DestName:=DestFolder+('Doc_'+IntToStr(seq)+'_')+xNome+(UniFileUploadEditar.FileName); //nome do arquivo novo

      CopyFile(PChar(AStream.FileName), PChar(DestName), True);

      // mensagem de saida em balao
      Toast.Success('Arquivo','Carregado com Sucesso ', topCenter);
      exit;

//   ShowMessage('Arquivo: '+UniFileUpload.FileName+' Carregado para a pasta: '+DestF
end;

procedure TfrCadastroProduto.UniFrameCreate(Sender: TObject);
begin
  VisualisaBotao;
  EdPesquisarChange(Sender);  // é usado para que volte para o Id inicial independente de qual query esteja selecionada
  dmDados.RDWGrupos.Open;
//  UniLabel2.Caption := '<a class="btn" href="http://address.com"target="_new">Click</a>' ;  abre um link novo

  btAlt.Enabled := dmDados.RDWCAD_PRODUTO.RecordCount > 0; // verifica se tem registro/ se nao => ele deixa ele desabilitado
  btExc.Enabled := dmDados.RDWCAD_PRODUTO.RecordCount > 0; // verifica se tem registro/ se nao => ele deixa ele desabilitado
  PageCadastro.Pages[0].TabVisible := True  ;
  PageCadastro.Pages[1].TabVisible := False ;
  BtInc.Enabled := True;
  BtGrv.Enabled := False;
  BtCan.Enabled := False;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
end;

procedure TfrCadastroProduto.UniFSButton1Click(Sender: TObject);
begin
    try
    UniSession.BrowserWindow(FUrl+UniListBox1.Items[UniListBox1.ItemIndex],0,0,''); // abre a imagem na outra aba do navegador
  except

  end;

end;

procedure TfrCadastroProduto.tgl1Toggled(const Value: Boolean);
begin
  formCadGrupo.ShowModal
end;

procedure TfrCadastroProduto.UniSweetAlert1Confirm(Sender: TObject);
var xErro,vxUsuario, vexUsuario  : String;
begin
if xSoAlerta = True then exit;

  if xIncluindo then
  begin
    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('insert into ESTOQUE  values ( NULL, :vPRODUTO, NULL, NULL, NULL, NULL, NULL, NULL, NULL, :vGRUPO, NULL )');

    // ID - NULL

    dmDados.RDWAuxiliar.Params[0].DataType := ftString; // Nome
    dmDados.RDWAuxiliar.Params[0].Value := edNome.Text ;
   // NULL
   // NULL
   // NULL
   // NULL
   // NULL
   // NULL
   // NULL
    dmDados.RDWAuxiliar.Params[1].DataType := ftString; // Grupo
    dmDados.RDWAuxiliar.Params[1].Value := dbCbGrupos.Text ;
   // NULL

    dmDados.RDWAuxiliar.ExecSQL( xErro );
    dmDados.RDWCAD_PRODUTO.Close();
    dmDados.RDWCAD_PRODUTO.Open();

    dmDados.RDWEstoque.Close();
    dmDados.RDWEstoque.Open();
    xIncluindo := False;
  end;

  if xEditando then
  begin
    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('update ESTOQUE set PRODUTO=:vPRODUTO, GRUPO=:vGRUPO where ID=:vID');

    dmDados.RDWAuxiliar.Params[0].DataType := ftString; // Nome
    dmDados.RDWAuxiliar.Params[0].Value := edNome.Text ;

    dmDados.RDWAuxiliar.Params[1].DataType := ftString; // Grupo
    dmDados.RDWAuxiliar.Params[1].Value := dbCbGrupos.Text;

    dmDados.RDWAuxiliar.Params[2].DataType := ftInteger; // ID
    dmDados.RDWAuxiliar.Params[2].Value := dmDados.RDWCAD_PRODUTOID.Value;

    dmDados.RDWAuxiliar.ExecSQL( xErro );

    dmDados.RDWCAD_PRODUTO.Close();
    dmDados.RDWCAD_PRODUTO.Open();

    dmDados.RDWEstoque.Close();
    dmDados.RDWEstoque.Open();

    xEditando := False;

    dmDados.RDWGrupos.Close;
    dmDados.RDWGrupos.SQL.Clear;
    dmDados.RDWGrupos.SQL.Add('select * from GRUPOS order by ID desc');
    dmDados.RDWGrupos.Open;
   end;

   if xDeletando then
   begin
//     vexUsuario := dmdados.RDWFornecNOME.value; log

     dmDados.RDWAuxiliar.Close;
     dmDados.RDWAuxiliar.SQL.Clear;
     dmDados.RDWAuxiliar.SQL.Add('delete from ESTOQUE where ID=:vID');
     dmDados.RDWAuxiliar.Params[0].DataType := ftInteger;
     dmDados.RDWAuxiliar.Params[0].Value :=  dmDados.RDWCAD_PRODUTOID.Value;

     dmDados.RDWAuxiliar.ExecSQL( xErro );

     dmDados.RDWCAD_PRODUTO.Close();
     dmDados.RDWCAD_PRODUTO.Open();

     dmDados.RDWEstoque.Close();
     dmDados.RDWEstoque.Open();
     xDeletando := False;

//     MainForm.RegistraLog('EXCLUSÃO', 'EXCLUÍDO DO USUÁRIO: '+vexUsuario);   log
   end;

end;

procedure TfrCadastroProduto.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
  xSoAlerta := False;
  xIncluindo := False;
  xEditando := False;
  xDeletando := False;

end;

end.


