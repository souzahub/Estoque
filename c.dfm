object formItensInsumos: TformItensInsumos
  Left = 0
  Top = 0
  ClientHeight = 431
  ClientWidth = 759
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
    Width = 759
    Height = 329
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ParentColor = False
    Color = clWhite
    Align = alTop
    TabOrder = 0
    object UniDBEdit1: TUniDBEdit
      Left = 24
      Top = 35
      Width = 123
      Height = 22
      Hint = ''
      DataField = 'DTCOMPRA'
      DataSource = dsFichaInsumos
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 1
      Color = clInfoBk
    end
    object UniLabel1: TUniLabel
      Left = 24
      Top = 16
      Width = 91
      Height = 13
      Hint = ''
      Caption = 'Data da Compra'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 2
    end
    object UniLabel2: TUniLabel
      Left = 24
      Top = 76
      Width = 45
      Height = 13
      Hint = ''
      Caption = 'Produto'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 3
    end
    object UniDBEdit2: TUniDBEdit
      Left = 24
      Top = 95
      Width = 345
      Height = 30
      Hint = ''
      DataField = 'NPRODUTO'
      DataSource = dsFichaInsumos
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 4
      Color = clInfoBk
    end
    object UniDBEdit3: TUniDBEdit
      Left = 472
      Top = 35
      Width = 260
      Height = 30
      Hint = ''
      DataField = 'NAREA'
      DataSource = dsFichaInsumos
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 5
      Color = clInfoBk
    end
    object UniLabel3: TUniLabel
      Left = 472
      Top = 16
      Width = 86
      Height = 13
      Hint = ''
      Caption = #193'rea da Regi'#227'o'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 6
    end
    object UniDBMemo1: TUniDBMemo
      Left = 24
      Top = 224
      Width = 708
      Height = 89
      Hint = ''
      DataField = 'OBS'
      DataSource = dsFichaInsumos
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 7
      Color = clInfoBk
    end
    object UniLabel5: TUniLabel
      Left = 24
      Top = 205
      Width = 67
      Height = 13
      Hint = ''
      Caption = 'Observa'#231#227'o'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 8
    end
    object UniDBEdit4: TUniDBEdit
      Left = 24
      Top = 167
      Width = 708
      Height = 30
      Hint = ''
      DataField = 'NOME_FORNECEDOR'
      DataSource = dsFichaInsumos
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 9
      Color = clInfoBk
    end
    object UniLabel7: TUniLabel
      Left = 24
      Top = 148
      Width = 64
      Height = 13
      Hint = ''
      Caption = 'Fornecedor'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 10
    end
    object UniDBEdit5: TUniDBEdit
      Left = 472
      Top = 95
      Width = 49
      Height = 30
      Hint = ''
      DataField = 'QTD'
      DataSource = dsFichaInsumos
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 11
      Color = clInfoBk
    end
    object UniLabel8: TUniLabel
      Left = 472
      Top = 76
      Width = 20
      Height = 13
      Hint = ''
      Caption = 'Qtd'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 12
    end
    object UniDBEdit6: TUniDBEdit
      Left = 543
      Top = 95
      Width = 86
      Height = 30
      Hint = ''
      DataField = 'PUNITARIO'
      DataSource = dsFichaInsumos
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 13
      Color = clInfoBk
    end
    object UniLabel9: TUniLabel
      Left = 543
      Top = 76
      Width = 61
      Height = 13
      Hint = ''
      Caption = 'Peso (Uni )'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 14
    end
    object UniDBEdit7: TUniDBEdit
      Left = 646
      Top = 95
      Width = 86
      Height = 30
      Hint = ''
      DataField = 'PTOTAL'
      DataSource = dsFichaInsumos
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 15
      Color = clInfoBk
    end
    object UniLabel10: TUniLabel
      Left = 646
      Top = 76
      Width = 86
      Height = 13
      Hint = ''
      Caption = 'Peso (Kg) Total'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 16
    end
    object UniDBEdit8: TUniDBEdit
      Left = 168
      Top = 35
      Width = 280
      Height = 30
      Hint = ''
      DataField = 'DESCRICAO'
      DataSource = dsFichaInsumos
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 17
      Color = clInfoBk
    end
    object UniLabel6: TUniLabel
      Left = 168
      Top = 16
      Width = 39
      Height = 13
      Hint = ''
      Caption = 'Regi'#227'o'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 18
    end
    object UniDBEdit9: TUniDBEdit
      Left = 399
      Top = 95
      Width = 49
      Height = 30
      Hint = ''
      DataField = 'ITEM'
      DataSource = dsFichaInsumos
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 19
      Color = clInfoBk
    end
    object UniLabel11: TUniLabel
      Left = 399
      Top = 76
      Width = 44
      Height = 13
      Hint = ''
      Caption = 'Item(s)'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 20
    end
  end
  object UniPanel22: TUniPanel
    AlignWithMargins = True
    Left = 5
    Top = 3
    Width = 754
    Height = 44
    Hint = ''
    Margins.Left = 5
    Margins.Right = 0
    Align = alTop
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    Color = clGreen
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
      Caption = 'Ficha Insumos'
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
  object dsFichaInsumos: TDataSource
    AutoEdit = False
    Left = 479
    Top = 306
  end
end
