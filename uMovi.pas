unit uMovi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, DB, DBTables, StdCtrls, Buttons;

type
  TFormMovi = class(TForm)
    pcMovi: TPageControl;
    TabEntrada: TTabSheet;
    TabSaida: TTabSheet;
    QueryEntrada: TQuery;
    QuerySaida: TQuery;
    dsEntrada: TDataSource;
    dsSaida: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QueryEntradaENTRADA: TDateTimeField;
    QueryEntradaFORNECEDOR: TStringField;
    QueryEntradaTOTALITENS: TFloatField;
    QueryEntradaVALORTOTAL: TFloatField;
    QueryEntradaID: TIntegerField;
    QueryEntradaNPRODUTO: TStringField;
    QueryEntradaTIPO: TIntegerField;
    QueryEntradaCUSTO: TFloatField;
    QueryEntradaCPRODUTO: TIntegerField;
    QuerySaidaSAIDA: TDateTimeField;
    QuerySaidaCPRODUTO: TIntegerField;
    QuerySaidaQUANTIDADE: TIntegerField;
    QuerySaidaVPRODUTO: TFloatField;
    QuerySaidaSETOR: TStringField;
    QuerySaidaNPRODUTO: TStringField;
    lbProduto: TLabel;
    QuerySaidaPATRIMONIO: TStringField;
    QuerySaidaUSUARIO: TStringField;
    BitBtn1: TBitBtn;
    EditaBusca: TEdit;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure QueryEntradaTIPOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditaBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMovi: TFormMovi;

implementation
uses uFALCON;

{$R *.dfm}

procedure TFormMovi.FormActivate(Sender: TObject);
begin
    if FormPrincipal.vMoviIndividual then
    begin
      QueryEntrada.Close;
      QueryEntrada.SQL.Clear;
      QueryEntrada.SQL.Add('select * from ENTRADA where CPRODUTO=:vCPROD');
      QueryEntrada.SQL.Add('order by ENTRADA');
      QueryEntrada.Params[0].DataType := ftInteger;
      QueryEntrada.Params[0].Value := FormPrincipal.vCodigo_do_Produto;
      QueryEntrada.Open;

      QuerySaida.Close;
      QuerySaida.SQL.Clear;
      QuerySaida.SQL.Add('select * from SAIDA where CPRODUTO=:vCPROD');
      QuerySaida.SQL.Add('order by SAIDA');
      QuerySaida.Params[0].DataType := ftInteger;
      QuerySaida.Params[0].Value := FormPrincipal.vCodigo_do_Produto;
      QuerySaida.Open;
      lbProduto.Caption := '  Produto selecionado: '+QueryEntradaNPRODUTO.Value;
    end
    else
    begin

      QueryEntrada.Close;
      QueryEntrada.SQL.Clear;
      QueryEntrada.SQL.Add('select * from ENTRADA order by ENTRADA');
      QueryEntrada.Open;

      QuerySaida.Close;
      QuerySaida.SQL.Clear;
      QuerySaida.SQL.Add('select * from SAIDA order by SAIDA');
      QuerySaida.Open;
      lbProduto.Caption := '  Todos produtos';
    end;
end;

procedure TFormMovi.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMovi.QueryEntradaTIPOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if QueryEntradaTIPO.Value = 0 then
       Text := 'Novos'
    else
       Text := 'Usados';
end;

procedure TFormMovi.BitBtn1Click(Sender: TObject);
begin
 Close;
end;

procedure TFormMovi.EditaBuscaChange(Sender: TObject);
begin
    if pcMovi.ActivePage = TabEntrada then
    begin
      QueryEntrada.Close;
      QueryEntrada.SQL.Clear;
      QueryEntrada.SQL.Add('select * from ENTRADA  where (');
      QueryEntrada.SQL.Add('CPRODUTO LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
      QueryEntrada.SQL.Add('or ENTRADA LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
      QueryEntrada.SQL.Add('or NPRODUTO LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
      QueryEntrada.SQL.Add(') order by CPRODUTO');
      QueryEntrada.Open;
    end
    else
    begin
      QuerySaida.Close;
      QuerySaida.SQL.Clear;
      QuerySaida.SQL.Add('select * from SAIDA  where (');
      QuerySaida.SQL.Add('CPRODUTO LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
      QuerySaida.SQL.Add('or SAIDA LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
      QuerySaida.SQL.Add('or NPRODUTO LIKE  '+QuotedStr('%'+EditaBusca.Text+'%') );
      QuerySaida.SQL.Add(') order by CPRODUTO');
      QuerySaida.Open;
    end;

    end;


end.
