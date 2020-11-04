unit uFormBuscaFornec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniPanel, uniGUIBaseClasses, uniImageList,
  uniBasicGrid, uniDBGrid, uniButton, uniBitBtn, Data.DB, uniDBNavigator,
  uniLabel, uniEdit, UniFSButton;

type
  TformBuscaFornec = class(TUniForm)
    DsConsFornec: TDataSource;
    UniDBGrid1: TUniDBGrid;
    UniNativeImageList1: TUniNativeImageList;
    imgl32: TUniNativeImageList;
    UniPanel2: TUniPanel;
    UniLabel8: TUniLabel;
    EdPesquisar: TUniEdit;
    ubtSair: TUniFSButton;
    btCancelar: TUniFSButton;
    UniPanel3: TUniPanel;
    procedure UniFormCreate(Sender: TObject);
    procedure ubtSairClick(Sender: TObject);
    procedure EdPesquisarChange(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function formBuscaFornec: TformBuscaFornec;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uDados, uFrEntrada, Main, uFrSaida;

function formBuscaFornec: TformBuscaFornec;
begin
  Result := TformBuscaFornec(UniMainModule.GetFormInstance(TformBuscaFornec));
end;

procedure TformBuscaFornec.EdPesquisarChange(Sender: TObject);
begin

 // pesquisa dinamica na tabela Usuario
  dmDados.RDWFornec.SQL.Clear;
  dmDados.RDWFornec.SQL.Add('select * from FORNEC where');
  dmDados.RDWFornec.SQL.Add('(NOME LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWFornec.SQL.Add('or CNPJ LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWFornec.SQL.Add(')order by NOME ');
  dmDados.RDWFornec.Open;

end;

procedure TformBuscaFornec.ubtSairClick(Sender: TObject);
begin

    if MainForm.vModuloAtual = 0 then  //idFornecedor
    begin
      MainForm.vConsultaFornecedor := dmDados.RDWFornecID.Value;
     // Iteragem Form com Frame
      TFrEntrada(MainForm.FindComponent('frEntrada')).edCodFornec.Text := IntToStr(dmDados.RDWFornecID.Value);
      TFrEntrada(MainForm.FindComponent('frEntrada')).lbFornec.Text := dmDados.RDWFornecNOME.Value;
    end;
    Close;
     // Limpa a tabela na Saida
    dmDados.RDWFornec.Close;
    dmDados.RDWFornec.SQL.Clear;
    dmDados.RDWFornec.SQL.Add('select * from FORNEC order by NOME');
    dmDados.RDWFornec.Open;

end;

procedure TformBuscaFornec.UniDBGrid1DblClick(Sender: TObject);
begin
   if MainForm.vModuloAtual = 0 then  //idFornecedor
    begin
      MainForm.vConsultaFornecedor := dmDados.RDWFornecID.Value;
     // Iteragem Form com Frame
      TFrEntrada(MainForm.FindComponent('frEntrada')).edCodFornec.Text := IntToStr(dmDados.RDWFornecID.Value);
      TFrEntrada(MainForm.FindComponent('frEntrada')).lbFornec.Text := dmDados.RDWFornecNOME.Value;
    end;
    TFrEntrada(MainForm.FindComponent('frEntrada')).lbFornec.Visible := True ; // enterage com frame
    Close;
    // Limpa a tabela
    dmDados.RDWFornec.Close;
    dmDados.RDWFornec.SQL.Clear;
    dmDados.RDWFornec.SQL.Add('select * from FORNEC order by NOME');
    dmDados.RDWFornec.Open;
end;

procedure TformBuscaFornec.UniFormCreate(Sender: TObject);
begin
  EdPesquisar.SetFocus; // deixa o foco no buscar
  dmDados.RDWFornec.Open;
  EdPesquisar.Text := '';
end;

procedure TformBuscaFornec.btCancelarClick(Sender: TObject);
begin

  Close;
  // Limpa a tabela
  TFrEntrada(MainForm.FindComponent('frEntrada')).edCodFornec.Text := '';
  TFrEntrada(MainForm.FindComponent('frEntrada')).lbFornec.Text := '';
  dmDados.RDWFornec.SQL.Clear;
  dmDados.RDWFornec.SQL.Add('select * from FORNEC order by NOME');
  dmDados.RDWFornec.Open;

end;

end.
