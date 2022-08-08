unit uFormInfoEntrada;

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
  TformInfoEntrada = class(TUniForm)
    cp: TUniContainerPanel;
    dsEntrada: TDataSource;
    UniPanel22: TUniPanel;
    lbPropriedade: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    UniLabel5: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniDBEdit12: TUniDBEdit;
    UniLabel12: TUniLabel;
  private
    { Private declarations }

  public
    { Public declarations }

  end;

function formInfoEntrada: TformInfoEntrada;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, Main;

function formInfoEntrada: TformInfoEntrada;
begin
  Result := TformInfoEntrada(UniMainModule.GetFormInstance(TformInfoEntrada));
end;

end.
