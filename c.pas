unit c;

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
  TformItensInsumos = class(TUniForm)
    cp: TUniContainerPanel;
    dsFichaInsumos: TDataSource;
    UniPanel22: TUniPanel;
    lbPropriedade: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    UniLabel5: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel11: TUniLabel;
  private
    { Private declarations }

  public
    { Public declarations }

  end;

function formItensInsumos: TformItensInsumos;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, uFormRelatorio, Main;

function formItensInsumos: TformItensInsumos;
begin
  Result := TformItensInsumos(UniMainModule.GetFormInstance(TformItensInsumos));
end;

end.
