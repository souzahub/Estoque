object FormEditarCadastro: TFormEditarCadastro
  Left = 758
  Top = 222
  Width = 717
  Height = 662
  Caption = 'Editar Cadastro'
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
    Cursor = crHandPoint
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = btCancelarClick
  end
  object btSalvar: TBitBtn
    Left = 256
    Top = 520
    Width = 139
    Height = 57
    Cursor = crHandPoint
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = btSalvarClick
  end
end
