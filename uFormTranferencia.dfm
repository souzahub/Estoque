object formTranferencia: TformTranferencia
  Left = 0
  Top = 0
  ClientHeight = 358
  ClientWidth = 677
  Caption = ''
  OnShow = UniFormShow
  BorderStyle = bsDialog
  Position = poDesktopCenter
  OldCreateOrder = False
  BorderIcons = []
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
    Width = 677
    Height = 308
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ParentColor = False
    Color = clWhite
    Align = alClient
    TabOrder = 0
    object UniPanel4: TUniPanel
      AlignWithMargins = True
      Left = 5
      Top = 3
      Width = 667
      Height = 302
      Hint = ''
      Margins.Left = 5
      Margins.Right = 5
      Align = alClient
      TabOrder = 1
      Alignment = taLeftJustify
      Caption = ''
      Color = clWindow
      object UniContainerPanel3: TUniContainerPanel
        Left = 1
        Top = 262
        Width = 665
        Height = 39
        Hint = ''
        ParentColor = False
        Align = alBottom
        TabOrder = 1
        object UniFSButton3: TUniFSButton
          AlignWithMargins = True
          Left = 509
          Top = 5
          Width = 151
          Height = 29
          Hint = ''
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          StyleButton = Success
          BadgeText.Text = '0'
          BadgeText.TextColor = '#FFFFFF'
          BadgeText.TextSize = 10
          BadgeText.TextStyle = 'bold'
          BadgeText.BackgroundColor = '#D50000'
          Caption = 'GRAVAR'
          Align = alRight
          ParentFont = False
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          TabOrder = 1
          ScreenMask.Message = 'Carregando dados...'
          ImageIndex = 18
          OnClick = UniFSButton3Click
        end
        object UniFSButton4: TUniFSButton
          AlignWithMargins = True
          Left = 350
          Top = 5
          Width = 151
          Height = 29
          Hint = ''
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          StyleButton = Danger
          BadgeText.Text = '0'
          BadgeText.TextColor = '#FFFFFF'
          BadgeText.TextSize = 10
          BadgeText.TextStyle = 'bold'
          BadgeText.BackgroundColor = '#D50000'
          Caption = 'Cancelar'
          Align = alRight
          ParentFont = False
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          TabOrder = 2
          ScreenMask.Message = 'Carregando dados...'
          ImageIndex = 18
          OnClick = UniFSButton4Click
        end
      end
      object UniLabel9: TUniLabel
        Left = 21
        Top = 137
        Width = 60
        Height = 13
        Hint = ''
        Caption = 'Novo Local'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 2
      end
      object UniLabel6: TUniLabel
        Left = 21
        Top = 21
        Width = 45
        Height = 13
        Hint = ''
        Caption = 'Produto'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 3
      end
      object lbProduto: TUniDBText
        Left = 21
        Top = 40
        Width = 98
        Height = 19
        Hint = ''
        DataField = 'PRODUTO'
        ParentFont = False
        Font.Height = -16
        Font.Style = [fsBold]
      end
      object UniLabel7: TUniLabel
        Left = 21
        Top = 73
        Width = 62
        Height = 13
        Hint = ''
        Caption = 'Local Atual'
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 5
      end
      object dbEditLocalAntigo: TUniEdit
        Left = 21
        Top = 92
        Width = 620
        Hint = ''
        Text = 'UniEdit1'
        ParentFont = False
        Font.Color = clMaroon
        Font.Style = [fsBold]
        TabOrder = 6
        ReadOnly = True
      end
      object edLocal: TUniEdit
        Left = 21
        Top = 156
        Width = 620
        Hint = ''
        Text = 'UniEdit1'
        ParentFont = False
        Font.Color = clGreen
        Font.Style = [fsBold]
        TabOrder = 7
      end
    end
  end
  object UniPanel22: TUniPanel
    AlignWithMargins = True
    Left = 5
    Top = 3
    Width = 672
    Height = 44
    Hint = ''
    Margins.Left = 5
    Margins.Right = 0
    Align = alTop
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    Color = clGray
    object UniLabel12: TUniLabel
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 344
      Height = 24
      Hint = ''
      Margins.Left = 10
      Margins.Top = 10
      Caption = 'Transferencia de Local ( Estoque )'
      Align = alLeft
      ParentFont = False
      Font.Height = -20
      Font.Style = [fsBold]
      ParentColor = False
      Color = clHighlight
      TabOrder = 1
    end
    object UniSimplePanel2: TUniSimplePanel
      AlignWithMargins = True
      Left = 396
      Top = 3
      Width = 273
      Height = 38
      Hint = ''
      ParentColor = False
      Color = clGray
      Align = alRight
      TabOrder = 2
      object UniLabel13: TUniLabel
        AlignWithMargins = True
        Left = 19
        Top = 10
        Width = 187
        Height = 25
        Hint = ''
        Margins.Top = 10
        Margins.Right = 5
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'd do Produto:'
        Align = alRight
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Style = [fsBold]
        ParentColor = False
        Color = clHotLight
        TabOrder = 1
      end
      object edCod: TUniDBText
        AlignWithMargins = True
        Left = 214
        Top = 10
        Width = 54
        Height = 25
        Hint = ''
        Margins.Top = 10
        Margins.Right = 5
        Alignment = taRightJustify
        AutoSize = False
        Align = alRight
        ParentFont = False
        Font.Height = -16
        Font.Style = [fsBold]
        ParentColor = False
        Color = clGray
      end
    end
  end
  object dsEstoque: TDataSource
    DataSet = dmDados.RDWEstoque
    Left = 277
    Top = 242
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'Sim'
    CancelButtonText = 'N'#227'o'
    ConfirmButtonColor = 10526880
    CancelButtonColor = clMaroon
    Width = 520
    Padding = 20
    ShowLoaderOnConfirm = True
    OnDismiss = UniSweetAlert1Dismiss
    OnConfirm = UniSweetAlert1Confirm
    Left = 189
    Top = 249
  end
end
