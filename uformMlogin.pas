unit uformMlogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniSweetAlert, uniGUIBaseClasses, uniImageList, Vcl.Imaging.pngimage,
  uniImage, unimImage, uniButton, uniBitBtn, unimBitBtn, uniLabel,
  unimLabel, uniEdit, unimEdit, Data.DB, unimScrollBox, unimButton,
  uniPanel, uniHTMLFrame, unimHTMLFrame;

type
  TFormMlogin = class(TUnimLoginForm)
    CntPnlTop: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    UnimLabel2: TUnimLabel;
    edSenha: TUnimEdit;
    EdUsuario: TUnimEdit;
    lbAberto: TUnimLabel;
    lbFehado: TUnimLabel;
    UniSweetAlert1: TUniSweetAlert;
    UniNativeImageList1: TUniNativeImageList;
    UnimBitBtn1: TUnimBitBtn;
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure lbFehadoClick(Sender: TObject);
    procedure lbAbertoClick(Sender: TObject);
    procedure UnimLoginFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FormMlogin: TFormMlogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uDados;

function FormMlogin: TFormMlogin;
begin
  Result := TFormMlogin(UniMainModule.GetFormInstance(TFormMlogin));
end;

procedure TFormMlogin.lbAbertoClick(Sender: TObject);
begin
  edSenha.PasswordChar := '*' ;
  lbFehado.Visible := True ;
  lbAberto.Visible := False ;
end;

procedure TFormMlogin.lbFehadoClick(Sender: TObject);
begin
  edSenha.PasswordChar := #0 ;
  lbFehado.Visible := False ;
  lbAberto.Visible := True;
end;

procedure TFormMlogin.UnimBitBtn1Click(Sender: TObject);
begin
        dmDados.rdwUsuario.Open;
      if dmDados.rdwUsuario.Locate('LOGIN', uppercase( EdUsuario.Text ), []) then
      begin
        if dmDados.rdwUsuarioSENHA.Value <> edSenha.Text then
        begin
//          ShowMessage('ATENÇÃO: USUARIO ou SENHA INVÁLIDA.');
        UniSweetAlert1.InputType := ItNone;
        UniSweetAlert1.AlertType := atWarning;
        UniSweetAlert1.ShowCancelButton := False;
        UniSweetAlert1.Title := 'ATENÇÃO';
        UniSweetAlert1.Show('Usuario / Senha Incorreta');
        edUsuario.SetFocus;
        exit;
        end;
      end
      else
      begin
//        ShowMessage('ATENÇÃO: USUARIO ou SENHA INVÁLIDA.');
        UniSweetAlert1.InputType := ItNone;
        UniSweetAlert1.AlertType := atWarning;
        UniSweetAlert1.ShowCancelButton := False;
        UniSweetAlert1.Title := 'ATENÇÃO';
        UniSweetAlert1.Show('Usuario / Senha Incorreta');
        edUsuario.SetFocus;
        exit;
      end;

      if dmDados.rdwUsuario.Locate('PERFIL', dmDados.rdwUsuarioPERFIL.Value, []) then // bloqueia es o usuario nao for Administrador
      begin
        if dmDados.rdwUsuarioPERFIL.Value <> 'ADMINISTRADOR' then
        begin
          UniSweetAlert1.Title := ('ATENÇÃO !');
          UniSweetAlert1.AlertType := atInfo;
          UniSweetAlert1.ShowCancelButton := False;
          UniSweetAlert1.ConfirmButtonText := 'Ok';
          UniSweetAlert1.Width := 300;
          UniSweetAlert1.Show('Usuário não autorizado');
          exit;
        end;
      end;

      ModalResult := mrOk;
end;

procedure TFormMlogin.UnimLoginFormCreate(Sender: TObject);
begin
  lbAberto.Visible := False;
end;

initialization
  RegisterAppFormClass(TFormMlogin);

end.
