unit uCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormCliente = class(TForm)
    btFechar: TBitBtn;
    btDeletar: TBitBtn;
    btEditar: TBitBtn;
    btIncluir: TBitBtn;
    procedure btFecharClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCliente: TFormCliente;

implementation

uses uManutencaoCliente, uIncluirCliente, uCadastroCliente;

{$R *.dfm}

procedure TFormCliente.btFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormCliente.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCliente.btDeletarClick(Sender: TObject);
begin
If MessageDlg('CONFIRMAR A EXCLUSÃO ?',mtConfirmation,[mbyes,mbno],0) = mryes then;

end;

procedure TFormCliente.btEditarClick(Sender: TObject);
begin
    FormCadastroCliente := TFormCadastroCliente.Create(Self);
    FormCadastroCliente.ShowModal;
    FormCadastroCliente.Release;
end;

end.
