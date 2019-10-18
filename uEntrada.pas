unit uEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormEntrada = class(TForm)
    btFechar: TButton;
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEntrada: TFormEntrada;

implementation

{$R *.dfm}

procedure TFormEntrada.btFecharClick(Sender: TObject);
begin
  If MessageDlg('DESEJA FECHAR ?',mtConfirmation,[mbyes,mbno],0) = mryes then
  close;
end;

end.
