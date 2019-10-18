unit uEstoque_Usados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, DB,
  DBTables;

type
  TFormEstoque_Usados = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    btFechar: TBitBtn;
    QueryUsados: TQuery;
    dsQueryUsados: TDataSource;
    QueryUsadosCODIGO: TIntegerField;
    QueryUsadosPRODUTO: TStringField;
    QueryUsadosPRECO: TFloatField;
    QueryUsadosESTOQUE_USADO: TStringField;
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstoque_Usados: TFormEstoque_Usados;

implementation

uses uDados;

{$R *.dfm}

procedure TFormEstoque_Usados.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormEstoque_Usados.FormActivate(Sender: TObject);
begin
    dmDados.tbEstoque.Open;
    QueryUsados.Close;
    QueryUsados.SQL.Clear;
    Queryusados.SQL.Add('select * from ESTOQUE order by PRODUTO');
    QueryUsados.Open;
    btFechar.SetFocus;
end;

end.
