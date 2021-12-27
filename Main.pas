unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniTreeView, uniTreeMenu,
  uniSweetAlert, uniStatusBar, uniScreenMask, uniGUIBaseClasses,
  uniImageList, Vcl.Menus, uniMainMenu, uniPanel, uniLabel,
  Vcl.Imaging.pngimage, uniImage, uniScrollBox, uniPageControl, frxClass,
  frxExportBaseDialog, frxExportPDF, frxGradient, frxDBSet, uniGUIFrame,
  uniHTMLFrame, uniURLFrame, uniMemo, uniHTMLMemo, uniGroupBox,
  uniFileUpload, uniButton, uniBitBtn, UniFSButton, unimURLFrame,
  UniFSPopup, uniCalendarPanel, uniCalendar, uniSpeedButton, uniTimer,
  uniMenuButton, UniFSMenuButton, uFrBalanco;

type
  TMainForm = class(TUniForm)
    frxGradientObject1: TfrxGradientObject;
    frxPDFExport1: TfrxPDFExport;
    UniContainerPanel1: TUniContainerPanel;
    UniMenuItems1: TUniMenuItems;
    DashBoard: TUniMenuItem;
    Cadastros1: TUniMenuItem;
    ContasPadro1: TUniMenuItem;
    Ficha1: TUniMenuItem;
    Movimentaes1: TUniMenuItem;
    Compras1: TUniMenuItem;
    Vendas1: TUniMenuItem;
    Relatrios1: TUniMenuItem;
    Clientes2: TUniMenuItem;
    UniNativeImageList1: TUniNativeImageList;
    UniSweetAlert1: TUniSweetAlert;
    frxDBRelatorio: TfrxDBDataset;
    frxReport1: TfrxReport;
    EstoqueCusto1: TUniMenuItem;
    UniStatusBar1: TUniStatusBar;
    PagePrincipal: TUniPageControl;
    TabHome: TUniTabSheet;
    paGeral: TUniContainerPanel;
    sboxDashBoard: TUniScrollBox;
    UniNativeImageList2: TUniNativeImageList;
    PopupAtualizacoes: TUniFSPopup;
    spCalend: TUniFSPopup;
    spEnvelop: TUniFSPopup;
    UniContainerPanel3: TUniContainerPanel;
    UniHTMLFrameUnigui: TUniHTMLFrame;
    UniContainerPanel2: TUniContainerPanel;
    paDash1x1_Blue: TUniContainerPanel;
    lbCliente1: TUniLabel;
    lbClientes: TUniLabel;
    lbCliente: TUniLabel;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel3: TUniLabel;
    paDash1x1_Red: TUniContainerPanel;
    paDashRedImg: TUniContainerPanel;
    lbImg1: TUniLabel;
    lbUsuario: TUniLabel;
    labDashRed: TUniLabel;
    lbTotalProduto: TUniLabel;
    UniLabel5: TUniLabel;
    lbNomeUsuario: TUniLabel;
    paDash1x1_Purple: TUniContainerPanel;
    lbSaldo: TUniLabel;
    lbSaldoEstoque: TUniLabel;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel1: TUniLabel;
    paDash1x1_Green: TUniContainerPanel;
    lbFornec: TUniLabel;
    labDashGreen: TUniLabel;
    UniLabel2: TUniLabel;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel4: TUniLabel;
    paLayoutMenuLateral: TUniContainerPanel;
    imgUser: TUniImage;
    UniTreeMenu1: TUniTreeMenu;
    PanelTop: TUniPanel;
    UniFSMenuButton1: TUniFSMenuButton;
    labSistema: TUniLabel;
    imgIcone: TUniImage;
    sbUser: TUniFSButton;
    sbNoti: TUniFSButton;
    sbCalend: TUniFSButton;
    sbEnvelp: TUniFSButton;
    Popup1: TUniPopupMenu;
    Usuarios1: TUniMenuItem;
    Log2: TUniMenuItem;
    Sair1: TUniMenuItem;
    lbOla: TUniLabel;
    UniURLFrame1: TUniURLFrame;
    Poduto1: TUniMenuItem;
    N1: TUniMenuItem;
    Balano1: TUniMenuItem;
    relatrio1: TUniMenuItem;
    frxdbBalanco: TfrxDBDataset;
    procedure mnuUsuarioClick(Sender: TObject);
    procedure xUniLblButtoDrowerClick(Sender: TObject);
    procedure UniFormScreenResize(Sender: TObject; AWidth,
      AHeight: Integer);
    procedure ContasPadro1Click(Sender: TObject);
    procedure Ficha1Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure EstoqueCusto1Click(Sender: TObject);
    procedure UniHTMLFrameUniguiAjaxEvent(Sender: TComponent;
      EventName: string; Params: TUniStrings);
    procedure UniFormShow(Sender: TObject);
    procedure RegistraLog( Tipo : String; Historico: String );
    procedure DashBoardClick(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure Log2Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Poduto1Click(Sender: TObject);
    procedure Balano1Click(Sender: TObject);
    procedure relatrio1Click(Sender: TObject); // ( função Log )
  private
    procedure NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean);   // frame lateral
  public
    vCodigo_do_Produto : Integer;
    vNome_do_Forneceor : Char;
    vCodigo_do_Fornec : String;
    vBuscaSaida , vMoviIndividual: Boolean;
    vConsultaFornecedor, vConsultaProduto: Integer ;
    vModuloAtual: Integer;
     // 0 = id Fornecedor
     // 1 = id Produto
     vADMIN, vUSUARIO : Boolean;  // Administrador
     xUsuario : string; // variavel para chamr o nome do usuario logado

      procedure ExtAlerta(Titulo, Mensagem: string);  // procedure alerta (notificação)

  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uFrCadastroUsuario,
  uFrCadastroFornec, uFrCadastroProduto, uFrEstoque, uDados, uFrEntrada,
  uFrSaida, uFrRelatorioEstoque, ServerModule, uFrLogSys, uFuncoes, DB,
  uFormAutentificacao;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.RegistraLog( Tipo : String; Historico: String );
