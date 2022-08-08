object formInfoEstoque: TformInfoEstoque
  Left = 0
  Top = 0
  ClientHeight = 270
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
    Height = 220
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ParentColor = False
    Color = clWhite
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 360
    object UniDBEdit1: TUniDBEdit
      Left = 24
      Top = 35
      Width = 67
      Height = 22
      Hint = ''
      DataField = 'ID'
      DataSource = dsEstoque
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
    object UniDBEdit4: TUniDBEdit
      Left = 488
      Top = 91
      Width = 312
      Height = 22
      Hint = ''
      DataField = 'GRUPO'
      DataSource = dsEstoque
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 3
      Color = clInfoBk
    end
    object UniLabel7: TUniLabel
      Left = 488
      Top = 72
      Width = 34
      Height = 13
      Hint = ''
      Caption = 'Grupo'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 4
    end
    object UniDBEdit8: TUniDBEdit
      Left = 112
      Top = 35
      Width = 435
      Height = 22
      Hint = ''
      DataField = 'PRODUTO'
      DataSource = dsEstoque
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
    object UniDBEdit9: TUniDBEdit
      Left = 398
      Top = 147
      Width = 67
      Height = 22
      Hint = ''
      DataField = 'ESTOQUE'
      DataSource = dsEstoque
      Alignment = taCenter
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 7
      Color = clInfoBk
    end
    object lb1: TUniLabel
      Left = 398
      Top = 128
      Width = 77
      Height = 13
      Hint = ''
      Caption = 'Estoque Total'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 8
    end
    object UniDBEdit2: TUniDBEdit
      Left = 504
      Top = 147
      Width = 67
      Height = 22
      Hint = ''
      DataField = 'ESTOQUE_NOVO'
      DataSource = dsEstoque
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 9
      Color = clInfoBk
    end
    object UniLabel2: TUniLabel
      Left = 504
      Top = 128
      Width = 82
      Height = 13
      Hint = ''
      Caption = 'Estoque Novos'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 10
    end
    object UniDBEdit3: TUniDBEdit
      Left = 609
      Top = 147
      Width = 67
      Height = 22
      Hint = ''
      DataField = 'ESTOQUE_USADO'
      DataSource = dsEstoque
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 11
      Color = clInfoBk
    end
    object UniLabel3: TUniLabel
      Left = 609
      Top = 128
      Width = 89
      Height = 13
      Hint = ''
      Caption = 'Estoque Usados'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 12
    end
    object UniDBEdit5: TUniDBEdit
      Left = 728
      Top = 147
      Width = 72
      Height = 22
      Hint = ''
      DataField = 'PRECO'
      DataSource = dsEstoque
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 13
      Color = clInfoBk
    end
    object UniLabel4: TUniLabel
      Left = 728
      Top = 128
      Width = 72
      Height = 13
      Hint = ''
      Caption = 'Ultimo Pre'#231'o'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 14
    end
    object UniDBEdit6: TUniDBEdit
      Left = 24
      Top = 91
      Width = 441
      Height = 22
      Hint = ''
      DataField = 'FORNEC'
      DataSource = dsEstoque
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 15
      Color = clInfoBk
    end
    object UniLabel8: TUniLabel
      Left = 24
      Top = 72
      Width = 64
      Height = 13
      Hint = ''
      Caption = 'Fornecedor'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 16
    end
    object UniDBEdit7: TUniDBEdit
      Left = 24
      Top = 147
      Width = 345
      Height = 22
      Hint = ''
      DataField = 'LOCALPRODUTO'
      DataSource = dsEstoque
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 17
      Color = clInfoBk
    end
    object UniLabel9: TUniLabel
      Left = 24
      Top = 128
      Width = 62
      Height = 13
      Hint = ''
      Caption = 'Local Atual'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 18
    end
    object UniDBEdit10: TUniDBEdit
      Left = 576
      Top = 35
      Width = 100
      Height = 22
      Hint = ''
      DataField = 'DTENTRADA'
      DataSource = dsEstoque
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 19
      Color = clInfoBk
    end
    object UniLabel10: TUniLabel
      Left = 576
      Top = 16
      Width = 84
      Height = 13
      Hint = ''
      Caption = 'Ultimo Entrada'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 20
    end
    object UniDBEdit11: TUniDBEdit
      Left = 700
      Top = 35
      Width = 100
      Height = 22
      Hint = ''
      DataField = 'DTSAIDA'
      DataSource = dsEstoque
      ParentFont = False
      Font.Color = clMaroon
      Font.Style = [fsBold]
      TabOrder = 21
      Color = clInfoBk
    end
    object UniLabel11: TUniLabel
      Left = 700
      Top = 16
      Width = 70
      Height = 13
      Hint = ''
      Caption = 'Ultima sa'#237'da'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 22
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
      Caption = 'Estoque Detalhes'
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
  object dsEstoque: TDataSource
    AutoEdit = False
    DataSet = dmDados.RDWEstoque
    Left = 479
    Top = 306
  end
end
