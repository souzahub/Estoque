unit uFormLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniEdit, uniLabel,
  Vcl.Imaging.jpeg, uniSpeedButton, uniButton, uniBitBtn, uniPanel,
  uniGUIBaseClasses, uniImage, uniSweetAlert, uniImageList, unimEdit,
  uniScreenMask, UniFSiGrowl, UniFSToast, UniFSEdit, UniFSButton,
  Vcl.Imaging.pngimage;

type
  TformLogin = class(TUniLoginForm)
    UniNativeImageList1: TUniNativeImageList;
    UniSweetAlert1: TUniSweetAlert;
    FSiGrowl: TUniFSiGrowl;
    Toast: TUniFSToast;
    UniFSiGrowl1: TUniFSiGrowl;
    imgl20: TUniNativeImageList;
    lbA: TUniLabel;
    lbF: TUniLabel;
    UniPanel1: TUniPanel;
    sbConectar: TUniBitBtn;
    UniFSToast1: TUniFSToast;
    UniImage1: TUniImage;
    UniLabel5: TUniLabel;
    edUsuario: TUniEdit;
    edSenha: TUniEdit;
    UniScreenMask1: TUniScreenMask;
    procedure sbConectarClick(Sender: TObject);
    procedure UniLoginFormScreenResize(Sender: TObject; AWidth,
      AHeight: Integer);
    procedure UniLoginFormCreate(Sender: TObject);
    procedure lbAClick(Sender: TObject);
    procedure lbFClick(Sender: TObject);
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function formLogin: TformLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uDados, Main;

function formLogin: TformLogin;
begin
  Result := TformLogin(UniMainModule.GetFormInstance(TformLogin));
end;

procedure TformLogin.edSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  sbConectar.SetFocus;
end;

procedure TformLogin.edUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  edSenha.SetFocus;
end;

procedure TformLogin.lbAClick(Sender: TObject);
begin
  edSenha.PasswordChar := #0 ;
  lbF.Visible := True ;
  lbA.Visible := False ;
end;

procedure TformLogin.lbFClick(Sender: TObject);
begin

  edSenha.PasswordChar :=  '*' ;
  lbF.Visible := False ;
  lbA.Visible := True;

end;

procedure TformLogin.sbConectarClick(Sender: TObject);
begin
   dmDados.rdwUsuario.Open;
  if dmDados.rdwUsuario.Locate('LOGIN', EdUsuario.Text, []) then
    begin
      if dmDados.rdwUsuarioSENHA.Value <> edSenha.Text then
        begin
//      ShowMessage('ATENÇÃO: USUARIO ou SENHA INVÁLIDA.');
        UniSweetAlert1.InputType := ItNone;
        UniSweetAlert1.AlertType := atWarning;
        UniSweetAlert1.ShowCancelButton := False;
        UniSweetAlert1.ShowConfirmButton := True;
        UniSweetAlert1.Width := 300;
        UniSweetAlert1.Title := 'ATENÇÃO';
        UniSweetAlert1.Show('Usuario / Senha Incorreta');
        edUsuario.SetFocus;
        exit;
        end;
      end
      else
      begin
//      ShowMessage('ATENÇÃO: USUARIO ou SENHA INVÁLIDA.');
        UniSweetAlert1.InputType := ItNone;
        UniSweetAlert1.AlertType := atWarning;
        UniSweetAlert1.ShowCancelButton := False;
        UniSweetAlert1.ShowConfirmButton := True;
        UniSweetAlert1.Width := 300;
        UniSweetAlert1.Title := 'ATENÇÃO';
        UniSweetAlert1.Show('Usuario / Senha Incorreta');
        edUsuario.SetFocus;
        exit;
      end;

      ModalResult := mrOk;
      Toast.Success('Sucesso','Usuário autorizado ', topCenter);

      MainForm.xUsuario := edUsuario.Text; // o edit usuario sempre sera o usuario global
      MainForm.lbOla.Caption := 'Olá, '+dmDados.RDWUsuarioNOME.Value;
      MainForm.lbNomeUsuario.Caption := dmDados.RDWUsuarioNOME.Value;

      // registra o log de entrada
//      MainForm.RegistraLog('LOGIN', 'LOGOU NO SISTEMA');

      MainForm.vADMIN := False;
      if dmDados.rdwUsuarioPERFIL.Value = 'ADMINISTRADOR' then
      MainForm.vADMIN := True;

end;

procedure TformLogin.UniLoginFormCreate(Sender: TObject);
begin
  lbF.Visible := False;
  edUsuario.SetFocus;
end;

procedure TformLogin.UniLoginFormScreenResize(Sender: TObject; AWidth,
  AHeight: Integer);
begin
      // resposividade na tela
  Self.Left := Round((AWidth / 2)  - (Self.Width / 2));
  Self.Top  := Round((AHeight / 2) - (Self.Height / 2));
end;

procedure TformLogin.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
  Close;// fecha o sistema caso clicar no alert
end;

initialization
  RegisterAppFormClass(TformLogin);

end.
