unit relatFornec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniURLFrame;

type
  TformRelatFornec = class(TUniForm)
    URLRelatorios: TUniURLFrame;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function formRelatFornec: TformRelatFornec;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function formRelatFornec: TformRelatFornec;
begin
  Result := TformRelatFornec(UniMainModule.GetFormInstance(TformRelatFornec));
end;

end.
