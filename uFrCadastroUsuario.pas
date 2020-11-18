unit uFrCadastroUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniSweetAlert, uniScreenMask,
  uniGUIBaseClasses, uniImageList, uniPanel, uniButton, uniBitBtn,
  Vcl.Imaging.jpeg, uniImage, uniMultiItem, uniComboBox, uniScrollBox,
  uniBasicGrid, uniDBGrid, uniDBNavigator, uniLabel, uniEdit,
  uniPageControl, Data.DB, uniHTMLFrame, unimHTMLFrame, UniFSEdit,
  UniFSButton, Main;

type
  TfrCadastroUsuario = class(TUniFrame)
    DataSourceUsuario: TDataSource;
    PnUsuario: TUniPanel;
    PageCadastro: TUniPageControl;
    Tab1: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    Tab2: TUniTabSheet;
    UniNativeImageList1: TUniNativeImageList;
    UniScreenMask1: TUniScreenMask;
    UniSweetAlert1: TUniSweetAlert;
    imgl32: TUniNativeImageList;
    UniPanel1: TUniPanel;
    UniLabel8: TUniLabel;
    EdPesquisar: TUniEdit;
    BtCan: TUniFSButton;
    BtGrv: TUniFSButton;
    BtExc: TUniFSButton;
    BtAlt: TUniFSButton;
    BtInc: TUniFSButton;
    UniPanel2: TUniPanel;
    UniLabel2: TUniLabel;
    UniComboBox1: TUniComboBox;
    UniNome: TUniEdit;
    UniLabel6: TUniLabel;
    UniLabel3: TUniLabel;
    UniLogin: TUniEdit;
    UniLabel5: TUniLabel;
    UniEmail: TUniEdit;
    UniLabel4: TUniLabel;
    UniSenha: TUniFSEdit;
    sbAdmin: TUniFSButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure EdPesquisarChange(Sender: TObject);
    procedure sbAdminClick(Sender: TObject);
    procedure BtIncClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
    procedure BtExcClick(Sender: TObject);
    procedure BtGrvClick(Sender: TObject);
    procedure BtCanClick(Sender: TObject);
  private
     xIncluindo, xDeletando, xEditando, xSoAlerta : Boolean;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uDados, uFormAutentificacao;


procedure TfrCadastroUsuario.BtAltClick(Sender: TObject);
begin

  EdPesquisar.Visible := False;
  xSoAlerta := False;
  xIncluindo := False;
  xEditando := True;
  xDeletando := False;

  UniComboBox1.SetFocus;

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
  uniNome.Text := dmDados.rdwUsuarioNOME.Value;
  uniEmail.Text := dmDados.rdwUsuarioEMAIL.Value;
  uniLogin.Text := dmDados.rdwUsuarioLOGIN.Value;
  uniSenha.Text := dmDados.rdwUsuarioSENHA.Value;
  uniComboBox1.Text := dmDados.rdwUsuarioPERFIL.Value;

end;

procedure TfrCadastroUsuario.BtCanClick(Sender: TObject);
begin
  EdPesquisar.Visible := True;
  dmDados.rdwUsuario.Cancel;
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
  dmDados.rdwUsuario.Close();
  dmDados.rdwUsuario.Open();
  btAlt.Enabled := dmDados.rdwUsuario.RecordCount > 0; // ferifica se tem registro/ se nao => ele deixa ele desabilitado
  btExc.Enabled :=  dmDados.rdwUsuario.RecordCount > 0; // ferifica se tem registro/ se nao => ele deixa ele desabilitado

end;

procedure TfrCadastroUsuario.BtExcClick(Sender: TObject);
begin

  //  Confirmacao da exclusao com SweetAlert1
  xSoAlerta := False;
  xIncluindo := False;
  xEditando := False;
  xDeletando := True;

  UniSweetAlert1.Title := 'Deseja excluir esse Usuario';
  UniSweetAlert1.AlertType := atError;
  UniSweetAlert1.CancelButtonColor := $00684E3E;
  UniSweetAlert1.ConfirmButtonColor := clMaroon;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.Show(dmDados.rdwUsuarioNOME.Value);

