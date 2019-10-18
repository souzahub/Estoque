object FormCadastroCliente: TFormCadastroCliente
  Left = 650
  Top = 211
  Width = 918
  Height = 664
  Caption = 'Cadastro do Cliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btCancelar: TBitBtn
    Left = 56
    Top = 520
    Width = 139
    Height = 57
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = btCancelarClick
  end
  object btSalvar: TBitBtn
    Left = 256
    Top = 520
    Width = 139
    Height = 57
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = btSalvarClick
  end
end
