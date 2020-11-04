object formCadGrupo: TformCadGrupo
  Left = 0
  Top = 0
  ClientHeight = 195
  ClientWidth = 280
  Caption = ''
  BorderStyle = bsNone
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 280
    Height = 41
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Height = -20
    TabOrder = 0
    Caption = 'Grupos'
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 41
    Width = 280
    Height = 154
    Hint = ''
    Align = alClient
    ParentFont = False
    Font.Height = -20
    TabOrder = 1
    Caption = ''
    object edNomeGrupo: TUniEdit
      Left = 22
      Top = 35
      Width = 236
      Height = 30
      Hint = ''
      CharCase = ecUpperCase
      MaxLength = 50
      Text = 'EDITNOME'
      ParentFont = False
      Font.Height = -17
      TabOrder = 1
    end
    object lbNomeIn: TUniLabel
      Left = 22
      Top = 5
      Width = 52
      Height = 24
      Hint = ''
      Caption = 'Nome'
      TabOrder = 2
    end
    object BtInc: TUniFSButton
      AlignWithMargins = True
      Left = 170
      Top = 83
      Width = 40
      Height = 40
      Hint = ''
      Margins.Left = 4
      Margins.Top = 6
      Margins.Right = 4
      Margins.Bottom = 6
      StyleButton = GoogleBlue3Round
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = ''
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      TabOrder = 3
      ClientEvents.Enabled = False
      Images = UniNativeImageList1
      ImageIndex = 25
      OnClick = BtIncClick
    end
    object BtAlt: TUniFSButton
      AlignWithMargins = True
      Left = 218
      Top = 83
      Width = 40
      Height = 40
      Hint = ''
      Margins.Left = 4
      Margins.Top = 6
      Margins.Right = 4
      Margins.Bottom = 6
      StyleButton = GoogleBlue3Round
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = ''
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      TabOrder = 4
      ClientEvents.Enabled = False
      Images = UniNativeImageList1
      ImageIndex = 26
      OnClick = BtAltClick
    end
  end
  object DsConsProduto: TDataSource
    DataSet = dmDados.RDWGrupos
    Left = 56
    Top = 120
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 8
    Top = 120
    Images = {
      1B00000000000000060B0000006E617669636F6E3B66613B00000000060B0000
      006465736B746F703B66613B00000000060C000000656E76656C6F70653B6661
      3B000000000608000000757365723B66613B00000000060E0000006C696E652D
      63686172743B66613B00000000061000000077696E646F772D636C6F73653B66
      613B000000000608000000736176653B66613B00000000060800000065646974
      3B66613B0000000006070000006375743B66613B00000000060D000000626172
      2D63686172743B66613B00000000060D0000007069652D63686172743B66613B
      000000000610000000616464726573732D636172643B66613B00000000060C00
      000063616C656E6461723B66613B000000000608000000666565643B66613B00
      00000006070000006661783B66613B000000000609000000696D6167653B6661
      3B000000000609000000696E626F783B66613B00000000060D0000006261722D
      63686172743B66613B00000000060B00000069642D636172643B66613B000000
      00060D000000757365722D706C75733B66613B00000000060900000074727563
      6B3B66613B00000000060900000075736572733B66613B00000000060C000000
      7369676E2D6F75743B66613B00000000060E000000756E69766572736974793B
      66613B00000000060C00000064617461626173653B66613B0000000006080000
      00706C75733B66613B00000000060900000074696D65733B66613B}
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'Sim'
    CancelButtonText = 'N'#227'o'
    ConfirmButtonColor = clMaroon
    CancelButtonColor = 6835774
    Width = 400
    Padding = 20
    OnDismiss = UniSweetAlert1Dismiss
    OnConfirm = UniSweetAlert1Confirm
    Left = 103
    Top = 122
  end
end
