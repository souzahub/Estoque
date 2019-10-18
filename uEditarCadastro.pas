unit uEditarCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormEditarCadastro = class(TForm)
    btCancelar: TBitBtn;
    btSalvar: TBitBtn;
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditarCadastro: TFormEditarCadastro;

implementation

{$R *.dfm}

procedure TFormEditarCadastro.btSalvarClick(Sender: TObject);
begin
If MessageDlg('DESEJA SALVAR ?',mtConfirmation,[mbyes,mbno],0) = mryes then
  Close;
end;

procedure TFormEditarCadastro.btCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
