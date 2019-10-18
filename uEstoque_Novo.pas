unit uEstoque_Novo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, DB,
  DBTables;

type
  TFormEstoque_Novo = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    btFechar: TBitBtn;
    QueryNovos: TQuery;
    dsQueryNovos: TDataSource;
    QueryNovosCODIGO: TIntegerField;
    QueryNovosPRODUTO: TStringField;
    QueryNovosESTOQUE: TIntegerField;
    QueryNovosPRECO: TFloatField;
    QueryNovosESTOQUE_NOVO: TStringField;
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstoque_Novo: TFormEstoque_Novo;

implementation

uses uDados;

{$R *.dfm}

procedure TFormEstoque_Novo.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormEstoque_Novo.FormActivate(Sender: TObject);
begin
    dmDados.tbEstoque.Open;
    QueryNovos.Close;
    QueryNovos.SQL.Clear;
    QueryNovos.SQL.Add('select * from ESTOQUE order by PRODUTO');
    QueryNovos.Open;
    btFechar.SetFocus;
end;

end.
