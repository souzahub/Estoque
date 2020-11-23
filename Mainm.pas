unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Data.DB, uniBasicGrid, uniDBGrid, unimDBListGrid, uniEdit, unimEdit,
  uniButton, uniBitBtn, unimBitBtn, unimPanel, uniGUIBaseClasses;

type
  TMainmForm = class(TUnimForm)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimPanel1: TUnimPanel;
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtn2: TUnimBitBtn;
    EdPesquisar: TUnimEdit;
    UnimDBListGrid2: TUnimDBListGrid;
    dsEstoque: TDataSource;
    procedure EdPesquisarChange(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uDados;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.EdPesquisarChange(Sender: TObject);
begin

  dmDados.RDWEstoque.SQL.Clear;
  dmDados.RDWEstoque.SQL.Add('select * from ESTOQUE  where ');
  dmDados.RDWEstoque.SQL.Add('( ID LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWEstoque.SQL.Add('or PRODUTO LIKE  '+QuotedStr('%'+EdPesquisar.Text+'%') );
  dmDados.RDWEstoque.SQL.Add(') order by PRODUTO');
  dmDados.RDWEstoque.Open;

end;

procedure TMainmForm.UnimBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  EdPesquisar.Clear;
  EdPesquisarChange(Sender);
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