var xERRO : String;
begin
//      exit;
      // registra o log ( função Log ) para todos
      dmDados.RDWAuxiliar.Close;
      dmDados.RDWAuxiliar.SQL.Clear;
      dmDados.RDWAuxiliar.SQL.Add('INSERT into LOGSYS values (NULL, :vDIA, :vLOGIN, :vOPERACAO, :vOCORRENCIA )');
      // DIA
      dmDados.RDWAuxiliar.Params[0].DataType := ftDateTime;
      dmDados.RDWAuxiliar.Params[0].Value := DateTimeToStr(now); // pega a Data do computador
      // Login
      dmDados.RDWAuxiliar.Params[1].DataType := ftString;
      dmDados.RDWAuxiliar.Params[1].Value := MainForm.xUsuario; // pega o usuario na entrada do sistema ( usuario global )
      // operação
      dmDados.RDWAuxiliar.Params[2].DataType := ftString;
      dmDados.RDWAuxiliar.Params[2].Value := TIPO;  // pega esse valor para a função
      // Ocorrencia
      dmDados.RDWAuxiliar.Params[3].DataType := ftString;
      dmDados.RDWAuxiliar.Params[3].Value := HISTORICO;  // pega esse valor para a função

      dmDados.RDWAuxiliar.ExecSQL( xErro );

      dmDados.RDWLOGSYS.Close;
      dmDados.RDWLOGSYS.Open;
end;

procedure TMainForm.relatrio1Click(Sender: TObject);
var
  FName, PDF, ArqPDF:String;
begin
  dmdados.RDWrelatBalanco.Open;
//  UniTreeMenu1.Micro := True;
  NovaAba(TFrame(TfrRelatorioEstoque),'Relatório Estoque',True);

//  FName := ExtractFileDir(Application.ExeName)+'\reports\relconslivros.fr3';
//  PDF := ExtractFileDir(Application.ExeName)+'\reports\relconslivros.pdf';

  frxReport1.LoadFromFile(UniServerModule.FilesFolderPath+'relatorio\balanco.fr3'); // seleciona o Caminho desejado para a impressao

  frxReport1.PrepareReport(True);
  ArqPDF := 'report_'+FormatDateTime('hhmmss.zzz',Now)+'.pdf'; // salva o arquivo com a hora do computador
  frxPDFExport1.FileName := ArqPDF;
  frxPDFExport1.DefaultPath := UniServerModule.LocalCachePath;
  try
    frxPDFExport1.ShowDialog := false;
    frxPDFExport1.ShowProgress := False;
    frxReport1.Export(Self.frxPDFExport1);
    frxReport1.PreviewPages.SaveToFile(ArqPDF);
