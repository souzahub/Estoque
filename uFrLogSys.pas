unit uFrLogSys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDBNavigator, uniLabel, uniEdit, uniPanel,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniScrollBox, Data.DB,
  uniFileUpload, uniImage, uniMultiItem, uniListBox, uniButton, uniBitBtn;

type
  TfrLogSys = class(TUniFrame)
    UniScrollBox1: TUniScrollBox;
    UniDBGrid1: TUniDBGrid;
    dsConulta: TDataSource;
    UniPanel1: TUniPanel;
    UniLabel8: TUniLabel;
    EdPesquisar: TUniEdit;
    procedure EdPesquisarChange(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uDados, ServerModule;

procedure TfrLogSys.EdPesquisarChange(Sender: TObject);
begin
   // pesquisa dinamica na tabela LOG
  dmDados.RDWLOGSYS.SQL.Clear;
  dmDados.RDWLOGSYS.SQL.Add('select * from LOGSYS where');
  dmDados.RDWLOGSYS.SQL.Add('(LOGIN LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWLOGSYS.SQL.Add('or OPERACAO LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWLOGSYS.SQL.Add('or DIA LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWLOGSYS.SQL.Add(')order by ID desc');
  dmDados.RDWLOGSYS.Open;

end;

procedure TfrLogSys.UniFrameCreate(Sender: TObject);
begin
  EdPesquisarChange(Sender);
end;

end.
