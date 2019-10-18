unit uIncluiFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask;

type
  TFormMistoiForncedor = class(TForm)
    btSalvar: TBitBtn;
    lbEmail: TLabeledEdit;
    lbEndereco: TLabeledEdit;
    lbCidade: TLabeledEdit;
    lbNome: TLabeledEdit;
    lbBairro: TLabeledEdit;
    meCep: TMaskEdit;
    lbCep: TLabel;
    meUF: TMaskEdit;
    lbUf: TLabel;
    meCnpj: TMaskEdit;
    meFone: TMaskEdit;
    lbFone: TLabel;
    lbCnpj: TLabel;
    btFechar: TBitBtn;
    procedure btSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMistoiForncedor: TFormMistoiForncedor;

implementation

uses uDados, uFornecedor;

{$R *.dfm}

procedure TFormMistoiForncedor.btSalvarClick(Sender: TObject);
begin
  {if lbId.Text = '' then
  begin
    ShowMessage ('ATENÇÃO: Código exige preenchimento obrigatório.');
    lbId.SetFocus;
    exit;
  end; }

    if meCnpj.text = '' then
  begin
    ShowMessage('ATENÇÃO: CNPJ exige Preenchimento obrigatório.');
    meCnpj.SetFocus;
    exit;
  end;

   {if FormFornecedor.vINCLUINDOFORNECEDOR then   // se estiver incluindo
  begin
     dmDados.tbFornec.Locate('ID', lbId.Text, []);
     if dmDados.tbFornec.Locate('ID', lbId.Text, []) then
  begin
       ShowMessage('ATENÇÃO: Código Já cadastrado para o Fornecedor '+ dmDados.tbFornecNOME.Value );
       lbId.SetFocus;
       exit;
   end;
   end;  }

   if FormFornecedor.vINCLUINDOFORNECEDOR then   // se estiver incluindo
  begin
     dmDados.tbFornec.Locate('CNPJ', meCnpj.Text, []);
     if dmDados.tbFornec.Locate('CNPJ', meCnpj.Text, []) then
  begin
       ShowMessage('ATENÇÃO: CNPJ Já cadastrado para o Fornecedor '+ dmDados.tbFornecNOME.Value );
       meCnpj.SetFocus;
       exit;
     end;
   end; 

     If MessageDlg('DESEJA SALVAR ?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    if FormFornecedor.vINCLUINDOFORNECEDOR then   // se estiver incluindo
    begin
      dmDados.tbFornec.Open;
      dmDados.tbFornec.Append;
      dmDados.tbFornecCNPJ.Value := meCnpj.Text;
      dmDados.tbFornecENDERECO.Value := lbEndereco.Text;
      dmDados.tbFornecNOME.Value := lbNome.Text;
      dmDados.tbFornecCIDADE.Value := lbCidade.Text;
      dmDados.tbFornecBAIRRO.Value := lbBairro.Text;
      dmDados.tbFornecUF.Value := meUf.Text;
      dmDados.tbFornecFONE.Value := meFone.Text;
      dmDados.tbFornecCEP.Value := meCep.Text;
      dmDados.tbFornecEMAIL.Value := lbEmail.Text;
      dmDados.tbFornec.Post;
   end
   else // se tiver editando
   begin
      dmDados.tbFornec.edit;
      dmDados.tbFornecCNPJ.Value :=  meCnpj.Text;
      dmDados.tbFornecENDERECO.Value := lbEndereco.Text;
      dmDados.tbFornecNOME.Value := lbNome.Text;
      dmDados.tbFornecCIDADE.Value := lbCidade.Text;
      dmDados.tbFornecBAIRRO.Value := lbBairro.Text;
      dmDados.tbFornecUF.Value := meUf.Text;
      dmDados.tbFornecFONE.Value := meFone.Text;
      dmDados.tbFornecCEP.Value := meCep.Text;
      dmDados.tbFornecEMAIL.Value := lbEmail.Text;
      dmDados.tbFornec.Post;


   end;
   dmdados.tbFornec.Close;
   dmDados.tbFornec.Open;
  end;
 Close;
end;

procedure TFormMistoiForncedor.FormActivate(Sender: TObject);
begin
    if FormFornecedor.vINCLUINDOFORNECEDOR then
    begin
      FormMistoiForncedor.Caption:=  'Cadastro do Fornecedor - Incluindo ...';
      //lbId.Clear;
      //lbId.ReadOnly := False;
      meCnpj.Clear;
      lbEndereco.Clear;
      lbNome.Clear;
      lbCidade.Clear;
      lbBairro.Clear;
      meFone.Clear;
      meCep.Clear;
      meUf.Clear;
      lbEmail.Clear;
      meCnpj.SetFocus;
    end
    else
    begin
      FormMistoiForncedor.Caption:=  'Cadastro do Fornecedor - Editando ...';
      //lbId.ReadOnly := True;
      meCnpj.Text:= dmDados.tbFornecCNPJ.Value ;
      lbEndereco.Text:= dmDados.tbFornecENDERECO.Value;
      lbNome.Text:= dmDados.tbFornecNOME.Value;
      lbCidade.Text:= dmDados.tbFornecCIDADE.Value;
      lbBairro.Text:= dmdados.tbFornecBAIRRO.Value;
      meFone.Text:= dmDados.tbFornecFONE.Value;
      meCep.Text:= dmDados.tbFornecCEP.Value;
      meUf.Text:= dmDados.tbFornecUF.Value;
      lbEmail.Text:= dmDados.tbFornecEMAIL.Value;
      lbEndereco.SetFocus;

   end;
 end;

procedure TFormMistoiForncedor.btFecharClick(Sender: TObject);
begin
     Close;
end;
end.






