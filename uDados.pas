unit uDados;

interface

uses
  SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uDWConstsData, uRESTDWPoolerDB, uDWAbout, UniFSiGrowl, uniGUIBaseClasses,
  uniGUIClasses, UniFSToast;

type
  TdmDados = class(TDataModule)
    RDWConexao: TRESTDWDataBase;
    rdwUsuario: TRESTDWClientSQL;
    RDWEntrada: TRESTDWClientSQL;
    RDWEstoque: TRESTDWClientSQL;
    RDWEstoqueCODIGO: TIntegerField;
    RDWEstoquePRODUTO: TStringField;
    RDWEstoqueESTOQUE: TIntegerField;
    RDWEstoquePRECO: TFloatField;
    RDWEstoqueDTSAIDA: TSQLTimeStampField;
    RDWEstoqueDTENTRADA: TSQLTimeStampField;
    RDWEstoqueFORNEC: TStringField;
    RDWEstoqueESTOQUE_USADO: TIntegerField;
    RDWEstoqueESTOQUE_NOVO: TIntegerField;
    RDWEstoqueGRUPO: TStringField;
    RDWEstoqueID: TIntegerField;
    RDWEntradaENTRADA: TSQLTimeStampField;
    RDWEntradaFORNECEDOR: TStringField;
    RDWEntradaTOTALITENS: TFloatField;
    RDWEntradaVALORTOTAL: TFloatField;
    RDWEntradaID: TIntegerField;
    RDWEntradaNPRODUTO: TStringField;
    RDWEntradaTIPO: TIntegerField;
    RDWEntradaCUSTO: TFloatField;
    RDWEntradaCPRODUTO: TIntegerField;
    rdwUsuarioID: TIntegerField;
    rdwUsuarioNOME: TStringField;
    rdwUsuarioEMAIL: TStringField;
    rdwUsuarioLOGIN: TStringField;
    rdwUsuarioSENHA: TStringField;
    rdwUsuarioPERFIL: TStringField;
    RDWFornec: TRESTDWClientSQL;
    RDWFornecENDERECO: TStringField;
    RDWFornecBAIRRO: TStringField;
    RDWFornecCIDADE: TStringField;
    RDWFornecUF: TStringField;
    RDWFornecCEP: TStringField;
    RDWFornecFONE: TStringField;
    RDWFornecEMAIL: TStringField;
    RDWFornecNOME: TStringField;
    RDWFornecCNPJ: TStringField;
    RDWFornecID: TIntegerField;
    RDWSaida: TRESTDWClientSQL;
    RDWSaidaSAIDA: TSQLTimeStampField;
    RDWSaidaCPRODUTO: TIntegerField;
    RDWSaidaQUANTIDADE: TIntegerField;
    RDWSaidaVPRODUTO: TFloatField;
    RDWSaidaSETOR: TStringField;
    RDWSaidaNPRODUTO: TStringField;
    RDWSaidaPATRIMONIO: TStringField;
    RDWSaidaID: TIntegerField;
    RDWAuxiliar: TRESTDWClientSQL;
    RDWGrupos: TRESTDWClientSQL;
    RDWGruposID: TIntegerField;
    RDWGruposGRUPOS: TStringField;
    RDWEstoqueRelat: TRESTDWClientSQL;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField3: TStringField;
    IntegerField5: TIntegerField;
    RelatFornec: TRESTDWClientSQL;
    RelatFornecENDERECO: TStringField;
    RelatFornecBAIRRO: TStringField;
    RelatFornecCIDADE: TStringField;
    RelatFornecUF: TStringField;
    RelatFornecCEP: TStringField;
    RelatFornecFONE: TStringField;
    RelatFornecEMAIL: TStringField;
    RelatFornecNOME: TStringField;
    RelatFornecCNPJ: TStringField;
    RelatFornecID: TIntegerField;
    relatSaida: TRESTDWClientSQL;
    IntegerField10: TIntegerField;
    relatSaidaSAIDA: TSQLTimeStampField;
    relatSaidaCPRODUTO: TIntegerField;
    relatSaidaQUANTIDADE: TIntegerField;
    relatSaidaVPRODUTO: TFloatField;
    relatSaidaSETOR: TStringField;
    relatSaidaNPRODUTO: TStringField;
    relatSaidaPATRIMONIO: TStringField;
    relatSaidaUSUARIO: TStringField;
    RDWSaidaUSUARIO: TStringField;
    RDWLOGSYS: TRESTDWClientSQL;
    RDWLOGSYSID: TIntegerField;
    RDWLOGSYSDIA: TSQLTimeStampField;
    RDWLOGSYSLOGIN: TStringField;
    RDWLOGSYSOPERACAO: TStringField;
    RDWLOGSYSOCORRENCIA: TStringField;
    FSiGrowlComp: TUniFSiGrowl;
    Toast: TUniFSToast;
    RDWEntradaLOCALPRODUTO: TStringField;
    RDWAutentificacao: TRESTDWClientSQL;
    RDWAutentificacaoID: TIntegerField;
    RDWAutentificacaoDATA_INICIO: TSQLTimeStampField;
    RDWAutentificacaoDATA_FIM: TSQLTimeStampField;
    RDWAutentificacaoCODIGO: TStringField;
    RDWAutentificacaoID_IDENTIFICACAO: TIntegerField;
    RDWAutentificacaoNOME_USUARIO: TStringField;
    RDWDataServidor: TRESTDWClientSQL;
    RDWDataServidorDATASERVIDOR: TSQLTimeStampField;
    RDWEntradaPATRIMONIO: TStringField;
    RDWEstoqueVISUALIZAR: TIntegerField;
    RDWCAD_PRODUTO: TRESTDWClientSQL;
    RDWCAD_PRODUTOCODIGO: TIntegerField;
    RDWCAD_PRODUTOPRODUTO: TStringField;
    RDWCAD_PRODUTOESTOQUE: TIntegerField;
    RDWCAD_PRODUTOPRECO: TFloatField;
    RDWCAD_PRODUTODTSAIDA: TSQLTimeStampField;
    RDWCAD_PRODUTODTENTRADA: TSQLTimeStampField;
    RDWCAD_PRODUTOFORNEC: TStringField;
    RDWCAD_PRODUTOESTOQUE_USADO: TIntegerField;
    RDWCAD_PRODUTOESTOQUE_NOVO: TIntegerField;
    RDWCAD_PRODUTOGRUPO: TStringField;
    RDWCAD_PRODUTOID: TIntegerField;
    RDWMOVISAIDA: TRESTDWClientSQL;
    SQLTimeStampField3: TSQLTimeStampField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    FloatField2: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField8: TIntegerField;
    StringField7: TStringField;
    RDWMOVIENTRADA: TRESTDWClientSQL;
    SQLTimeStampField4: TSQLTimeStampField;
    StringField8: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField9: TIntegerField;
    StringField9: TStringField;
    IntegerField11: TIntegerField;
    FloatField5: TFloatField;
    IntegerField12: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    RDWEstoqueBALANCAO: TIntegerField;
    RDWEstoqueDTBALANCAO: TSQLTimeStampField;
    RDWBalanco: TRESTDWClientSQL;
    RDWBalancoID: TIntegerField;
    RDWBalancoPRODUTO: TStringField;
    RDWBalancoBALANCAO: TIntegerField;
    RDWBalancoDTBALANCAO: TSQLTimeStampField;
    RDWBalancoINFO: TStringField;
    RDWBalancoGRUPO: TStringField;
    RDWrelatBalanco: TRESTDWClientSQL;
    RDWrelatBalancoID: TIntegerField;
    RDWrelatBalancoPRODUTO: TStringField;
    RDWrelatBalancoESTOQUE: TIntegerField;
    RDWrelatBalancoBALANCAO: TIntegerField;
    RDWrelatBalancoDTBALANCAO: TSQLTimeStampField;
    RDWrelatBalancoGRUPO: TStringField;
    RDWAtualizaBalanco: TRESTDWClientSQL;
    RDWAtualizaBalancoID: TIntegerField;
    RDWAtualizaBalancoPRODUTO: TStringField;
    RDWAtualizaBalancoBALANCAO: TIntegerField;
    RDWAtualizaBalancoESTOQUE: TIntegerField;
    RDWAtualizaBalancoDTBALANCAO: TSQLTimeStampField;
    RDWAtualizaBalancoGRUPO: TStringField;
    RDWSaidaPRINT: TStringField;
    procedure RDWEntradaTIPOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure RDWEstoquePRECOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure RDWEstoqueVISUALIZARGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure RDWBalancoINFOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure RDWSaidaPRINTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function dmDados: TdmDados;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function dmDados: TdmDados;
