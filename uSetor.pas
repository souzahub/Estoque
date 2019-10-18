unit uSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormSetor = class(TForm)
    btFechar: TButton;
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSetor: TFormSetor;

implementation

{$R *.dfm}

procedure TFormSetor.btFecharClick(Sender: TObject);
begin
  close;
end;

end.