//    linha abaixo é para abrir o relatorio em formulario
//    FReport.UniURLFrame1.URL := UniServerModule.LocalCacheURL+ArqPDF;
//    FReport.ShowModal;
//    aqui é associado o FastRaport do arquivo .FR3 especifico para dentro do URL Frame que esta dentro de uma ABA no page control
    TfrRelatorioEstoque(MainForm.FindComponent('frRelatorioEstoque')).URLRelatorios.URL := UniServerModule.LocalCacheURL+ArqPDF;
//    try
//      UniSession.BrowserWindow(UniServerModule.LocalCacheURL+ArqPDF,0,0,''); // abre a imagem na outra aba do navegador
//    except
//
//    end;
  //      TfrRelatorioTotal(MainForm.FindComponent('frRelatorioTotal')).URLRelatorios.URL := UniServerModule.LocalCacheURL + ArqPDF; para Frame
  Except
    ShowMessage('ERRO DURANTE A IMPRESSAO.');
  end;

  try
     DeleteFile( ArqPDF );
  except

  end;

//     UniURLFrame1.Visible := False;
end;

procedure TMainForm.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.ExtAlerta(Titulo, Mensagem: string);  // chama a procedure alerta (notificação)
begin
      UniSession.AddJS('Ext.example.msg('+
                   quotedstr(Titulo) + ',' +
                   quotedstr(Mensagem)+');');
end;
// frame lateral
procedure TMainForm.Balano1Click(Sender: TObject);
begin

  NovaAba(TFrame(TfrBalanco),'Balanço',True);
end;

procedure TMainForm.Clientes2Click(Sender: TObject);
var
  FName, PDF, ArqPDF:String;
begin
//  UniTreeMenu1.Micro := True;
  NovaAba(TFrame(TfrRelatorioEstoque),'Relatório Estoque',True);


//  FName := ExtractFileDir(Application.ExeName)+'\reports\relconslivros.fr3';
//  PDF := ExtractFileDir(Application.ExeName)+'\reports\relconslivros.pdf';

  frxReport1.LoadFromFile(UniServerModule.FilesFolderPath+'relatorio\estoque.fr3'); // seleciona o Caminho desejado para a impressao


  frxReport1.PrepareReport(True);
  ArqPDF := 'report_'+FormatDateTime('hhmmss.zzz',Now)+'.pdf'; // salva o arquivo com a hora do computador
  frxPDFExport1.FileName := ArqPDF;
  frxPDFExport1.DefaultPath := UniServerModule.LocalCachePath;
  try
    frxPDFExport1.ShowDialog := false;
    frxPDFExport1.ShowProgress := False;
    frxReport1.Export(Self.frxPDFExport1);
    frxReport1.PreviewPages.SaveToFile(ArqPDF);
//    linha abaixo é para abrir o relatorio em formulario
//    FReport.UniURLFrame1.URL := UniServerModule.LocalCacheURL+ArqPDF;
//    FReport.ShowModal;
//    aqui é associado o FastRaport do arquivo .FR3 especifico para dentro do URL Frame que esta dentro de uma ABA no page control
    TfrRelatorioEstoque(MainForm.FindComponent('frRelatorioEstoque')).URLRelatorios.URL := UniServerModule.LocalCacheURL+ArqPDF;
  Except
    ShowMessage('ERRO DURANTE A IMPRESSAO.');
  end;

  try
     DeleteFile( ArqPDF );
  except

  end;

//     UniURLFrame1.Visible := False;

end;

procedure TMainForm.Compras1Click(Sender: TObject);
begin
//  UniTreeMenu1.Micro := True;
  NovaAba(TFrame(TfrEntrada),'Entrada',True);
end;

procedure TMainForm.ContasPadro1Click(Sender: TObject);
begin
//  UniTreeMenu1.Micro := True;
  NovaAba(TFrame(TfrCadastroFornec),'Fornecedor',True);
end;

procedure TMainForm.DashBoardClick(Sender: TObject);
begin
  PagePrincipal.ActivePage :=  TabHome; // ativa pagina Principal
