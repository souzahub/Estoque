unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniSweetAlert, Data.DB, uniEdit, unimEdit,
  uniBasicGrid, uniDBGrid, unimDBListGrid, unimPanel, uniImageList,
  uniLabel, unimLabel, uniButton, unimButton, uniPanel, uniHTMLFrame,
  unimHTMLFrame, uniURLFrame, unimURLFrame;

type
  TMainmForm = class(TUnimForm)
    UnimDBListGrid1: TUnimDBListGrid;
    edBusca: TUnimEdit;
    dsEstoque: TDataSource;
    UniSweetAlert1: TUniSweetAlert;
    UniNativeImageList1: TUniNativeImageList;
    UnimLabel1: TUnimLabel;
    pnTitulo: TUnimPanel;
    UnimLabel2: TUnimLabel;
    UnimHTMLFrame1: TUnimHTMLFrame;
    xxUnimHTMLFrame1: TUnimHTMLFrame;
    procedure UnimFormCreate(Sender: TObject);
    procedure edBuscaChange(Sender: TObject);
    procedure UnimLabel1Click(Sender: TObject);
    procedure xxxUnimHTMLFrame1AjaxEvent(Sender: TComponent;
      EventName: string; Params: TUniStrings);
    procedure UnimHTMLFrame1AjaxEvent(Sender: TComponent;
      EventName: string; Params: TUniStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uDados, uformMlogin;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.edBuscaChange(Sender: TObject);
begin
  dmDados.RDWEstoque.SQL.Clear;
  dmDados.RDWEstoque.SQL.Add('select * from ESTOQUE  where ');

  dmDados.RDWEstoque.SQL.Add('( ID LIKE  '+QuotedStr('%'+edBusca.Text+'%') );
  dmDados.RDWEstoque.SQL.Add('or PRODUTO LIKE  '+QuotedStr('%'+edBusca.Text+'%') );
  dmDados.RDWEstoque.SQL.Add(') order by PRODUTO');
  dmDados.RDWEstoque.Open;
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  dmDados.RDWEstoque.Open;
  // carrega o HTML da pasa file
//  UnimHTMLFrame1.HTML.LoadFromFile('./files/indexMobile.html');
end;

procedure TMainmForm.UnimHTMLFrame1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
 if EventName = 'valor1' then
  begin
    Close;
  end;
  if EventName = 'valor2' then
  begin
   ShowMessage('opcao 2');
  end;
end;

procedure TMainmForm.xxxUnimHTMLFrame1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
// if EventName = 'valor1' then
//  begin
//    ShowMessage('opcao 1');
//  end;
//  if EventName = 'valor2' then
//  begin
//   ShowMessage('opcao 2');
//  end;

end;

procedure TMainmForm.UnimLabel1Click(Sender: TObject);
begin
 FormMlogin.ShowModal();
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