end;

procedure TfrCadastroUsuario.BtGrvClick(Sender: TObject);
begin

  EdPesquisar.Visible := True;
  //  usando  SweetAlert1
  if UniComboBox1.Text = '' then
  begin
  xSoAlerta := True;   // bloqueia alerta
  UniSweetAlert1.Title := ('Perfil Obrigatório');
  UniSweetAlert1.AlertType := atInfo;
  UniSweetAlert1.ShowCancelButton := False;
  UniSweetAlert1.ConfirmButtonText := 'Ok';
  UniSweetAlert1.Show('selecione o Perfil');
  exit;
  end;

    //  usando  SweetAlert1
  if UniNome.Text = '' then
  begin
  xSoAlerta := True; // Bloqueia o alerta
  UniSweetAlert1.Title := ('Nome Obrigatório');
  UniSweetAlert1.AlertType := atInfo;
  UniSweetAlert1.ShowCancelButton := False ;
  UniSweetAlert1.ConfirmButtonText := 'Ok';
  UniSweetAlert1.Show('Digite o Nome');
  exit;
  end;

  //  Salvando com SweetAlert1
  xSoAlerta := False;
  UniSweetAlert1.Title := 'Deseja salvar esse Usuario ?';
  UniSweetAlert1.AlertType := atQuestion;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.Show( UniNome.Text );

  BtInc.Enabled := True;
  BtAlt.Enabled := True;
  BtExc.Enabled := True;
  BtGrv.Enabled := False;
  BtCan.Enabled := False;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
  PageCadastro.Pages[0].TabVisible := True ;
  PageCadastro.Pages[1].TabVisible := False ;

end;

procedure TfrCadastroUsuario.BtIncClick(Sender: TObject);
begin
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
  UniComboBox1.SetFocus;
  UniComboBox1.ItemIndex := 0;
  EdPesquisar.Clear;
  uniNome.Clear;
  uniEmail.Clear;
  uniLogin.Clear;
  uniSenha.Clear;




end;