end;

procedure TMainForm.EstoqueCusto1Click(Sender: TObject);
var
  FName, PDF, ArqPDF:String;
begin
//  UniTreeMenu1.Micro := True;
  // acesso apenas para administrador
  if MainForm.vADMIN then

      begin
        NovaAba(TFrame(TfrRelatorioEstoque),'Relatório Estoque',True);

      //  FName := ExtractFileDir(Application.ExeName)+'\reports\relconslivros.fr3';
      //  PDF := ExtractFileDir(Application.ExeName)+'\reports\relconslivros.pdf';

        frxReport1.LoadFromFile(UniServerModule.FilesFolderPath+'relatorio\estoqueCusto.fr3'); // seleciona o Caminho desejado para a impressao


        frxReport1.PrepareReport(True);
        ArqPDF := 'report_'+FormatDateTime('hhmmss.zzz',Now)+'.pdf'; // salva o arquivo com a hora do computador
        frxPDFExport1.FileName := ArqPDF;
        frxPDFExport1.DefaultPath := UniServerModule.LocalCachePath;
        try
          frxPDFExport1.ShowDialog := false;
          frxPDFExport1.ShowProgress := False;
          frxReport1.Export(Self.frxPDFExport1);
          frxReport1.PreviewPages.SaveToFile(ArqPDF);
          //    linha abaixo é para abrir o relatorio em formulario
          //    FReport.UniURLFrame1.URL := UniServerModule.LocalCacheURL+ArqPDF;
          //    FReport.ShowModal;
          //    aqui é associado o FastRaport do arquivo .FR3 especifico para dentro do URL Frame que esta dentro de uma ABA no page control
          TfrRelatorioEstoque(MainForm.FindComponent('frRelatorioEstoque')).URLRelatorios.URL := UniServerModule.LocalCacheURL+ArqPDF;
          Except
            ShowMessage('ERRO DURANTE A IMPRESSAO.');
          end;

          try
             DeleteFile(  ArqPDF ); // deleta o arquivo para nao salvar no projeto em tempo real
          except

          end;

          exit
      end
      else

//      dmDados.Toast.Error('Error','Usuário não autorizado');  // uso do componente Toast unifalcon

end;

procedure TMainForm.Ficha1Click(Sender: TObject);
begin
//  UniTreeMenu1.Micro := True;
  NovaAba(TFrame(TfrEstoque),'Estoque',True);
end;

procedure TMainForm.Log2Click(Sender: TObject);
begin
  if (not MainForm.vADMIN) then exit;
//  UniTreeMenu1.Micro := True;
   NovaAba(TFrame(TfrLogSys),'LOG',True);
end;

procedure TMainForm.mnuUsuarioClick(Sender: TObject);
begin


end;
// funçao abrir Tab
procedure TMainForm.NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean);
var TabSheet      :TUniTabSheet;
    FCurrentFrame :TUniFrame;
    I             :Integer;
    N             : TUniTreeNode;
begin

   N := UniTreeMenu1.Selected;
  if Assigned(N) and N.IsLeaf then

      pagePrincipal.Visible := True;

      {Verificando se a tela já está aberto e redireciona a ela}
      for I := 0 to pagePrincipal.PageCount - 1 do
        with pagePrincipal do
          if Pages[I].Caption = descFormFrame  then
            begin
              pagePrincipal.ActivePageIndex := I;
              Exit;
            end;

      TabSheet              := TUniTabSheet.Create(Self);
      TabSheet.PageControl  := pagePrincipal;
      TabSheet.Caption      := descFormFrame;
      TabSheet.Closable     := Fechar;

      FCurrentFrame:= TUniFrameClass(nomeFormFrame).Create(Self);

      with FCurrentFrame do
        begin
          Align               := alClient;
          Parent              := TabSheet;
        end;

      Refresh;

      pagePrincipal.ActivePage := TabSheet;
end;
procedure TMainForm.Poduto1Click(Sender: TObject);
begin

  NovaAba(TFrame(TfrCadastroProduto),'Produtos',True);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var vTOTAL, vQUANTIDADE : Integer;
