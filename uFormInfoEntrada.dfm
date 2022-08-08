object formInfoEntrada: TformInfoEntrada
  Left = 0
  Top = 0
  ClientHeight = 346
  ClientWidth = 833
  Caption = ''
  BorderStyle = bsDialog
  Position = poDesktopCenter
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  Script.Strings = (
    'window.onresize = function(){'
    '  if (typeof formItensInsumos !== '#39'undefined'#39') {  '
    '    var getSize = Ext.getBody().getViewSize(),'
    '        winWidth = getSize.width,'
    '        winHeight = getSize.height,'
    '        left = (winWidth - formItensInsumos.window.width) / 2,'
    '        top = (winHeight - formItensInsumos.window.height) / 2;'
    ''
    '    formItensInsumos.window.setPosition(left, top);'
    '  }'
    '}')
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object cp: TUniContainerPanel
    AlignWithMargins = True
    Left = 0
    Top = 50
    Width = 833
    Height = 296
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ParentColor = False
    Color = clWhite
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 759
    ExplicitHeight = 351
    object UniDBEdit1: TUniDBEdit
      Left = 24
      Top = 35
      Width = 67
      Height = 22
      Hint = ''
      DataField = 'CPRODUTO'
      DataSource = dsEntrada
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 1
      Color = clInfoBk
    end
    object UniLabel1: TUniLabel
      Left = 24
      Top = 16
      Width = 24
      Height = 13
      Hint = ''
      Caption = 'C'#243'd.'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 2
    end
    object UniDBMemo1: TUniDBMemo
      Left = 24
      Top = 152
      Width = 776
      Height = 105
      Hint = ''
      DataField = 'OBS'
      DataSource = dsEntrada
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 3
      Color = clInfoBk
    end
    object UniLabel5: TUniLabel
      Left = 24
      Top = 133
      Width = 67
      Height = 13
      Hint = ''
      Caption = 'Observa'#231#227'o'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 4
    end
    object UniDBEdit8: TUniDBEdit
      Left = 112
      Top = 35
      Width = 569
      Height = 22
      Hint = ''
      DataField = 'NPRODUTO'
      DataSource = dsEntrada
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 5
      Color = clInfoBk
    end
    object UniLabel6: TUniLabel
      Left = 112
      Top = 16
      Width = 45
      Height = 13
      Hint = ''
      Caption = 'Produto'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 6
    end
    object UniDBEdit7: TUniDBEdit
      Left = 24
      Top = 91
      Width = 617
      Height = 22
      Hint = ''
      DataField = 'LOCALPRODUTO'
      DataSource = dsEntrada
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 7
      Color = clInfoBk
    end
    object UniLabel9: TUniLabel
      Left = 24
      Top = 72
      Width = 62
      Height = 13
      Hint = ''
      Caption = 'Local Atual'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 8
    end
    object UniDBEdit10: TUniDBEdit
      Left = 700
      Top = 35
      Width = 100
      Height = 22
      Hint = ''
      DataField = 'ENTRADA'
      DataSource = dsEntrada
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 9
      Color = clInfoBk
    end
    object UniLabel10: TUniLabel
      Left = 700
      Top = 16
      Width = 84
      Height = 13
      Hint = ''
      Caption = 'Ultimo Entrada'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 10
    end
    object UniDBEdit12: TUniDBEdit
      Left = 664
      Top = 91
      Width = 136
      Height = 22
      Hint = ''
      DataField = 'PATRIMONIO'
      DataSource = dsEntrada
      Alignment = taCenter
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 11
      Color = clInfoBk
    end
    object UniLabel12: TUniLabel
      Left = 664
      Top = 72
      Width = 62
      Height = 13
      Hint = ''
      Caption = 'Patrimonio'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 12
    end
  end
  object UniPanel22: TUniPanel
    AlignWithMargins = True
    Left = 5
    Top = 3
    Width = 828
    Height = 44
    Hint = ''
    Margins.Left = 5
    Margins.Right = 0
    Align = alTop
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    Color = clGray
    ExplicitWidth = 754
    object lbPropriedade: TUniLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 404
      Height = 36
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 10
      AutoSize = False
      Caption = ' Detalhes'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentColor = False
      Color = clNone
      TabOrder = 1
    end
  end
  object dsEntrada: TDataSource
    AutoEdit = False
    DataSet = dmDados.RDWMOVIENTRADA
    Left = 487
    Top = 242
  end
end