begin
  Result := TdmDados(UniMainModule.GetModuleInstance(TdmDados));
end;

procedure TdmDados.RDWBalancoINFOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DisplayText then
  Text := '<i title="Informações" class="x-fa fa-2x fa fa-info-circle"; style="color:#9e0808;cursor:pointer;font-style: normal;">&nbsp</i>';
end;

procedure TdmDados.RDWEntradaTIPOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if RDWEntradaTIPO.Value = 0  then
      Text := 'NOVO';
  if RDWEntradaTIPO.Value = 1  then
      Text := 'USADO';
end;

procedure TdmDados.RDWEstoquePRECOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text:= FormatFloat('#,##0.00', dmDados.RDWEstoquePRECO.Value)

end;

procedure TdmDados.RDWEstoqueVISUALIZARGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if DisplayText then
  Text := '<i title="Imagem" class="x-fa fa-lg fa fa-info-circle"; style="color:#3442a8;cursor:pointer;font-style: normal;">&nbsp</i>';
end;

procedure TdmDados.RDWSaidaPRINTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   // chama o botao do boodstrap
 if DisplayText then
  Text := '<i title="Ativo" class="x-fa fa-lg fa-print"; style="color:#3442a8;cursor:pointer;font-style: normal;">&nbsp</i>';
end;

initialization
  RegisterModuleClass(TdmDados);

end.
