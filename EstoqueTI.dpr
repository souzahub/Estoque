program EstoqueTI;

uses
  Forms,
  uFALCON in 'uFALCON.pas' {FormPrincipal},
  uEstoque in 'uEstoque.pas' {FormCadastro},
  uFornecedor in 'uFornecedor.pas' {FormFornecedor},
  uSaida in 'uSaida.pas' {FormSaida},
  uManutencaoProduto in 'uManutencaoProduto.pas' {FormEntradaProduto},
  uIncluiFornecedor in 'uIncluiFornecedor.pas' {FormMistoiForncedor},
  uDados in 'uDados.pas' {dmDados: TDataModule},
  uFuncoes in 'uFuncoes.pas',
  uCadastroP in 'uCadastroP.pas' {FormMistoEstoque},
  uMovi in 'uMovi.pas' {FormMovi};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Estoque TI';
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TdmDados, dmDados);
  Application.Run;
end.