begin

  vQUANTIDADE := dmDados.RDWEstoqueESTOQUE.Value;
  vTOTAL := dmDados.RDWEstoqueESTOQUE.Value + vQUANTIDADE ;
  lbTotalProduto.Text := IntToStr (vTOTAL);

  dmDados.RDWAuxiliar.Close;
  dmDados.RDWAuxiliar.SQL.Clear;
  dmDados.RDWAuxiliar.SQL.Add('select SUM( ESTOQUE ) as SALDO, sum( ESTOQUE * PRECO ) as TOTALFINAL from ESTOQUE');
  dmDados.RDWAuxiliar.Open;
  lbTotalProduto.Caption := FormatFloat('#,##0.00', dmDados.RDWAuxiliar.FieldByName('TOTALFINAL').AsCurrency );
  lbSaldoEstoque.Caption := FormatFloat('#0', dmDados.RDWAuxiliar.FieldByName('SALDO').AsCurrency );
  dmDados.RDWAuxiliar.Close;

  dmDados.RDWAuxiliar.SQL.Clear;
  dmDados.RDWAuxiliar.SQL.Add('select COUNT( CODIGO ) as TOTAL from CLIENTES');
  dmDados.RDWAuxiliar.Open;
  lbClientes.Caption := FormatFloat('#0', dmDados.RDWAuxiliar.FieldByName('TOTAL').AsCurrency );
  dmDados.RDWAuxiliar.Close;

  dmDados.RDWAuxiliar.SQL.Clear;
  dmDados.RDWAuxiliar.SQL.Add('select COUNT( ID ) as TOTAL from FORNEC');
  dmDados.RDWAuxiliar.Open;
  lbFornec.Caption := FormatFloat('#0', dmDados.RDWAuxiliar.FieldByName('TOTAL').AsCurrency );

  dmDados.RDWAuxiliar.Close;

end;

procedure TMainForm.UniFormScreenResize(Sender: TObject; AWidth,
  AHeight: Integer);
begin
 // resposividade na tela ( painel seleção)
  UniContainerPanel2.BorderStyle  := ubsNone;
  UniContainerPanel2.Left         := Round((AWidth/ 30)  - (UniContainerPanel2.Width / 30));
  UniContainerPanel2.Top          := Round((AHeight / 30)  - (UniContainerPanel2.Height / 30));
  UniContainerPanel2.Update;

end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
if MainForm.vADMIN then
    begin
      lbTotalProduto.Visible := True;
      labDashRed.Visible := True;
      UniLabel5.Visible := True;
      lbImg1.Visible := True;
      lbImg1.Visible := True;
      lbNomeUsuario.Visible := False;
      lbUsuario.Visible := False;
      exit;
    end
end;

procedure TMainForm.UniHTMLFrameUniguiAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if EventName = 'valor0' then
  begin
        // acesso apenas para administrador
  if MainForm.vADMIN then
   begin
    NovaAba(TFrame(TfrCadastroUsuario),'Usuário',True);
    exit;
   end
   else
    UniSweetAlert1.Title := ('ATENÇÃO !');
    UniSweetAlert1.AlertType := atInfo;
    UniSweetAlert1.ShowCancelButton := False;
    UniSweetAlert1.ConfirmButtonText := 'Ok';
    UniSweetAlert1.Width := 300;
    UniSweetAlert1.Show('Usuário não autorizado');

  end;
  if EventName = 'valor1' then
  begin
   NovaAba(TFrame(TfrEntrada),'Entrada',True);
  end;
  if EventName = 'valor2' then
  begin
    NovaAba(TFrame(TfraSaida),'Saída',True);
  end;
end;

procedure TMainForm.Usuarios1Click(Sender: TObject);
begin
  if (not MainForm.vADMIN) then exit;
//  UniTreeMenu1.Micro := True;
  NovaAba(TFrame(TfrCadastroUsuario),'Usuário',True);

end;

procedure TMainForm.xUniLblButtoDrowerClick(Sender: TObject);
begin
//   UniTreeMenu1.Micro := not UniTreeMenu1.Micro;
end;

procedure TMainForm.Vendas1Click(Sender: TObject);
begin
//  UniTreeMenu1.Micro := True;
  NovaAba(TFrame(TfraSaida),'Saída',True);
end;

// fim

initialization
  RegisterAppFormClass(TMainForm);

end.
