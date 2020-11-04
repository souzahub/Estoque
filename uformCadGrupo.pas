unit uformCadGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniDBNavigator, uniLabel, uniEdit, uniPanel,
  uniGUIBaseClasses, uniImageList, uniBasicGrid, uniDBGrid, Data.DB,
  uniButton, uniBitBtn, uniSweetAlert, UniFSButton;

type
  TformCadGrupo = class(TUniForm)
    DsConsProduto: TDataSource;
    UniNativeImageList1: TUniNativeImageList;
    UniPanel1: TUniPanel;
    UniSweetAlert1: TUniSweetAlert;
    UniPanel2: TUniPanel;
    edNomeGrupo: TUniEdit;
    lbNomeIn: TUniLabel;
    BtInc: TUniFSButton;
    BtAlt: TUniFSButton;
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtIncClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
  private
     xGrupo : Boolean;
  public
    { Public declarations }
  end;

function formCadGrupo: TformCadGrupo;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uDados, uFrCadastroProduto, Main;

function formCadGrupo: TformCadGrupo;
begin
  Result := TformCadGrupo(UniMainModule.GetFormInstance(TformCadGrupo));
end;

procedure TformCadGrupo.BtAltClick(Sender: TObject);
begin

  Close;
  edNomeGrupo.Clear;

  TfrCadastroProduto(MainForm.FindComponent('frCadastroProduto')).dbCbGrupos.ItemIndex := -1;
  TfrCadastroProduto(MainForm.FindComponent('frCadastroProduto')).dbCbGrupos.EmptyText := ' GRUPOS ';

end;

procedure TformCadGrupo.BtIncClick(Sender: TObject);
begin

   if edNomeGrupo.Text = '' then
  begin
    UniSweetAlert1.Title := ('Grupo Obrigatório!');
    UniSweetAlert1.AlertType := atInfo;
    UniSweetAlert1.ShowCancelButton := True;
    UniSweetAlert1.ShowConfirmButton := False;
    UniSweetAlert1.CancelButtonColor := clMaroon;
    UniSweetAlert1.Width := 400;
    UniSweetAlert1.CancelButtonText := 'OK';
    UniSweetAlert1.Show('Informe o Grupo');
    exit;
  end;

  xGrupo := True;
  UniSweetAlert1.Title := 'Deseja';
  UniSweetAlert1.AlertType := atQuestion;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.ConfirmButtonColor := clMaroon;
  UniSweetAlert1.CancelButtonColor := $00684E3E;
  UniSweetAlert1.ShowConfirmButton := True;
  UniSweetAlert1.Show(' Confirmar o Grupo ?' );

end;

procedure TformCadGrupo.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 TfrCadastroProduto(MainForm.FindComponent('frCadastroProduto')).tgl1.Toggled := False; // direciona para o form Cadastro Produto
end;

procedure TformCadGrupo.UniFormCreate(Sender: TObject);
begin
  edNomeGrupo.SetFocus;
  dmDados.RDWGrupos.Open;
  edNomeGrupo.Clear;



end;

procedure TformCadGrupo.UniSweetAlert1Confirm(Sender: TObject);
var xErro : String;
begin
 if xGrupo then
  begin
    dmDados.RDWAuxiliar.Close;
    dmDados.RDWAuxiliar.SQL.Clear;
    dmDados.RDWAuxiliar.SQL.Add('insert into GRUPOS values ( NULL, :vGRUPOS)');

    // ID - NULL
    dmDados.RDWAuxiliar.Params[0].DataType := ftString; // Endereco
    dmDados.RDWAuxiliar.Params[0].Value := edNomeGrupo.Text ;

    TfrCadastroProduto(MainForm.FindComponent('frCadastroProduto')).dbCBGrupos.Items.Add( edNomeGrupo.Text );

    dmDados.RDWAuxiliar.ExecSQL( xErro );
    dmDados.RDWGrupos.Close();
    dmDados.RDWGrupos.Open();
    dmDados.RDWEstoque.Close(); // abr e ficha tabela do estoque
    dmDados.RDWEstoque.Open();
    xGrupo := False;
  end;
  Close;
  // coloca o novo grupo erdenado
  dmDados.RDWGrupos.Close;
end;

procedure TformCadGrupo.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
  xGrupo := False;
  edNomeGrupo.Text := '';
  edNomeGrupo.SetFocus;
end;

end.
