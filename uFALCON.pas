unit uFALCON;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Menus, StdCtrls, Spin, Grids, Calendar, Buttons, ComCtrls,
  ToolWin, Shapes, LblEffct, DigClock, DB, DBTables, ImgList, XP_Button,
  IBCustomDataSet, IBDatabase, IBTable, DBGrids, jpeg, Gradient,
  WinSkinData, DBCtrls, Mask, Variants, ComOBJ;

type
  TFormPrincipal = class(TForm)
    Panel2: TPanel;
    sbSaida: TSpeedButton;
    sbSair: TSpeedButton;
    sbEstoque: TSpeedButton;
    sbFornecedor: TSpeedButton;
    sbEntradaProduto: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure sbSairClick(Sender: TObject);
    procedure sbEstoqueClick(Sender: TObject);
    procedure sbFornecedorClick(Sender: TObject);
    procedure sbClienteClick(Sender: TObject);
    procedure sbEntradaClick(Sender: TObject);
    procedure sbSaidaClick(Sender: TObject);
    procedure sbSetorClick(Sender: TObject);
    procedure sbProdutoClick(Sender: TObject);
    procedure sbComprasClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vCodigo_do_Produto : Integer;
    vNome_do_Forneceor : Char;
    vCodigo_do_Fornec : Integer;
    vBuscaSaida , vMoviIndividual: Boolean;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses uEstoque, uFornecedor, uEntrada, uSaida, uSetor, uCliente,
uManutencaoProduto, uLancamentoCompras, uListaCompras, uDados, uMovi;

{$R *.DFM}



procedure TFormPrincipal.sbSairClick(Sender: TObject);
begin
//  If MessageDlg('DESEJA SAIR ?',mtConfirmation,[mbyes,mbno],0) = mryes then
  Close;  //
end;

procedure TFormPrincipal.sbEstoqueClick(Sender: TObject);
begin
    FormCadastro := TFormCadastro.Create(Self);
    FormCadastro.ShowModal;
    FormCadastro.Release;
end;

procedure TFormPrincipal.sbFornecedorClick(Sender: TObject);
begin
    FormFornecedor := TFormFornecedor.Create(Self);
    FormFornecedor.ShowModal;
    FormFornecedor.Release;
end;

procedure TFormPrincipal.sbClienteClick(Sender: TObject);
begin
    FormCliente := TFormCliente.Create(Self);
    FormCliente.ShowModal;
    FormCliente.Release;
end;

procedure TFormPrincipal.sbEntradaClick(Sender: TObject);
begin
    FormEntrada := TFormEntrada.Create(Self);
    FormEntrada.ShowModal;
    FormEntrada.Release;
end;

procedure TFormPrincipal.sbSaidaClick(Sender: TObject);
begin
    FormSaida := TFormSaida.Create(Self);
    FormSaida.ShowModal;
    FormSaida.Release;
end;

procedure TFormPrincipal.sbSetorClick(Sender: TObject);
begin
    FormSetor := TFormSetor.Create(Self);
    FormSetor.ShowModal;
    FormSetor.Release;
end;

procedure TFormPrincipal.sbProdutoClick(Sender: TObject);
begin
    FormEntradaProduto := TFormEntradaProduto.Create(Self);
    FormEntradaProduto.ShowModal;
    FormEntradaProduto.Release;
                                  
end;

procedure TFormPrincipal.sbComprasClick(Sender: TObject);
begin
    FormListagemCompras := TFormListagemCompras.Create(Self);
    FormListagemCompras.ShowModal;
    FormListagemCompras.Release;
end;

procedure TFormPrincipal.FormActivate(Sender: TObject);
begin
      vBuscaSaida := False;
      dmDados.Database1.Connected := True;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      dmDados.Database1.Connected := False;

end;



procedure TFormPrincipal.SpeedButton1Click(Sender: TObject);
begin

    FormMovi := TFormMovi.Create(Self);
    FormMovi.ShowModal;
    FormMovi.Release;
    

end;

end.





