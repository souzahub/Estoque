{$DEFINE UNIGUI_VCL} // Comente esta linha para transformar esse projeto em um módulo ISAPI

{$IFNDEF UNIGUI_VCL}
library
{$else}
program
{$ENDIF}
  EstoqueTi;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  uFrCadastroUsuario in 'uFrCadastroUsuario.pas' {frCadastroUsuario: TUniFrame},
  uDados in 'uDados.pas' {dmDados: TDataModule},
  uFrCadastroFornec in 'uFrCadastroFornec.pas' {frCadastroFornec: TUniFrame},
  uFrCadastroProduto in 'uFrCadastroProduto.pas' {frCadastroProduto: TUniFrame},
  uFuncoes in 'uFuncoes.pas',
  uFrEstoque in 'uFrEstoque.pas' {frEstoque: TUniFrame},
  uFrEntrada in 'uFrEntrada.pas' {frEntrada: TUniFrame},
  uFrSaida in 'uFrSaida.pas' {fraSaida: TUniFrame},
  uFormBuscaFornec in 'uFormBuscaFornec.pas' {formBuscaFornec: TUniForm},
  uFormBuscaProduto in 'uFormBuscaProduto.pas' {formBuscaProduto: TUniForm},
  uformCadGrupo in 'uformCadGrupo.pas' {formCadGrupo: TUniForm},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  uformMlogin in 'uformMlogin.pas' {FormMlogin: TUnimLoginForm},
  uFormLogin in 'uFormLogin.pas' {formLogin: TUniLoginForm},
  uFrRelatorioEstoque in 'uFrRelatorioEstoque.pas' {frRelatorioEstoque: TUniFrame},
  relatFornec in 'relatFornec.pas' {formRelatFornec: TUniForm},
  uFrLogSys in 'uFrLogSys.pas' {frLogSys: TUniFrame},
  uFormAutentificacao in 'uFormAutentificacao.pas' {formAutentificacao: TUniForm};

{$R *.res}
{$IFNDEF UNIGUI_VCL}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$ENDIF}

begin
{$IFDEF UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$ENDIF}
end.