procedure TfrCadastroUsuario.EdPesquisarChange(Sender: TObject);
begin

  // pesquisa dinamica na tabela Usuario
  dmDados.rdwUsuario.SQL.Clear;
  dmDados.rdwUsuario.SQL.Add('select * from USUARIO where');
  dmDados.rdwUsuario.SQL.Add('(NOME LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.rdwUsuario.SQL.Add('or LOGIN LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.rdwUsuario.SQL.Add(')order by NOME');
  dmDados.rdwUsuario.Open;

end;

procedure TfrCadastroUsuario.sbAdminClick(Sender: TObject);
begin
  formAutentificacao.ShowModal;
  exit;
end;

procedure TfrCadastroUsuario.UniFrameCreate(Sender: TObject);
begin

  dmDados.RDWUsuario.Open;
  btAlt.Enabled := dmDados.RDWUsuario.RecordCount > 0; // ferifica se tem registro/ se nao => ele deixa ele desabilitado
  btExc.Enabled := dmDados.RDWUsuario.RecordCount > 0; // ferifica se tem registro/ se nao => ele deixa ele desabilitado
  PageCadastro.Pages[0].TabVisible := True  ;
  PageCadastro.Pages[1].TabVisible := False ;
  BtInc.Enabled := True;
  BtGrv.Enabled := False;
  BtCan.Enabled := False;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
end;

procedure TfrCadastroUsuario.UniSweetAlert1Confirm(Sender: TObject);
  var xErro,vxUsuario, vexUsuario : String;
begin
   if xSoAlerta = True then exit;

   if xIncluindo then
   begin
     dmDados.RDWAuxiliar.Close;
     dmDados.RDWAuxiliar.SQL.Clear;
     dmDados.RDWAuxiliar.SQL.Add('insert into USUARIO values (NULL, :vNOME, :vEMAIL, :vLOGIN, :vSENHA, :vPERFIL)');
     dmDados.RDWAuxiliar.Params[0].DataType := ftString;
     dmDados.RDWAuxiliar.Params[1].DataType := ftString;
     dmDados.RDWAuxiliar.Params[2].DataType := ftString;
     dmDados.RDWAuxiliar.Params[3].DataType := ftString;
     dmDados.RDWAuxiliar.Params[4].DataType := ftString;

     dmDados.RDWAuxiliar.Params[0].Value := uniNome.Text;
     dmDados.RDWAuxiliar.Params[1].Value := uniEmail.Text;
     dmDados.RDWAuxiliar.Params[2].Value := uniLogin.Text;
     dmDados.RDWAuxiliar.Params[3].Value := uniSenha.Text;
     dmDados.RDWAuxiliar.Params[4].Value := uniComboBox1.Text;

     dmDados.RDWAuxiliar.ExecSQL( xErro );
     dmDados.rdwUsuario.Close();
     dmDados.rdwUsuario.Open();
     xIncluindo := False;

//     MainForm.RegistraLog('INCLUSÃO', 'INCLUSÃO DO USUÁRIO: '+UniNome.Text);    log

   end;
   if xEditando then
   begin
     dmDados.RDWAuxiliar.Close;
     dmDados.RDWAuxiliar.SQL.Clear;
     dmDados.RDWAuxiliar.SQL.Add('update USUARIO set NOME=:vNOME, EMAIL=:vEMAIL, LOGIN=:vLOGIN, SENHA=:vSENHA, PERFIL=:vPERFIL where ID=:vID');
     dmDados.RDWAuxiliar.Params[0].DataType := ftString;
     dmDados.RDWAuxiliar.Params[1].DataType := ftString;
     dmDados.RDWAuxiliar.Params[2].DataType := ftString;
     dmDados.RDWAuxiliar.Params[3].DataType := ftString;
     dmDados.RDWAuxiliar.Params[4].DataType := ftString;
     dmDados.RDWAuxiliar.Params[5].DataType := ftInteger;

     dmDados.RDWAuxiliar.Params[0].Value := uniNome.Text;
     dmDados.RDWAuxiliar.Params[1].Value := uniEmail.Text;
     dmDados.RDWAuxiliar.Params[2].Value := uniLogin.Text;
     dmDados.RDWAuxiliar.Params[3].Value := uniSenha.Text;
     dmDados.RDWAuxiliar.Params[4].Value := uniComboBox1.Text;
     dmDados.RDWAuxiliar.Params[5].Value := dmDados.rdwUsuarioID.Value;

     dmDados.RDWAuxiliar.ExecSQL( xErro );
     dmDados.rdwUsuario.Close();
     dmDados.rdwUsuario.Open();
     xEditando := False;
   end;
   if xDeletando then
   begin
     vexUsuario := dmdados.rdwUsuarioNOME.value;

     dmDados.RDWAuxiliar.Close;
     dmDados.RDWAuxiliar.SQL.Clear;
     dmDados.RDWAuxiliar.SQL.Add('delete from USUARIO where ID=:vID');
     dmDados.RDWAuxiliar.Params[0].DataType := ftInteger;
     dmDados.RDWAuxiliar.Params[0].Value :=  dmDados.rdwUsuarioID.Value;

     dmDados.RDWAuxiliar.ExecSQL( xErro );

     dmDados.rdwUsuario.Close();
     dmDados.rdwUsuario.Open();
     xDeletando := False;

//     MainForm.RegistraLog('EXCLUSÃO', 'EXCLUÍDO DO USUÁRIO: '+vexUsuario);   log
   end;

end;

procedure TfrCadastroUsuario.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
  xSoAlerta := False;
  xIncluindo := False;
  xEditando := False;
  xDeletando := False;

end;

end.
