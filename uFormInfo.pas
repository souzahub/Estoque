unit uFormInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, uniMultiItem, uniListBox,
  uniScrollBox, uniMemo, uniDBMemo, uniLabel, uniPanel, uniBasicGrid,
  uniDBGrid, uniGUIBaseClasses, uniDBText, uniGridExporters, uniButton,
  uniBitBtn, UniFSButton;

type
  TformInfo = class(TUniForm)
    dsInfo: TDataSource;
    UniPanel0: TUniPanel;
    ContainerPanel1: TUniContainerPanel;
    pnlA: TUniPanel;
    pn2: TUniPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniDBMemo2: TUniDBMemo;
    UniContainerPanel3: TUniContainerPanel;
    UniDBMemo3: TUniDBMemo;
    UniLabel3: TUniLabel;
    pn3: TUniPanel;
    UniListBox1: TUniListBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function formInfo: TformInfo;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uDados;

function formInfo: TformInfo;
begin
  Result := TformInfo(UniMainModule.GetFormInstance(TformInfo));
end;

end.
