object FormCadastro: TFormCadastro
  Left = 100
  Top = 146
  Width = 783
  Height = 698
  Caption = 'Cadastro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    767
    659)
  PixelsPerInch = 96
  TextHeight = 13
  object lbPreco: TLabel
    Left = 56
    Top = 256
    Width = 28
    Height = 13
    Caption = 'Pre'#231'o'
  end
  object lbDtEntrada: TLabel
    Left = 152
    Top = 184
    Width = 63
    Height = 13
    Caption = 'Data Entrada'
  end
  object lbDtSaida: TLabel
    Left = 280
    Top = 184
    Width = 53
    Height = 13
    Caption = 'Data Saida'
  end
  object lbCodigoProduto: TLabeledEdit
    Left = 56
    Top = 72
    Width = 41
    Height = 21
    EditLabel.Width = 88
    EditLabel.Height = 13
    EditLabel.Caption = 'Codigo do Produto'
    TabOrder = 0
  end
  object lbProduto: TLabeledEdit
    Left = 56
    Top = 136
    Width = 217
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'Produto'
    TabOrder = 1
  end
  object lbEstoque: TLabeledEdit
    Left = 56
    Top = 200
    Width = 41
    Height = 21
    EditLabel.Width = 39
    EditLabel.Height = 13
    EditLabel.Caption = 'Estoque'
    TabOrder = 2
  end
  object cePreco: TCurrencyEdit
    Left = 56
    Top = 272
    Width = 41
    Height = 21
    MaxLength = 16
    TabOrder = 3
    Text = '0'
    NumberOfDecimals = 0
  end
  object meDtEntrada: TMaskEdit
    Left = 152
    Top = 200
    Width = 73
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
  end
  object meDtSaida: TMaskEdit
    Left = 280
    Top = 200
    Width = 73
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 5
    Text = '  /  /    '
  end
  object btcancelar: TBitBtn
    Left = 435
    Top = 552
    Width = 139
    Height = 57
    Cursor = crHandPoint
    Anchors = [akBottom]
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = btcancelarClick
  end
  object btSalvar: TBitBtn
    Left = 602
    Top = 552
    Width = 139
    Height = 57
    Cursor = crHandPoint
    Anchors = [akBottom]
    Caption = 'Salvar'
    TabOrder = 7
    OnClick = btSalvarClick
  end
end
