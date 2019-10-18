object FormManutencaoCliente: TFormManutencaoCliente
  Left = 408
  Top = 213
  Width = 924
  Height = 533
  Caption = 'Manuten'#231#227'o do cliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btSalvar: TBitBtn
    Left = 240
    Top = 520
    Width = 139
    Height = 57
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = btSalvarClick
  end
  object btCancelar: TBitBtn
    Left = 40
    Top = 520
    Width = 139
    Height = 57
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btCancelarClick
  end
end
