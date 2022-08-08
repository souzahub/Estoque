program Estoque_TI;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  uFrCadastroUsuario in 'uFrCadastroUsuario.pas' {frCadastroUsuario: TUniFrame},
  uDados in 'uDados.pas' {dmDados: TDataModule},
  uFrCadastroFornec in 'uFrCadastroFornec.pas' {frCadastroFornec: TUniFrame},
  uFrCadastroProduto in 'uFrCadastroProduto.pas' {frCadastroProduto: TUniFrame},
  uFuncoes in 'uFuncoes.pas',
  uFrBalanco in 'uFrBalanco.pas' {frBalanco: TUniFrame},
  uFrEntrada in 'uFrEntrada.pas' {frEntrada: TUniFrame},
  uFormBuscaFornec in 'uFormBuscaFornec.pas' {formBuscaFornec: TUniForm},
  uFormBuscaProduto in 'uFormBuscaProduto.pas' {formBuscaProduto: TUniForm},
  uformCadGrupo in 'uformCadGrupo.pas' {formCadGrupo: TUniForm},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  uformMlogin in 'uformMlogin.pas' {FormMlogin: TUnimLoginForm},
  uFormLogin in 'uFormLogin.pas' {formLogin: TUniLoginForm},
  uFrRelatorioEstoque in 'uFrRelatorioEstoque.pas' {frRelatorioEstoque: TUniFrame},
  relatFornec in 'relatFornec.pas' {formRelatFornec: TUniForm},
  uFrLogSys in 'uFrLogSys.pas' {frLogSys: TUniFrame},
  uFrEstoque in 'uFrEstoque.pas' {frEstoque: TUniFrame},
  uFormTranferencia in 'uFormTranferencia.pas' {formTranferencia: TUniForm},
  uFormInfoEstoque in 'uFormInfoEstoque.pas' {formInfoEstoque: TUniForm},
  uFormIProdutoSaida in 'uFormIProdutoSaida.pas' {formIProdutoSaida: TUniForm},
  uFormInfoEntrada in 'uFormInfoEntrada.pas' {formInfoEntrada: TUniForm},
  uFrSaida in 'uFrSaida.pas' {fraSaida: TUniFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
