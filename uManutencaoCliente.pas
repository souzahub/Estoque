unit uManutencaoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormManutencaocliente = class(TForm)
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormManutencaocliente: TFormManutencaocliente;

implementation

{$R *.dfm}

procedure TFormManutencaocliente.btSalvarClick(Sender: TObject);
begin
If MessageDlg('DESEJA SALVAR ?',mtConfirmation,[mbyes,mbno],0) = mryes then
  Close;
end;

procedure TFormManutencaocliente.btCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
