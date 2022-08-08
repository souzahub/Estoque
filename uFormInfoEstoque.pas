unit uFormInfoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, UniFSButton,
  uniDateTimePicker, uniLabel, uniPanel, uniGUIBaseClasses, uDados,
  frxClass, frxExportBaseDialog, frxExportPDF, uniSweetAlert, Data.DB,
  frxDBSet, frxGradient, uniRadioGroup, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniEdit, uniDBEdit, uniDBText,
  uniMemo, uniDBMemo, uniBasicGrid, uniDBGrid;

type
  TformInfoEstoque = class(TUniForm)
    cp: TUniContainerPanel;
    dsEstoque: TDataSource;
    UniPanel22: TUniPanel;
    lbPropriedade: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    lb1: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    UniLabel11: TUniLabel;
  private
    { Private declarations }

  public
    { Public declarations }

  end;

function formInfoEstoque: TformInfoEstoque;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, Main;

function formInfoEstoque: TformInfoEstoque;
begin
  Result := TformInfoEstoque(UniMainModule.GetFormInstance(TformInfoEstoque));
end;

end.
