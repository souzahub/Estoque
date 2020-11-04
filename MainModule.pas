unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, uniGUIBaseClasses, uniGUIClasses,
  UniFSTheme;

type
  TUniMainModule = class(TUniGUIMainModule)
    FSTheme: TUniFSTheme;
    procedure UniGUIMainModuleCreate(Sender: TObject);
    procedure UniGUIMainModuleSessionTimeout(ASession: TObject;
      var ExtendTimeOut: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, uDados;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
begin
 FSTheme.Aplly;
end;

procedure TUniMainModule.UniGUIMainModuleSessionTimeout(ASession: TObject;
  var ExtendTimeOut: Integer);
begin
  dmDados.RDWConexao.Active := False;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
