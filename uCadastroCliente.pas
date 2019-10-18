unit uCadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormCadastroCliente = class(TForm)
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
  FormCadastroCliente: TFormCadastroCliente;

implementation

{$R *.dfm}

procedure TFormCadastroCliente.btSalvarClick(Sender: TObject);
begin
If MessageDlg('DESEJA SALVAR ?',mtConfirmation,[mbyes,mbno],0) = mryes then
  Close;
end;

procedure TFormCadastroCliente.btCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
