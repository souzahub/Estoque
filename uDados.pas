unit uDados;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TdmDados = class(TDataModule)
    tbEstoque: TTable;
    tbFornec: TTable;
    tbEntrada: TTable;
    tbSaida: TTable;
    tbFornecENDERECO: TStringField;
    tbFornecBAIRRO: TStringField;
    tbFornecCIDADE: TStringField;
    tbFornecUF: TStringField;
    tbFornecCEP: TStringField;
    tbFornecFONE: TStringField;
    tbFornecEMAIL: TStringField;
    tbFornecNOME: TStringField;
    Database1: TDatabase;
    dsFornec: TDataSource;
    dsEstoque: TDataSource;
    tbFornecCNPJ: TStringField;
    dsEntrada: TDataSource;
    tbEntradaENTRADA: TDateTimeField;
    tbEntradaFORNECEDOR: TStringField;
    tbEntradaTOTALITENS: TFloatField;
    tbEntradaVALORTOTAL: TFloatField;
    tbEntradaID: TIntegerField;
    tbEntradaNPRODUTO: TStringField;
    tbEstoqueCODIGO: TIntegerField;
    tbEstoquePRODUTO: TStringField;
    tbEstoqueESTOQUE: TIntegerField;
    tbEstoquePRECO: TFloatField;
    tbEstoqueDTSAIDA: TDateTimeField;
    tbEstoqueDTENTRADA: TDateTimeField;
    tbEntradaTIPO: TIntegerField;
    tbEstoqueFORNEC: TStringField;
    tbEntradaCUSTO: TFloatField;
    tbEntradaCPRODUTO: TIntegerField;
    tbEstoqueESTOQUE_USADO: TIntegerField;
    tbEstoqueESTOQUE_NOVO: TIntegerField;
    tbSaidaSAIDA: TDateTimeField;
    tbSaidaCPRODUTO: TIntegerField;
    tbSaidaQUANTIDADE: TIntegerField;
    tbSaidaVPRODUTO: TFloatField;
    tbSaidaSETOR: TStringField;
    tbSaidaNPRODUTO: TStringField;
    dsSaida: TDataSource;
    tbSaidaPATRIMONIO: TStringField;
    tbFornecID: TIntegerField;
    tbSaidaUSUARIO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{$R *.dfm}

end.
