unit uListaCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormListagemCompras = class(TForm)
    btIncluir: TBitBtn;
    btSalvar: TBitBtn;
    btFechar: TBitBtn;
    procedure btFecharClick(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListagemCompras: TFormListagemCompras;

implementation

uses uLancamentoCompras;

{$R *.dfm}

procedure TFormListagemCompras.btFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TFormListagemCompras.btIncluirClick(Sender: TObject);
begin
    FormLancamentoCompras := TFormLancamentoCompras.Create(Self);
    FormLancamentoCompras.ShowModal;
    FormLancamentoCompras.Release;
end;

procedure TFormListagemCompras.btSalvarClick(Sender: TObject);
begin
If MessageDlg('CONFIRMAR A EXCLUSÃO ?',mtConfirmation,[mbyes,mbno],0) = mryes then;
end;

end.
