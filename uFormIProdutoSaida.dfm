object formIProdutoSaida: TformIProdutoSaida
  Left = 0
  Top = 0
  ClientHeight = 403
  ClientWidth = 592
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
  object pnProd: TUniContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 586
    Height = 397
    Hint = ''
    ParentColor = False
    Color = clBackground
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 503
    object UniPanel4: TUniPanel
      AlignWithMargins = True
      Left = 5
      Top = 53
      Width = 576
      Height = 364
      Hint = ''
      Margins.Left = 5
      Margins.Right = 5
      Align = alTop
      TabOrder = 1
      Alignment = taLeftJustify
      Caption = ''
      Color = clWindow
      ExplicitWidth = 493
      object UniContainerPanel3: TUniContainerPanel
        Left = 1
        Top = 306
        Width = 574
        Height = 39
        Hint = ''
        ParentColor = False
        Align = alBottom
        TabOrder = 1
        ExplicitWidth = 491
        object btGravar: TUniFSButton
          AlignWithMargins = True
          Left = 418
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
          OnClick = btGravarClick
          ExplicitLeft = 335
        end
        object UniFSButton4: TUniFSButton
          AlignWithMargins = True
          Left = 259
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
          ExplicitLeft = 176
        end
      end
      object UniContainerPanel4: TUniContainerPanel
        Left = 1
        Top = 345
        Width = 574
        Height = 18
        Hint = ''
        ParentColor = False
        Align = alBottom
        TabOrder = 2
        ExplicitWidth = 491
      end
      object UniSimplePanel2: TUniSimplePanel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 568
        Height = 299
        Hint = ''
        ParentColor = False
        Color = clWindow
        Align = alClient
        TabOrder = 3
        ExplicitWidth = 485
        object UniDBGrid2: TUniDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 558
          Height = 289
          Hint = ''
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BodyRTL = False
          DataSource = dsMovEntrada
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          BorderStyle = ubsNone
          Align = alClient
          TabOrder = 1
          ParentColor = False
          Color = clWindow
          OnDblClick = UniDBGrid2DblClick
          Columns = <
            item
              FieldName = 'NPRODUTO'
              Title.Caption = 'PRODUTO'
              Width = 420
            end
            item
              FieldName = 'PATRIMONIO'
              Title.Alignment = taCenter
              Title.Caption = 'PATRIM'#212'NIO'
              Width = 94
              Alignment = taCenter
            end>
        end
      end
    end
    object UniPanel5: TUniPanel
      AlignWithMargins = True
      Left = 5
      Top = 3
      Width = 576
      Height = 44
      Hint = ''
      Margins.Left = 5
      Margins.Right = 5
      Align = alTop
      TabOrder = 2
      BorderStyle = ubsNone
      Caption = ''
      Color = clGrayText
      ExplicitWidth = 493
      object UniLabel12: TUniLabel
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 96
        Height = 24
        Hint = ''
        Margins.Left = 10
        Margins.Top = 10
        Caption = 'Produtos '
        Align = alLeft
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -20
        Font.Style = [fsBold]
        ParentColor = False
        Color = clHighlight
        TabOrder = 1
      end
    end
  end
  object dsMovEntrada: TDataSource
    AutoEdit = False
    DataSet = dmDados.RDWMOVIENTRADA
    Left = 71
    Top = 162
  end
end
