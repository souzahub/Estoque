unit uEstoqueT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, ExtCtrls, DBCtrls, StdCtrls,
  Buttons;

type
  TFormEstoque = class(TForm)
    DBGrid1: TDBGrid;
    QueryEtoqueTotal: TQuery;
    deQueryEtoqueTotal: TDataSource;
    QueryEtoqueTotalCODIGO: TIntegerField;
    QueryEtoqueTotalPRODUTO: TStringField;
    QueryEtoqueTotalESTOQUE: TIntegerField;
    QueryEtoqueTotalPRECO: TFloatField;
    QueryEtoqueTotalDTSAIDA: TDateTimeField;
    QueryEtoqueTotalDTENTRADA: TDateTimeField;
    QueryEtoqueTotalESTOQUE_NOVO: TStringField;
    QueryEtoqueTotalESTOQUE_USADO: TStringField;
    btFechar: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstoque: TFormEstoque;

implementation

{$R *.dfm}

procedure TFormEstoque.btFecharClick(Sender: TObject);
begin
   Close;
end;

end.
