unit uFrCadastroFornec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniSweetAlert, uniScreenMask,
  uniGUIBaseClasses, uniImageList, uniPanel, uniButton, uniBitBtn,
  Vcl.Imaging.jpeg, uniImage, uniMultiItem, uniComboBox, uniScrollBox,
  uniBasicGrid, uniDBGrid, uniDBNavigator, uniLabel, uniEdit,
  uniPageControl, Data.DB, uniDateTimePicker, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, frxGradient, ACBrBase,
  ACBrValidador, UniFSButton;

type
  TfrCadastroFornec = class(TUniFrame)
    dsCadastroFornec: TDataSource;
    PnUsuario: TUniPanel;
    PageCadastro: TUniPageControl;
    Tab1: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    Tab2: TUniTabSheet;
    UniNativeImageList1: TUniNativeImageList;
    UniScreenMask1: TUniScreenMask;
    UniSweetAlert1: TUniSweetAlert;
    frxReport1: TfrxReport;
    frxGradientObject1: TfrxGradientObject;
    frxrelatfornec: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    ACBrValidador1: TACBrValidador;
    UniPanel1: TUniPanel;
    UniLabel8: TUniLabel;
    EdPesquisar: TUniEdit;
    BtCan: TUniFSButton;
    BtGrv: TUniFSButton;
    BtExc: TUniFSButton;
    BtAlt: TUniFSButton;
    BtInc: TUniFSButton;
    UniPanel3: TUniPanel;
    edNome: TUniEdit;
    UniLabel6: TUniLabel;
    edCnpj: TUniEdit;
    lbCnpj: TUniLabel;
    edFone: TUniEdit;
    lbFone: TUniLabel;
    edCep: TUniEdit;
    lbCep: TUniLabel;
    edUf: TUniEdit;
    lbUf: TUniLabel;
    edCidade: TUniEdit;
    lbCidade: TUniLabel;
    lbEndereco: TUniLabel;
    edEndereco: TUniEdit;
    edBairro: TUniEdit;
    lbBairro: TUniLabel;
    edEmail: TUniEdit;
    lbEmail: TUniLabel;
    UniBitBtn2: TUniBitBtn;
    lvMsg: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
    procedure BtExcClick(Sender: TObject);
    procedure BtGrvClick(Sender: TObject);
    procedure BtCanClick(Sender: TObject);
    procedure BtIncClick(Sender: TObject);
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure EdPesquisarChange(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure edCnpjExit(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
  private
     xIncluindo, xDeletando, xEditando, xSoAlerta : Boolean;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uDados, Main, relatFornec, ServerModule;



procedure TfrCadastroFornec.BtAltClick(Sender: TObject);
begin

  EdPesquisar.Visible := False;
  xSoAlerta := False;
  xIncluindo := False;
  xEditando := True;
  xDeletando := False;

  edNome.SetFocus;

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
  edNome.Text := dmDados.RDWFornecNOME.Value;
  edCnpj.Text := dmDados.RDWFornecCNPJ.Value;
  edCidade.Text := dmDados.RDWFornecCIDADE.Value;
  edUf.Text := dmDados.RDWFornecUF.Value;
  edCep.Text := dmDados.RDWFornecCEP.Value;
  edFone.Text := dmDados.RDWFornecFONE.Value;
  edEndereco.Text := dmDados.RDWFornecENDERECO.Value;
  edBairro.Text := dmDados.RDWFornecBAIRRO.Value;
  edEmail.Text := dmDados.RDWFornecEMAIL.Value;
end;

procedure TfrCadastroFornec.BtCanClick(Sender: TObject);
begin

  EdPesquisar.Visible := True;
  lvMsg.Text := '';
  dmDados.RDWFornec.Cancel;
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
  dmDados.RDWFornec.Close();
  dmDados.RDWFornec.Open();
  btAlt.Enabled := dmDados.RDWFornec.RecordCount > 0; // ferifica se tem registro/ se nao => ele deixa ele desabilitado
  btExc.Enabled :=  dmDados.RDWFornec.RecordCount > 0; // ferifica se tem registro/ se nao => ele deixa ele desabilitado
end;

procedure TfrCadastroFornec.BtExcClick(Sender: TObject);
begin

   //  Confirmacao da exclusao com SweetAlert1
  xSoAlerta := False;
  xIncluindo := False;
  xEditando := False;
  xDeletando := True;

  UniSweetAlert1.Title := 'Deseja excluir esse Fornecedor';
  UniSweetAlert1.AlertType := atError;
  UniSweetAlert1.CancelButtonColor := $00684E3E;
  UniSweetAlert1.ConfirmButtonColor := clMaroon;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.Show(dmDados.RDWFornecNOME.Value);

end;

procedure TfrCadastroFornec.BtGrvClick(Sender: TObject);
begin

  EdPesquisar.Visible := True;
  //  usando  SweetAlert1
  if edNome.Text = '' then
  begin
  xSoAlerta := True; // Bloqueia o alerta
  UniSweetAlert1.Title := ('Nome Obrigatório');
  UniSweetAlert1.AlertType := atInfo;
  UniSweetAlert1.ShowCancelButton := False ;
  UniSweetAlert1.ConfirmButtonText := 'Ok';
  UniSweetAlert1.Show('Digite o Nome');
  exit;
  end;

//  //  validando tamanho do campo cpf
//  if Length(edCnpj.Text) < 14 then
//  begin
//   // Toast.Error('Atenção!','Campo CNPJ com menos de 14 digitos ', topCenter);
////  UniSession.AddJS ('alert ("Campo CNPJ com menos de 14 digitos")');
//    exit;
//  end;

  //  Salvando com SweetAlert1
  xSoAlerta := False;
  UniSweetAlert1.Title := 'Deseja salvar esse Fornecedor ?';
  UniSweetAlert1.AlertType := atQuestion;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.Show( edNome.Text );

  BtInc.Enabled := True;
  BtAlt.Enabled := True;
  BtExc.Enabled := True;
  BtGrv.Enabled := False;
  BtCan.Enabled := False;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
  PageCadastro.Pages[0].TabVisible := True ;
  PageCadastro.Pages[1].TabVisible := False ;

end;

procedure TfrCadastroFornec.BtIncClick(Sender: TObject);
begin

   EdPesquisar.Visible := False;
   lvMsg.Text := '';
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

   edEndereco.Clear;
   edBairro.Clear;
   edCidade.Clear;
   edUf.Clear;
   edCep.Clear;
   edFone.Clear;
   edEmail.Clear;
   ednome.Clear;
   edCnpj.Clear;

end;

procedure TfrCadastroFornec.edCnpjExit(Sender: TObject);
begin
 ACBrValidador1.Documento   := edCnpj.Text ;
  if ACBrValidador1.Validar then
     lvMsg.Text := 'Documento OK'
  else
     lvMsg.Text := ACBrValidador1.MsgErro ;
end;

procedure TfrCadastroFornec.EdPesquisarChange(Sender: TObject);
begin

   // pesquisa dinamica na tabela Usuario
  dmDados.RDWFornec.SQL.Clear;
  dmDados.RDWFornec.SQL.Add('select * from FORNEC where');
  dmDados.RDWFornec.SQL.Add('(NOME LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWFornec.SQL.Add('or CNPJ LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWFornec.SQL.Add(')order by ID desc');
  dmDados.RDWFornec.Open;

end;

procedure TfrCadastroFornec.UniBitBtn1Click(Sender: TObject);
var
  FName, PDF, ArqPDF:String;
begin

//  FName := ExtractFileDir(Application.ExeName)+'\reports\relconslivros.fr3';
//  PDF := ExtractFileDir(Application.ExeName)+'\reports\relconslivros.pdf';

//  frxReport1.LoadFromFile(UniServerModule.FilesFolderPath+'relatorio\relatFornec.fr3'); // seleciona o Caminho desejado para a impressao
//
//// Direciona para cada Fornecedor específico
//  dmDados.RelatFornec.Close;
//  dmDados.RelatFornec.SQL.Clear;
//  dmDados.RelatFornec.SQL.Add('select * from FORNEC');
//  dmDados.RelatFornec.SQL.Add('where ID=:vID');
//  dmDados.RelatFornec.Params[0].DataType := ftInteger;
//  dmDados.RelatFornec.Params[0].Value := dmDados.RDWFornecID.Value;
//  dmDados.RelatFornec.Open;
//
//  frxReport1.PrepareReport(True);
//  ArqPDF := 'fornec_'+FormatDateTime('hhmmss.zzz',Now)+'.pdf'; // salva o arquivo com a hora do computador
//  frxPDFExport1.FileName := ArqPDF;
//  frxPDFExport1.DefaultPath := UniServerModule.LocalCachePath;
//  try
//    frxPDFExport1.ShowDialog := false;
//    frxPDFExport1.ShowProgress := False;
//    frxReport1.Export(Self.frxPDFExport1);
//    frxReport1.PreviewPages.SaveToFile(ArqPDF);
////    linha abaixo é para abrir o relatorio em formulario
//    formRelatFornec.URLRelatorios.URL := UniServerModule.LocalCacheURL+ArqPDF;
//    formRelatFornec.ShowModal;
//
////    aqui é associado o FastRaport do arquivo .FR3 especifico para dentro do URL Frame que esta dentro de uma ABA no page control
////    TfrRelatorioEstoque(MainForm.FindComponent('frRelatorioEstoque')).URLRelatorios.URL := UniServerModule.LocalCacheURL+ArqPDF;
//  Except
//    ShowMessage('ERRO DURANTE A IMPRESSAO.');
//  end;
//   try
//     DeleteFile(  ArqPDF );
//  except
//
//  end;
//     UniURLFrame1.Visible := False;
end;

procedure TfrCadastroFornec.UniBitBtn2Click(Sender: TObject);
begin
   ACBrValidador1.Documento   := edCnpj.Text ;
  if ACBrValidador1.Validar then
     lvMsg.Text := 'Documento OK'
  else
     lvMsg.Text := ACBrValidador1.MsgErro ;
end;

procedure TfrCadastroFornec.UniDBGrid1DblClick(Sender: TObject);
begin
  BtAltClick(Sender);
end;

procedure TfrCadastroFornec.UniFrameCreate(Sender: TObject);
begin
  dmDados.RDWFornec.Open;
  btAlt.Enabled := dmDados.RDWFornec.RecordCount > 0; // ferifica se tem registro/ se nao => ele deixa ele desabilitado
  btExc.Enabled := dmDados.RDWFornec.RecordCount > 0; // ferifica se tem registro/ se nao => ele deixa ele desabilitado
  PageCadastro.Pages[0].TabVisible := True  ;
  PageCadastro.Pages[1].TabVisible := False ;
  BtInc.Enabled := True;
  BtGrv.Enabled := False;
  BtCan.Enabled := False;
  PageCadastro.ActivePage := Tab1 ; // Volta para a Tela de Consulta
end;

procedure TfrCadastroFornec.UniSweetAlert1Confirm(Sender: TObject);
 var xErro,vxUsuario, vexUsuario : String;
begin
 if xSoAlerta = True then exit;

  if xIncluindo then
  begin
    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('insert into FORNEC  values (:vENDERECO, :vBAIRRO, :vCIDADE, :vUF, :vCEP, :vFONE, :vEMAIL, :vNOME, :vCNPJ, NULL )');

    dmDados.RDWAuxiliar.Params[0].DataType := ftString; // Endereco
    dmDados.RDWAuxiliar.Params[0].Value := edEndereco.Text ;

    dmDados.RDWAuxiliar.Params[1].DataType := ftString; // Bairro
    dmDados.RDWAuxiliar.Params[1].Value := edBairro.Text ;

    dmDados.RDWAuxiliar.Params[2].DataType := ftString; // Cidade
    dmDados.RDWAuxiliar.Params[2].Value := edCidade.Text ;

    dmDados.RDWAuxiliar.Params[3].DataType := ftString; // Uf
    dmDados.RDWAuxiliar.Params[3].Value := edUf.Text ;

    dmDados.RDWAuxiliar.Params[4].DataType := ftString; // Cep
    dmDados.RDWAuxiliar.Params[4].Value := edCep.Text ;

    dmDados.RDWAuxiliar.Params[5].DataType := ftString; // Fone
    dmDados.RDWAuxiliar.Params[5].Value := edFone.Text ;

    dmDados.RDWAuxiliar.Params[6].DataType := ftString; // Email
    dmDados.RDWAuxiliar.Params[6].Value := edEmail.Text ;

    dmDados.RDWAuxiliar.Params[7].DataType := ftString; // Nome
    dmDados.RDWAuxiliar.Params[7].Value := edNome.Text ;

    dmDados.RDWAuxiliar.Params[8].DataType := ftString; // Cnpj
    dmDados.RDWAuxiliar.Params[8].Value := edCnpj.Text ;

  // ID - NULL

    dmDados.RDWAuxiliar.ExecSQL( xErro );
    dmDados.RDWFornec.Close();
    dmDados.RDWFornec.Open();
    xIncluindo := False;
  end;

  if xEditando then
  begin
    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('update FORNEC set ENDERECO=:vENDERECO, BAIRRO=:vBAIRRO, CIDADE=:vCIDADE, UF=:vUF, CEP=:vCEP, FONE=:vFONE, EMAIL=:vEMAIL, NOME=:vNOME, CNPJ=:vCNPJ where ID=:vID');

    dmDados.RDWAuxiliar.Params[0].DataType := ftString; // Endereco
    dmDados.RDWAuxiliar.Params[0].Value := edEndereco.Text ;

    dmDados.RDWAuxiliar.Params[1].DataType := ftString; // Bairro
    dmDados.RDWAuxiliar.Params[1].Value := edBairro.Text ;

    dmDados.RDWAuxiliar.Params[2].DataType := ftString; // Cidade
    dmDados.RDWAuxiliar.Params[2].Value := edCidade.Text ;

    dmDados.RDWAuxiliar.Params[3].DataType := ftString; // Uf
    dmDados.RDWAuxiliar.Params[3].Value := edUf.Text ;

    dmDados.RDWAuxiliar.Params[4].DataType := ftString; // Cep
    dmDados.RDWAuxiliar.Params[4].Value := edCep.Text ;

    dmDados.RDWAuxiliar.Params[5].DataType := ftString; // Fone
    dmDados.RDWAuxiliar.Params[5].Value := edFone.Text ;

    dmDados.RDWAuxiliar.Params[6].DataType := ftString; // Email
    dmDados.RDWAuxiliar.Params[6].Value := edEmail.Text ;

    dmDados.RDWAuxiliar.Params[7].DataType := ftString; // Nome
    dmDados.RDWAuxiliar.Params[7].Value := edNome.Text ;

    dmDados.RDWAuxiliar.Params[8].DataType := ftString; // Cnpj
    dmDados.RDWAuxiliar.Params[8].Value := edCnpj.Text ;

    dmDados.RDWAuxiliar.Params[9].DataType := ftInteger; // ID
    dmDados.RDWAuxiliar.Params[9].Value := dmDados.RDWFornecID.Value;


  // ID - NULL

    dmDados.RDWAuxiliar.ExecSQL( xErro );
    dmDados.RDWFornec.Close();
    dmDados.RDWFornec.Open();
    xEditando := False;
   end;

   if xDeletando then
   begin
//     vexUsuario := dmdados.RDWFornecNOME.value; log

     dmDados.RDWAuxiliar.Close;
     dmDados.RDWAuxiliar.SQL.Clear;
     dmDados.RDWAuxiliar.SQL.Add('delete from FORNEC where ID=:vID');
     dmDados.RDWAuxiliar.Params[0].DataType := ftInteger;
     dmDados.RDWAuxiliar.Params[0].Value :=  dmDados.RDWFornecID.Value;

     dmDados.RDWAuxiliar.ExecSQL( xErro );

     dmDados.RDWFornec.Close();
     dmDados.RDWFornec.Open();
     xDeletando := False;

//     MainForm.RegistraLog('EXCLUSÃO', 'EXCLUÍDO DO USUÁRIO: '+vexUsuario);   log
   end;
end;

procedure TfrCadastroFornec.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
  xSoAlerta := False;
  xIncluindo := False;
  xEditando := False;
  xDeletando := False;
end;

end.


