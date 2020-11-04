object formAutentificacao: TformAutentificacao
  Left = 0
  Top = 0
  ClientHeight = 370
  ClientWidth = 905
  Caption = 'Gera Licen'#231'a'
  BorderStyle = bsSingle
  Position = poDesktopCenter
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sbCopiar: TUniFSButton
    Left = 392
    Top = 195
    Width = 55
    Height = 28
    Hint = ''
    Enabled = False
    Visible = False
    StyleButton = Success
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Copiar'
    TabOrder = 0
    OnClick = sbCopiarClick
  end
  object sbGerar: TUniFSButton
    Left = 281
    Top = 312
    Width = 75
    Height = 28
    Hint = ''
    StyleButton = GoogleBlueRound
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'GERAR'
    TabOrder = 1
    OnClick = sbGerarClick
  end
  object sbAtivar: TUniFSButton
    Left = 372
    Top = 312
    Width = 75
    Height = 28
    Hint = ''
    StyleButton = GoogleBlueRound
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'ATIVAR'
    TabOrder = 2
    OnClick = sbAtivarClick
  end
  object UniLabel1: TUniLabel
    Left = 183
    Top = 0
    Width = 165
    Height = 33
    Hint = ''
    Caption = 'Gera Lincen'#231'a'
    ParentFont = False
    Font.Height = -27
    TabOrder = 3
  end
  object UniLabel2: TUniLabel
    Left = 34
    Top = 247
    Width = 170
    Height = 21
    Hint = ''
    Caption = 'Liberar pelo per'#237'odo de'
    ParentFont = False
    Font.Height = -17
    TabOrder = 4
  end
  object UniLabel3: TUniLabel
    Left = 313
    Top = 247
    Width = 24
    Height = 21
    Hint = ''
    Caption = 'at'#233
    ParentFont = False
    Font.Height = -17
    TabOrder = 5
  end
  object UniLabel4: TUniLabel
    Left = 33
    Top = 109
    Width = 130
    Height = 21
    Hint = ''
    Caption = 'Nome do Sistema'
    ParentFont = False
    Font.Height = -17
    TabOrder = 6
  end
  object UniLabel5: TUniLabel
    Left = 34
    Top = 175
    Width = 50
    Height = 21
    Hint = ''
    Caption = 'C'#243'digo'
    ParentFont = False
    Font.Height = -17
    TabOrder = 7
  end
  object UniLabel6: TUniLabel
    Left = 35
    Top = 54
    Width = 114
    Height = 21
    Hint = ''
    Caption = 'ID do SISTEMA'
    ParentFont = False
    Font.Height = -17
    TabOrder = 8
  end
  object UniFSButton1: TUniFSButton
    Left = 34
    Top = 312
    Width = 75
    Height = 28
    Hint = ''
    StyleButton = GoogleBlueRound
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Editar'
    TabOrder = 9
    OnClick = UniFSButton1Click
  end
  object UniDBGrid1: TUniDBGrid
    AlignWithMargins = True
    Left = 520
    Top = 29
    Width = 313
    Height = 298
    Hint = ''
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    BodyRTL = False
    DataSource = dsLicenca
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
    LoadMask.Message = 'Loading data...'
    ForceFit = True
    BorderStyle = ubsNone
    TabOrder = 10
    ParentColor = False
    Color = clWindow
    Columns = <
      item
        FieldName = 'NOME_USUARIO'
        Title.Caption = 'NOME DO SISTEMA'
        Width = 304
      end>
  end
  object edNome: TUniEdit
    Left = 35
    Top = 136
    Width = 341
    Hint = ''
    CharCase = ecUpperCase
    Text = 'edNome'
    TabOrder = 11
  end
  object edResultado: TUniEdit
    Left = 35
    Top = 202
    Width = 341
    Hint = ''
    Text = 'edNome'
    TabOrder = 12
    Color = clInactiveCaption
    ReadOnly = True
  end
  object edIDSistema: TUniEdit
    Left = 35
    Top = 81
    Width = 49
    Hint = ''
    Text = 'edNome'
    TabOrder = 13
    Color = clInactiveCaption
    ReadOnly = True
  end
  object dtInicio: TUniDateTimePicker
    Left = 210
    Top = 247
    Width = 97
    Hint = ''
    DateTime = 44015.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 14
  end
  object dtFim: TUniDateTimePicker
    Left = 350
    Top = 247
    Width = 97
    Hint = ''
    DateTime = 44015.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 15
  end
  object sbAtivaEdita: TUniFSButton
    Left = 129
    Top = 312
    Width = 75
    Height = 28
    Hint = ''
    Visible = False
    StyleButton = GoogleBlueRound
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'ATIVAR'
    TabOrder = 16
    OnClick = sbAtivaEditaClick
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    ConfirmButtonColor = clMaroon
    CancelButtonColor = 6835774
    Padding = 20
    OnDismiss = UniSweetAlert1Dismiss
    OnConfirm = UniSweetAlert1Confirm
    Left = 405
    Top = 24
  end
  object dsLicenca: TDataSource
    DataSet = dmDados.RDWAutentificacao
    Left = 468
    Top = 74
  end
end
