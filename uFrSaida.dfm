object fraSaida: TfraSaida
  Left = 0
  Top = 0
  Width = 1075
  Height = 630
  OnCreate = UniFrameCreate
  TabOrder = 0
  object PnUsuario: TUniPanel
    Left = 0
    Top = 42
    Width = 1075
    Height = 588
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = 'PnUsuario'
    object PageCadastro: TUniPageControl
      Left = 1
      Top = 1
      Width = 1073
      Height = 586
      Hint = ''
      ActivePage = Tab1
      Images = UniNativeImageList1
      Align = alClient
      TabOrder = 1
      object Tab1: TUniTabSheet
        Hint = ''
        Caption = 'Sa'#237'da'
        object UniDBGrid1: TUniDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 1050
          Height = 548
          Hint = ''
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 10
          Margins.Bottom = 5
          BodyRTL = False
          DataSource = dsSaida
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          BorderStyle = ubsNone
          Align = alClient
          TabOrder = 0
          ParentColor = False
          Color = clWindow
          OnCellClick = UniDBGrid1CellClick
          Columns = <
            item
              FieldName = 'CPRODUTO'
              Title.Caption = 'C'#211'D'
              Width = 43
            end
            item
              FieldName = 'SAIDA'
              Title.Caption = 'SAIDA'
              Width = 80
            end
            item
              FieldName = 'NPRODUTO'
              Title.Caption = 'PRODUTO'
              Width = 370
            end
            item
              FieldName = 'SETOR'
              Title.Caption = 'SETOR'
              Width = 174
            end
            item
              FieldName = 'USUARIO'
              Title.Caption = 'USUARIO'
              Width = 145
            end
            item
              FieldName = 'QUANTIDADE'
              Title.Caption = 'QUANTIDADE'
              Width = 86
              Alignment = taCenter
            end
            item
              FieldName = 'VPRODUTO'
              Title.Alignment = taCenter
              Title.Caption = 'CUSTO R$'
              Width = 86
            end
            item
              FieldName = 'PRINT'
              Title.Alignment = taCenter
              Title.Caption = 'Print'
              Width = 38
              Alignment = taCenter
            end>
        end
      end
      object Tab2: TUniTabSheet
        Hint = ''
        Caption = 'Ficha'
        object UniScrollBox2: TUniScrollBox
          Left = 0
          Top = 0
          Width = 1065
          Height = 558
          Hint = ''
          Align = alClient
          Color = clBtnHighlight
          TabOrder = 0
          object UniPanel3: TUniPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1057
            Height = 550
            Hint = ''
            AutoScroll = True
            Align = alClient
            TabOrder = 0
            Caption = ''
            Color = clGradientInactiveCaption
            LayoutConfig.Cls = 'cor1'
            ScrollHeight = 550
            ScrollWidth = 1057
            object edDataSaida: TUniDateTimePicker
              Left = 32
              Top = 39
              Width = 120
              Hint = ''
              DateTime = 43854.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              ReadOnly = True
              TabOrder = 1
              Color = 12189695
            end
            object lbSaida: TUniLabel
              Left = 32
              Top = 20
              Width = 78
              Height = 13
              Hint = ''
              Caption = 'Data da Saida'
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 2
            end
            object uPn1: TUniPanel
              Left = 32
              Top = 83
              Width = 649
              Height = 430
              Hint = ''
              AutoScroll = True
              TabOrder = 3
              BorderStyle = ubsFrameLowered
              Caption = ''
              Color = clWhite
              LayoutConfig.Cls = 'borda'
              ScrollHeight = 430
              ScrollWidth = 649
              object edCodProduto: TUniEdit
                Left = 16
                Top = 44
                Width = 59
                Hint = ''
                Text = ''
                TabOrder = 1
                Color = 12189695
                ReadOnly = True
              end
              object lbCodProduto: TUniLabel
                Left = 16
                Top = 25
                Width = 21
                Height = 13
                Hint = ''
                Caption = 'C'#243'd'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 2
              end
              object lbProd: TUniLabel
                Left = 81
                Top = 25
                Width = 45
                Height = 13
                Hint = ''
                Caption = 'Produto'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 3
              end
              object edProd: TUniEdit
                Left = 81
                Top = 44
                Width = 432
                Hint = ''
                BorderStyle = ubsNone
                Text = ''
                TabOrder = 4
                Color = 15453368
                ReadOnly = True
              end
              object btCliente: TUniBitBtn
                Left = 519
                Top = 44
                Width = 26
                Height = 26
                Hint = ''
                Caption = ''
                TabOrder = 5
                Images = UniNativeImageList1
                ImageIndex = 13
                LayoutConfig.Cls = 'circulo'
                OnClick = btClienteClick
              end
              object lbProduto: TUniLabel
                Left = 92
                Top = 49
                Width = 45
                Height = 13
                Hint = ''
                Visible = False
                Caption = 'Produto'
                ParentFont = False
                Font.Color = clBlack
                Font.Style = [fsBold]
                TabOrder = 6
              end
              object seQuantidade: TUniSpinEdit
                Left = 21
                Top = 123
                Width = 80
                Height = 26
                Hint = ''
                HelpType = htKeyword
                ParentRTL = False
                BodyRTL = False
                MaxValue = 1500
                TabOrder = 7
                ParentFont = False
                Font.Height = -13
                Font.Orientation = 1
                FieldLabelAlign = laRight
              end
              object lbQuantidade: TUniLabel
                Left = 21
                Top = 104
                Width = 65
                Height = 13
                Hint = ''
                Caption = 'Quantidade'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 8
              end
              object UniLabel2: TUniLabel
                Left = 21
                Top = 165
                Width = 115
                Height = 13
                Hint = ''
                Caption = 'Valor do Produto R$ '
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 9
              end
              object edValoProduto: TUniFormattedNumberEdit
                Left = 21
                Top = 184
                Width = 111
                Hint = ''
                TabOrder = 10
                Color = 12189695
                ReadOnly = True
                DecimalSeparator = ','
                ThousandSeparator = '.'
              end
              object cbSetor: TUniComboBox
                Left = 21
                Top = 240
                Width = 356
                Height = 33
                Hint = ''
                MaxLength = 40
                Text = 'cbSetor'
                Items.Strings = (
                  'FATURAMENTO'
                  'COMERCIAL'
                  'PCP'
                  'CONTABILIDADE'
                  'TELEFONIA'
                  'PORTARIA1'
                  'PORTARIA2'
                  'FINANCEIRO'
                  'EMBARQUE (ENFARDAC'#195'O) '
                  'DIRETORIA'
                  'ETIQUETA (ENFARDAC'#195'O)'
                  'RH'
                  'TST'
                  'COMPRAS'
                  'ALMOXARIFADO'
                  'SIF 243'
                  'CONTROLE DE QUALIDADE'
                  'OFICINA'
                  'JR44'
                  'DESOSSA'
                  'ENFARDA'#199#195'O'
                  'VARAL'
                  'TI'
                  'COZINHA'
                  'CHURRASQUERIA '
                  'CASA - FRAGA'
                  'CASA -  AVIDES FRAGA')
                ItemIndex = 0
                TabOrder = 11
                CharCase = ecUpperCase
                IconItems = <>
              end
              object UniLabel6: TUniLabel
                Left = 23
                Top = 293
                Width = 35
                Height = 13
                Hint = ''
                Caption = 'Nome '
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 12
              end
              object edNome: TUniEdit
                Left = 21
                Top = 312
                Width = 356
                Hint = ''
                CharCase = ecUpperCase
                MaxLength = 60
                Text = 'UNINOME'
                TabOrder = 13
                ClientEvents.ExtEvents.Strings = (
                  
                    'afterrender=function afterrender(sender, eOpts)'#13#10'         {'#13#10'  E' +
                    'xt.create('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   s' +
                    'howDelay:50,'#13#10'   hideDelay: 50,'#13#10'   html: "nome do respons'#225'vel q' +
                    'ue ir'#225' receber o produto &nbsp"'#13#10'  });'#13#10'}'#13#10)
              end
              object UniLabel3: TUniLabel
                Left = 23
                Top = 221
                Width = 31
                Height = 13
                Hint = ''
                Caption = 'Setor'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 14
              end
              object uniRGTipo: TUniRadioGroup
                Left = 415
                Top = 123
                Width = 107
                Height = 62
                Hint = ''
                BodyRTL = False
                Items.Strings = (
                  'NOVO'
                  'USADO')
                Caption = ''
                TabOrder = 15
                ParentFont = False
                Font.Style = [fsBold]
                ParentColor = False
                Color = clWhite
                OnClick = uniRGTipoClick
              end
              object UniLabel1: TUniLabel
                Left = 415
                Top = 104
                Width = 89
                Height = 13
                Hint = ''
                Caption = 'Tipo do Produto'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 16
              end
            end
            object lbEstoque: TUniLabel
              Left = 408
              Top = 25
              Width = 81
              Height = 13
              Hint = ''
              Caption = 'Estoque Atual '
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 4
            end
            object UniLabel4: TUniLabel
              Left = 506
              Top = 25
              Width = 76
              Height = 13
              Hint = ''
              Caption = 'Estoque Novo'
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 5
            end
            object UniLabel5: TUniLabel
              Left = 599
              Top = 25
              Width = 89
              Height = 13
              Hint = ''
              Caption = 'Estoque Usados'
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 6
            end
            object UniPanel1: TUniPanel
              Left = 408
              Top = 44
              Width = 74
              Height = 33
              Hint = ''
              TabOrder = 7
              Caption = ''
              LayoutConfig.Cls = 'borda'
              object edVaTotal: TUniLabel
                AlignWithMargins = True
                Left = 21
                Top = 4
                Width = 9
                Height = 21
                Hint = ''
                Margins.Left = 20
                Alignment = taCenter
                Caption = '0'
                Align = alClient
                ParentFont = False
                Font.Height = -17
                ParentColor = False
                Color = clSkyBlue
                TabOrder = 1
              end
            end
            object UniPanel2: TUniPanel
              Left = 506
              Top = 44
              Width = 74
              Height = 33
              Hint = ''
              TabOrder = 8
              Caption = ''
              LayoutConfig.Cls = 'borda'
              object lbEstoqueNovo: TUniLabel
                AlignWithMargins = True
                Left = 21
                Top = 4
                Width = 9
                Height = 21
                Hint = ''
                Margins.Left = 20
                Alignment = taCenter
                Caption = '1'
                Align = alClient
                ParentFont = False
                Font.Height = -17
                ParentColor = False
                Color = clSkyBlue
                TabOrder = 1
              end
            end
            object UniPanel4: TUniPanel
              Left = 607
              Top = 44
              Width = 74
              Height = 33
              Hint = ''
              TabOrder = 9
              Caption = ''
              LayoutConfig.Cls = 'borda'
              object lbEstoqueUsado: TUniLabel
                AlignWithMargins = True
                Left = 21
                Top = 4
                Width = 9
                Height = 21
                Hint = ''
                Margins.Left = 20
                Alignment = taCenter
                Caption = '2'
                Align = alClient
                ParentFont = False
                Font.Height = -17
                ParentColor = False
                Color = clSkyBlue
                TabOrder = 1
              end
            end
          end
        end
      end
    end
  end
  object UniPanel5: TUniPanel
    Left = 0
    Top = 0
    Width = 1075
    Height = 42
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -20
    Font.Style = [fsBold]
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = 'Sa'#237'da do Produto'
    Color = clNone
    object EdPesquisar: TUniEdit
      AlignWithMargins = True
      Left = 766
      Top = 5
      Width = 299
      Height = 35
      Hint = ''
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 2
      ParentShowHint = False
      CharCase = ecUpperCase
      MaxLength = 40
      Text = ''
      ParentFont = False
      Font.Color = clBlack
      Font.Style = [fsBold]
      Align = alRight
      TabOrder = 1
      EmptyText = 'PESQUISAR'
      ClearButton = True
      FieldLabel = '<i class="fas fa-search"></i>'
      FieldLabelWidth = 20
      FieldLabelSeparator = ' '
      FieldLabelFont.Height = -19
      FieldLabelFont.Style = [fsBold]
      OnChange = EdPesquisarChange
    end
    object BtCan: TUniFSButton
      AlignWithMargins = True
      Left = 80
      Top = 6
      Width = 30
      Height = 30
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
      Caption = '<i class="fas fa-sync"></i>'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      TabOrder = 2
      ClientEvents.Enabled = False
      OnClick = BtCanClick
    end
    object BtGrv: TUniFSButton
      AlignWithMargins = True
      Left = 42
      Top = 6
      Width = 30
      Height = 30
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
      Caption = '<i class="fas fa-save"></i>'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      TabOrder = 3
      ClientEvents.Enabled = False
      OnClick = BtGrvClick
    end
    object BtInc: TUniFSButton
      AlignWithMargins = True
      Left = 4
      Top = 6
      Width = 30
      Height = 30
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
      Caption = '<i class="fas fa-plus "></i>'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      TabOrder = 4
      ClientEvents.Enabled = False
      OnClick = BtIncClick
    end
    object UniLabel8: TUniLabel
      Left = 784
      Top = 24
      Width = 6
      Height = 24
      Hint = ''
      Visible = False
      Caption = '.'
      TabOrder = 5
    end
  end
  object dsSaida: TDataSource
    DataSet = dmDados.RDWSaida
    Left = 993
    Top = 257
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 896
    Top = 360
    Images = {
      1400000000000000060600000073613B66613B00000000060B0000006465736B
      746F703B66613B000000000608000000656469743B66613B0000000006090000
      0074726173683B66613B000000000608000000736176653B66613B0000000006
      0B000000726574776565743B66613B0000000006090000006864642D6F3B6661
      3B0000000006070000006375743B66613B00000000060D0000006261722D6368
      6172743B66613B00000000060D0000007069652D63686172743B66613B000000
      00060C000000626F6F6B6D61726B3B66613B00000000060C00000063616C656E
      6461723B66613B000000000608000000666565643B66613B00000000060A0000
      007365617263683B66613B000000000609000000696D6167653B66613B000000
      000609000000696E626F783B66613B0000000006090000006864642D6F3B6661
      3B00000000060E0000004E657749636F6E436C733B66613B0000000006080000
      00706C75733B66613B00000000061100000070656E63696C2D7371756172653B
      66613B}
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'Sim'
    CancelButtonText = 'N'#227'o'
    ConfirmButtonColor = clMaroon
    CancelButtonColor = 6835774
    Width = 350
    Padding = 20
    OnDismiss = UniSweetAlert1Dismiss
    OnConfirm = UniSweetAlert1Confirm
    Left = 892
    Top = 282
  end
  object frxDBSaida: TfrxDBDataset
    UserName = 'frxSaida'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'SAIDA=SAIDA'
      'CPRODUTO=CPRODUTO'
      'QUANTIDADE=QUANTIDADE'
      'VPRODUTO=VPRODUTO'
      'SETOR=SETOR'
      'NPRODUTO=NPRODUTO'
      'PATRIMONIO=PATRIMONIO'
      'USUARIO=USUARIO')
    DataSet = dmDados.relatSaida
    BCDToCurrency = False
    Left = 997
    Top = 427
  end
  object frxReport1: TfrxReport
    Version = '6.5.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43949.673707465300000000
    ReportOptions.LastChange = 44335.620118298610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 896
    Top = 496
    Datasets = <
      item
        DataSet = frxDBSaida
        DataSetName = 'frxSaida'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSetName = 'frxDBDatasetRelat'
      Frame.Typ = []
      MirrorMode = []
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      ResetPageNumbers = True
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 276.172772530000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBSaida
        DataSetName = 'frxSaida'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 137.591549290000000000
          Top = 90.222930420000000000
          Width = 48.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CPRODUTO'
          DataSet = frxDBSaida
          DataSetName = 'frxSaida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxSaida."CPRODUTO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 169.985915490000000000
          Top = 124.338200090000000000
          Width = 391.474165490000000000
          Height = 18.897637800000000000
          DataField = 'NPRODUTO'
          DataSet = frxDBSaida
          DataSetName = 'frxSaida'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxSaida."NPRODUTO"]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 71.507042260000000000
          Top = 122.521298690000000000
          Width = 18.079799280000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxDBSaida
          DataSetName = 'frxSaida'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxSaida."QUANTIDADE"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 2.366197180000000000
          Top = 90.730185770000000000
          Width = 132.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo do Produto:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 91.322606910000000000
          Top = 123.251312540000000000
          Width = 78.896700710000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'produto(s)')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 0.228122550000000000
          Top = 123.079101820000000000
          Width = 67.333320420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Saida de:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 124.114012820000000000
          Top = 154.657412642520000000
          Width = 185.924869720000000000
          Height = 16.897650000000000000
          DataField = 'USUARIO'
          DataSet = frxDBSaida
          DataSetName = 'frxSaida'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxSaida."USUARIO"]')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 3.070422540000000000
          Top = 154.496716190000000000
          Width = 120.164306340000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'para o usu'#225'rio (a):')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 312.957746490000000000
          Top = 154.657412640000000000
          Width = 65.488250000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'do Setor')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 378.732394370000000000
          Top = 154.657412642520000000
          Width = 219.488250000000000000
          Height = 17.007874020000000000
          DataField = 'SETOR'
          DataSet = frxDBSaida
          DataSetName = 'frxSaida'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxSaida."SETOR"]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 621.321173230000000000
          Top = 123.009335580000000000
          Width = 77.938954230000000000
          Height = 18.897650000000000000
          DataField = 'SAIDA'
          DataSet = frxDBSaida
          DataSetName = 'frxSaida'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxSaida."SAIDA"]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 563.295774650000000000
          Top = 122.750237320000000000
          Width = 56.417827460000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'na data')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 0.704225360000000000
          Top = 27.581223240000000000
          Width = 718.110236220000000000
          Height = 40.795300000000000000
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REGISTRO DE SA'#205'DA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 59.488250000000000000
          Height = 29.897650000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000028800
            000200080300000036746D3D0000015C504C5445000000FFFEEEFFFEEDFFFEE9
            FFFEEBFFFEECFFFEEAFFFEEFED1C24FFF200FFFFFFF78E11FAC2C5FDE2E3ED20
            24FFFCFCEE2522F57315FEE602FFF30AF03F46FCCA06EF3020EF363DEE2931FA
            B909FEEB01FFF418FEE003F68911F9A80CF2595EF68112F35C19F3696EFDD704
            F9ADB0F8A4A7FFEE01FEEFF0F46C16FAAF0BFBD1D2F14C1CF1484EF03D1EF361
            67F6868AF57F83EF2F36EE2B21F2561AFEF7F7F36318FBC507F1461DFFF52FEF
            351FFBC9CBEE222AF57A14FDEAEBEE262DF79310F79DA1FBBF08FABBBDF15158
            F8980FFEF3F4F4787DFDDB04F89D0EFCCF06F9B4B7F68D91F2501BFCDADBF038
            1FFFFEDFFFFA98F47075FFF424F8A30DFFF766FFF53BF36717F79599FCDEDFF0
            431DFFF988F14D53FFFCCBFFFAA1FFFCBBFFFBB2FCD205FCD5D7FFF97FFFFBAA
            FFF75DFFF644FFF64CFFF877FAB40AFFFCC3F69296FFF990FFF654F47378FFF8
            6EFFFEE6FFFDD7FFFDD1FDE6E7F7999D834714220000000874524E53004466EE
            AA88CC223135FCCD000057894944415478DAEDBDFB7B1BE599063CB62C595264
            5BB6E3B315149F122B711C6330A60627E09034101242A02990102E520A2CFD0A
            5CDFFFF17577AF76B7BBB4BB9496D2969E4BCB964231C74020404242C8D9393A
            760E4EE2439C388E3F8F6CD99AF779DED34833238DE6FEA1C593D16824DDF31C
            EFF779B314070E52005956DF8003072A1C223A480938447490127088E82025E0
            10D1414AC021A2839480434407290187880E52020E111DA4041C223A48093844
            7490127088E82025E010D1414AC021A2839480434407290187880E52020E111D
            A4041C223A480938447490127088E82025E010D1414AC021A283948043440729
            0187880E52023624E2BAD7AE5B7D0BF6C084996F663F227EE765ABEFC02668FE
            C8CC77B31F11ABCE5B7D0736C113FF6EE6BBD98E88EBDEB0FA0EEC826FFDCCCC
            77B31D1137FFD6EA3BB00B2E9BFA6EB623A2132226096B5E35F5ED6C47442744
            4C121EFA1F53DFCE6E447CFEC756DF815DF0D87F9AFA767623E233E63EC7F685
            FF9CB9EF6737227EF7E756DF814DB0F9BFCD7D3FBB11B178C4EA3BB0091EFF91
            B9EF6733223EFDA2D57760173CF50373DFCF66447CFC15ABEFC026283A69F21B
            DA8C880FBE66F51DD8048FFCC4E437B419119D10314978C0ECA4CF5E44DCF21B
            ABEFC02E58F92793DFD05E44FCFE0B56DF814DB0FAF766BFA3BD8878FFEB56DF
            814D60AE044C85AD88F82C28C2168795A34EF3998742D045315702A6C2564484
            12B0927EABEF290DE0F50F9087464D5D26A0C25644841230AFB9A2BAF4C4A2AF
            C823264BC054D88A8850027697A3D7E6C305169B992C0153612722420958A5D9
            FD81B4C4922FC923264BC054D889885002B6ACDBEA7B4A0344F69247CC9680A9
            B01311A1046CF1977AAE936168DA4D1E315B02A6C24E4484FDBDBC4B56DF531A
            60F93BE491F5BF34FF2E6C444428010B0C5A7D4FE980AA53E411B325602A6C44
            442801CB1EB7FA9ED2002D5F90474C9780A9B01111A1042CB2C7EA7B4A03F846
            C923A64BC054D8888820442C1C19D575A1CC42E919F288E9123015F621229480
            0507F45C27D33017D46A4C9780A9B00F11A104ACECB4D5F7940668DE451E315F
            02A6C23E446CDF491E59B253CF75320CE57DE4917B2C991E641B22420998CF59
            362080C20BE491877F6AC57DD886885002163E62F53DA5013C39409F74C59281
            BBB621A22301D385949080A9B00D111D09982E949C258F3CFA5F96DC885D88F8
            1CF8FA100958E3C829A18BD915FE8BE01094803DF89225F76617220A49C02A33
            BB9ED3FA0938E4BD421EB14202A6C22E448412B07BFF0C4E0A65B64EB6F20438
            0425609B2C5A916B17220A49C0DC992D82580517DBDEF60179C40A09980A9B10
            51480216C8F0C2621E0C11BFFD6BF288151230153621229480B57D0C4EEA7CDF
            EADBB4145DFF0087524402A6C22644149280DDD96DF56D5A8A36B89354F82879
            64EB0F2DBA3B9B10118488A17E2001F3541CB7FA362D45DD7E70084AC056FDD1
            A2BBB307118524601BFE60F56D5A0AB70F7495534502A6C21E441492802D3860
            F56D5A8AA59F8143EB81F9B34602A6C21E448412B09A43E0A49CCCDE3DF78EB7
            C0A19B769047AC9180A9B00511852460AD57BE12BA985D712B28192A8F81995F
            D648C054D882885B4111169180959D11BA965DD1F1F155F250CA48C054D88288
            0FFC953C8248C0D6FDC5EADBB414ED1F82432B80B33677AF700D6C41441822D6
            C1C4A4A647F3E7D25D8ABD51A52D56357C0DCE481909980A3B10D1E5218F7482
            291A4AE3E1B1F83F43BD57157B8368ACFB87C01929230153610722C210912F01
            439428F64281B6D78E49C04AC902BF551230157620225C25C097806DB5FBFE03
            44631D79F02A40A9959480E595379CE8F8FA9FA6DCAF1D88085709F0256088A7
            B21788C6BA0E09D89D59A327D6BE77E952A4D9FDFF197FBF3620E2A6DF914710
            0918E1A99EFA0FABEFDA68DCA0F5BB8804EC8E6EF2C8865FC4FD515350D01BBD
            C6C61DFD37FECDF0FBB50111F548C0AAECAE7FA83BACF9139180E583A7552301
            7BE47DEFCC77545979EAA0D1379CF644DC34F409F0CCE5BDE034C25395DB7D15
            15D1589796802D518E8EB5151E9950AAF7B98E2BED571AFED7E01B4E67223E7B
            C1E5FA3DA2BA46246084A772D7EC55EC0DA2B12E2B01AB1F68F940A939B87AF8
            E078F5A1C8474AFDDCB7146391AE445C9735F73C6DBFB3F66DE010E1A9C28715
            7B8368AC6312B065EF9247E22460658B264DE8FA9ECF27FFB3EB938AC363A18B
            351F2A86221D89B82EFFF236D6BE667C09D8BD56A9EECC02D158179280C58588
            77EE521DCDAD7BA2C58792BE4977529E67F044AB7423E2F347AAFFC0DB5C8F2F
            012BE953EC8DC75FD4FCF918DCC08729015BD9A73EB835EE7D93FF1B393E3EC9
            CACA3110522617E944C49C2D17B709ECF0E8BB06BA7784A78AE4EEE05F26AD41
            34D66525605D47D564CE1F2ADCAE54E4167D36F914677B41633AB9481B226EF2
            7C25E81CF812B0EC6B567F1A8311BCAC69AC230F1E22011B9BFD5616F7A81EC4
            BFE044DED90B0D11B54DB5F4D26EC550A40511D76555BF22BE26992F01439428
            F64283B6EC272D019BB28879DE339369DDD443ECB86665CBB0883F8E035F0266
            FBFE1ED158979680FD3F87DF9EFCDFFCD2836A38FD90BA08FF3637D07C2617A9
            4D4439533805440246782A44896233DCA7157DD4C0BEC8ADA0C21D2F01ABF3AA
            F5AD9BDCDB546BBAFAEF93CE7D7CA9C115ED1426A27854A8C1DDF0D175246024
            7812B096039341E275B5FAEAAEF167EF501EFBABC19E396589B835EB7539873C
            03BE046CD5EBA2D74A533CA15D02A54302F6FFFEACE503B7FB21F53A6D7BF34F
            86CFAFCEC4165FD626DFEFF4CF4B42246084A7429428F642B5B6938E682FB953
            C0BA0E96CC56BCBAB6E71BBE263CE588E8FE76222C149180ADB56AAA8669B859
            5BAD9197804D62B1327F3AB176970E2E04A7271DA945C475D5FDAF2578094402
            4678AA4C9380210F1E470216C5CA8FE686C776B83B1B7EA63418DC6756914244
            7CF65AC22CAC1C9BB71F7A66C253391230440286EC2570EFF1DE4953DA7871A1
            F1AA58258588B8D595D85684BEE6EDA5C3F83EE17CB1B2BDC09780DD03B9B5DA
            3B8C2841B226CCBAE9D420E2D3EEDFE9CC9155F89AAF8F54D0F7B2203C956B8C
            77BD34872E09988A35631646CF2940C4E72EBFA69F85C57997E71C672F51263C
            95EDAB8844631DD15ED6D384FFFEF5EEFFB4E8AE2D27E27DA7750BDD964FF434
            086CEA43782ADB379AF548C066D1DCFA9F19B805DAA6D1B775966A9AF694168A
            4DF722A780D518BE0EC862108D75447B39BF87F57AFF43972C18F86021117357
            EB348695F5E7C6C547CC119ECAF65A445D123002ABBDAF9A1D495B46449DC6B0
            B2BEE7FC25A957109E0A51CDDB0B84040CD15ED60AACD831DD2C5A4344CF03A3
            3AFABDC5D97E4912AA203CD5D33FB2E4139B87F6ED9A3FEBF781334AC4C4D6CD
            E56626D15610F1F9E33A8C6160247C48FA450AF054F62F67EB918051E0BFA3FA
            5FCDBA6DF389B8C5F30BD99714DF724C2228D482F054B617C5128DF510946F41
            0918039BAEFE4CFCE444603211B31E7A47B666B87C7765222B19090958C77BE6
            7E60D3A14702C644737D622D2F41984AC4E7AEBF2CE7930B0B4EBBE5A3420D08
            4F65FB75537C095885AC96A66899091B459A48C44773E57C72F1E27D03A352AF
            4040782AA56A60D5FB05B5C37D0BFB4E2A130D8AA2E975752A0714E546E56B25
            EBF6BF8ED7F59D76655D9079AF94005F023699C00C0ECB052845ABFED7E8A6B3
            6944DCBA47CAC17666ED3B978CE1C289EE151E193C153A565E3D67ECE078DE99
            BAD42F41123BB052B5972D2EB7D4E076FF033F31768F619388B8659F0C0D2BAB
            CFEACA9001825D47BE48FC2AB3E8283ED6BFF2C3EBD7DD293BC369A1566AC3D2
            5EB6B8AE7EA988C3FF48D6BF1978E3A61071F3B044D530392C0C769DB9FA698B
            61162C5237C948D757E7538E90DFD0DA394402168F16D73E091F6D28154D20E2
            337F144F948B17F626CA428F27FF9B5F7F926D4E8B2AE40A67EDF5176D4FFC4A
            C941AB5FB3180593801168F67ADFE59D3303FF033F352AD9339C880F8BD76B0A
            0B02FB128A0B3D9EDB07AE5E357FA733F7EAFE924F2E5D4D810D333AB413F9C4
            C6EFD5CE3D24BC9D807FDDFF889E2A07838978DF27C2346CFF6222811CD92A0E
            C621323236BFE42FD6B2B1EB6DCD9F8F09B2C6533CEE15AD721B54CC3194885B
            074463C3E583FBF5D70B0BCA42EF2C4C911D1FDD55A5851F5AB716E1466D6E26
            317EAFE58447B4F95974B3014D680389F8E87EC14CB930A7648FCEF7681CBF6B
            DB9C0F74BED830B8CAC70B2C4963F81230166A43BB06C4CE5C5D98F45D4C0D23
            E2D3670597E4351DD0E792279DF1EE85EFA6EC0294AEC1F3FDA697C3F9123036
            22477204B3E84D811F24F7D60D22E226BF5883D2D736A0A791DCEA3D7BE85633
            0CA1BBFC9E171EF8F8589B777FD68DCAD00925AB5459F0572530E97B6FD3EC97
            513054A7F455073E53EA47B72FB9B0E4F368C0E51EFFC64E73BD345F02C64573
            F59762D1E22373925ACB318488EB426296BBE9D2697963A892D0A888D0BD2478
            CE7BAC3AF241D9C14049DF99AC11DDA947E3F155EFDF7878C59F5AF7F699C8C5
            BBB4530F970E2FD6913CE5E74E0825D1FE55C9CC5A8C20E2E37F129136844675
            448675AEA493B0C37BAEBF7ACEC94BE3B7BD9986AD650D0AE0B8958E6DB5F264
            F42C3821F44DAC0E244FC59D7C226E7953A462D3F9D515D934B931FC6545D25A
            25AD75478FDFF5E1F5929D91942946270E759221828EF173E3B22BC6043DF4E6
            BE64EDCF906C223E372C22B1095C934C503C37CFFDF264321293902B9CB7EF92
            FF6C9ADB3E1CD5F4024CA8F69A64BC9A9F3BCC5B63A524B1C09D5C22E63E29B2
            FB6C49855C8212A83E98B03FEE38797581E7D2EECB29D0FD300E37B31DC6DA1D
            3EA9443E72FE9A40B0D8DC929435F94925E2E67FF2BD72A869BFCCACBDA0DF75
            EF8F13B927F7F5898A3903A3769F77A322C00FCDDD8B8665BCB4A7B2FDD7FCB3
            1EF959127C551289B8E920DFD0F9AECC91080D0B2A0E2630A9C65D7575CEC4A9
            54E8009B8485FB854E6BEDBD3E226C183DDF7C9B5F592CEA4A3C69491E110572
            E5E2AC1261173B191566FD59F46412AD9FDF5478A020F565ACC9C53784A5AEEE
            F1BA5E611FB1E8189F8A71BB56E944B288F8741FB7AD5C797E5CD43A790A3DD9
            FAC669760C7B3C256FD93215E1C1738B54893F3CFFA8A8936E9ADBCD3B65B55F
            7A6DA6164922E203DC5D382A2B7609D2D073F3F8B81E63E6EEDC5BF359067962
            121DDB645FE12AF7F5887D5F4D8B78B162A2E9735288F8E85BBC24A538E78258
            BD469F2D8C8C8C7DF3950CE6601484044C0CA1EB570744BE374FE5184F9CB3A6
            2A91D5F8C920E293BC50B538BC5B8C8681AE53D2B670EDA735A78E653807A3F0
            DCBB67A84FC70AA7D0B85FC42E7A5C7338C51CFFB71318E7923811B9D1A1A835
            2C286F94CC4EDC55A5C7ACD15BA52C1AC71B8FCBEB839FFACC25105F7AF3C639
            32B1CD3EDD42888489F8F0DFD9C9B26FCEA0080D834B86F648556A3AB62DDB5D
            9D6979B1183CF372E44DA36BF36FF8C9F1CA2FCEB04FD05FC8499088EB3C1CD5
            E1DDEF89D40DEBAE14C83CC5AEF2C5EFD97C844DC2083CF4BA2C19C39ED3DC72
            43ED1CCE12D4F8BD2565901811B7FE916D0E83CBFFC0BF48E344E82DFE5931C8
            374D33178D175D0B25BEDAC9A4AF740F777141D37976D6B2C9AFCB3D2744C4EF
            BCCCBEE5D237F9D76898BB43D82547BEAE959691643A64C9E8EAFC94F39CF342
            C5A2B57A9ACF0910715D1FB3A5571CFE947B89E0925CD12FC95DD5F4911313EA
            4363F8CA21F19A98BBF510C72CAEFC84E9C2FDB7EB585CA59F885B5E63B9E550
            4D3F37EA138F0C5DE5BEA08D748316C073EF8501F16C70EDD7F9ECAF3B3CC42C
            E5E8E8F8E926E2F79982AFF6725E70D8DA5B2E3896A6CB7F36E5D6E9A525DA8E
            CEDF219ABF748CED66A68391D27758FFBCE9A7B27B64E824A2671D2B5BEE3CCF
            9BEE132CEB12127745F2739CD4249908548B0A9ADCE3C54C0FBDE8022B69593D
            4FB2CDA28F88CF1F6515B1977DC4A91C36561E14095942E3127A2507A208FAB3
            E78BB998F0288B6BDE3C1FE357944D59741191191E6E3CCBC995038B870442C3
            B545177FA7E7DE1C08A075F072B950E2D795F316A3FBB7FE4D86FBF6DF27B508
            5F0F111F66C47FA1932E76DF7243AF40B9C6D52AD272729008EA6E38D223709A
            EBD6613A65BD63AC5070954CF2AC83882CC957A086ADD2DED0CB176FBAEEDEE3
            140B4D41E0963C81EE7EEBE01C3A159991A24C97459E88DFA35BDCC21A76E9B0
            6EDE073C6B181A1F131F1CE4206108E99D5CB7D247287AF319ED6789328E2C11
            B31EA0A7CB8115CC9A0DDF29BB5B7B92B772D981203AC67BB9A963D751FA7A98
            A643F465A7E24C9424E2B31FD35D2F3B59AEEBE15596C25DAF3A39B225681DAC
            E6B61FB2C3D478A9659C5EAD7BE42782F72047C4752E6AD9A6D8DDCB786141DE
            19B6350C55EC76F4341622F8E00E4E7FC15D3248ABE87A5AE87D98AD3F14BB01
            2922327818F6311EA9E0B243EC072E5C3DEA74F0AC46A0EB0BB68B8E945DA005
            4E6BDFA4BA67419B2843443A0F43A58C2CA5EDE228F30386AE0F38C63025D0DA
            DBCF6EBBB8E6D342C5FAD3D4DF508C8912447CEE55DA12A9E232C65CAFD5F359
            CD3CF778A9939FA410025BB6337F8EF63D14FFECADE8A1BD46A88A234EC4759F
            D278D8BE87AEC2AECB67851E918B8E314C35B4F67A7B18FFDC71E66BCABFD0B7
            815E2F3048519888741EB67D4EEDA504F3FA19A6BE35FF94B3F22915D191CBAA
            F7667B29C663EDFB34C1AC408F4594889E1B29751B5F013D5B5E7D9661E6C3A3
            679D45A0A98A4021432A1AB946318AB517692AC56F71777D1625623B85879D45
            D42276DDF51EFAF5960E894D0C7260111AAFE7D3AD48FB00EECA568E75E32FF0
            3FCA9BFD2E48C40729FD9440DDE79457786E7F9F6ADEDD255EA79B9CF268F36E
            A3CA685B8FE18DD8480EA5B65DF4006749951811BF4BD923207899D64C0994F6
            D02EE6EED8EE642869014F572E4D14E1FEE6EB6860E5A5EDFED7CC51BB081191
            A6B759F62125CAF3CCEFA1994377C90587866983D63954ABB8F432EA9E3D553D
            F8F99C72A2081169FAC332DAA6DC7537D3664739344C37B40ED1DA11ADF350E5
            B2274891E3B0536701226EA554816EE8A1BCA0F3639A396474CE1DA42A82AD7D
            7806EDBE13EFB4DD82B76BFDAB592314F9447CFA37E8BA80D0524AF810BCB19B
            72A5F0B0E552C3964BDE86BF3A55234914E451D4AF6D9FA1DFE56DB8BC7EF5EF
            19EFC125E2B3BF450BD9541ED61DA50415AE12AA96B7F97AEE89F1F337B9C526
            4D16DD70B6EE5D3D646AF19C506FC177E32EFD3BA166283AE6E1C156FB35D4FA
            DDF337F4ECCDFF4D7F072E11F10262688C52C65E7D1C37E391B2418ABE66C5AE
            2181FD3C08F8F24FCBBE246ED159F1ED0223791CC4C3D37E140D15C3B968CA32
            BF07BD0A234CE411114F980B73711E060314AB47ED95D7EBDD7A6759B7DCF9F9
            E1B80A57E7C709EC519EA1681C447FDBB56F63BF2CA58AE3BF8DBA51158788CF
            A083910B2B70B54DC1DDB8015FBB8D161CB264E61CD4C96CD7326991BBE3FFA4
            265A0EE8685881E9A85AF76275106F035AD95EF32AEDE26C226E7A1D4D5416E3
            E5F3BA95A8E0CBFDC84EAA9EF22FFABF9656FE8CA738146A9FD0B68FF5BF71E6
            02D7B084DC58298478F263A00A71D844BC1FCDCF2914286B4093A5A5FBA995C3
            E6E3823BA663987B46E2E4F051EDDFB28EDDC114CA3620B626741356505CF919
            A680A0369D9944C4578E5218B0F008563DECC8A2AF44F4747427F09D4859C46F
            133183148B1DCCA2B1A21B1EC46DE28ACF3033436BF5B188781FBAEB2A6E4C3C
            AB512FCB308793A96F421943CD21F1736B0F1307CA7BC55FEC4003AC2E123A87
            FDCCF8EF4BC99C19447CEEE75880183E8995F05A0BBA91A391B17DAC8F7447B7
            A21F9527254E26C5C3BEEB4ED6AC1B758B6109D9E5C772E7E5D8E8BAA25E745D
            3183884F601D99A6FDD84FD8F61976F1703FB3AFBC426ABC3309AF4CBA5D4A78
            6227444C04C10874AF6BF721F544AF1B2300BEE89E4EC4CDD8F9C5214C7F18AC
            4116A6B85BC6D8ABA29633473DF2BE0CA93487A8AFFA167C2EF36A0724BAA0D6
            343C176958AC7C1F33171B300B4725A2AB1C69ED851AB091736DD7101E867279
            12EC65EF2ABA811B662A8836BC94357580A0B208048A952790F39A762307D162
            229588E88E0168A68AFAE5F039DEA0D7E65DBABF86D0BC4FE5623C6D1490AD63
            9F30075A6CF81474FCEAB184A0142B4F602B5868447C14636D493F72B07527C2
            C3CA4AEEE48672BD529CCEF13EA9A60AF17D84AE4AB7A91D4004AE908FB3FB06
            C4077A8B91C62056C2A11111D33A6CFC236687EEEC0687DCB70878DD42D08D9C
            2BA099BDEB93723DF1DDAC5AB37D64A78ED73B0028B8834C9E3B3E477EC04598
            08063189142262994AC88D55EEDAA1E9EBE81358A1E7F593E946F159FEABF4A3
            B6E2D2B9DBFF9E53E9D0305968AC26CB1E1BF723E9292609434C2285885548A6
            82762316402FD93A2022C3AE000E522E117660392013DB109F1BE9475A7D0F83
            9E1D4E446C954AE00A52C9AE3C07F2F88D7F13DA8F02EAC9CB9CD82DCD503042
            C489689848F6F955C0C419272262100B8B910C21D002740E14A524006CAB2C71
            BC66BA21504CE4CEAD07101DE21244AC056A892811318388D9ABE072D0EC597A
            584CE8DA024A8FC686880E0C41C7452217A94274DCA0D3AF20ED15948888415C
            FE01E2987340E126FB46C1819BB0218ED6861CA438C8D8CC1D44AA724831D13F
            4070072322963263729585202040FB3C28E0BD39A2E9B4C433C406532E648C71
            FD1568271FFF91F66F8C88480D317C049E16089325A28DAF0B2F40F1832EDB52
            A7FF9B8EF02C2682AC3B102D0B52C221D7962244DCF21B70A8F0A637C0B1B602
            F21D5105060E1836040625BF81FAA10B771DDD4B040C9E1B86E62A67DB5F078E
            BFE5EA70DEE801EC2A73AF4FE00B0F5BAE661F2CA83E7BA574AFE4DA55CF3D1F
            E58E8E2F50F6B92ED665EFE33623BD557EA50E5F6CED5DD09F3BF7C4C5BB0E1D
            9758001B59B03F5BFDFFB2A37DBA96CD46AEF807FB0ACE945CBCEB13E48B0428
            086ACD5DE438AC9AB49C83269148571022221397B01222699329EA481CB0BF27
            B78AC49BE789B68E3A0BE2D2A595BB4A2F4C7DE050704F4D1CEBBC8BF7456F2D
            50AA2DC97B83AEE8554A46C95FACF652DDCE199B5DB860FB5AD1F5A7EB8F1F5B
            A4DDA43BD03C7080C1E4E64B17D5FA69E7D11EE21FF28B46E2AE5439E63FCDA7
            74E1B57B46DF882FC756DEF5F3D242C14DB1D5F75C7EE9CA014DD96FF944FE1B
            9CF7AD24D2584CFD804489C4406348C4677F01F4B0BE30FC2C75C7890A221AA6
            D2702BA87C46F688BF5A59D437F36DCD2CE46A39A9FDB0ED73624AA18AB199B3
            35A16EEDCCE69BCB3543356A17BE0D0287A6337C4DB7A7F8C621B4B7E96B3A4F
            E98EC76D0CA1119478B3EABF8457D9CBB2702DBDA5949170ED5F4C8868446AE7
            7E855A92C29C3CB6189E68F2BA43B0A18124CE846F8644446A379841BC91ACBF
            34D0662B23F09692A6BA7044424F132F2E8A29B5CBAF82C64CC9A5E8356F8AEB
            3BF972667FCB8A2BB3AF88B3C76BDFC60D7BF81CDBD1AD7CAB90B1ABFBDDA7B0
            10D8FBEDD9A66BE10D3367B4CCF90C15AAF9E8B3FE9A4EB0C273FE708BC8911C
            863F6BEF6751B131A0EDEC2DFF273C07A9253EA5594605890857EEC5FF7A3174
            BE4F1CA812D9813986C4FA7BB563F1EF15AD83E7BBB0DFA1FDF351B250345B0E
            D52C219C29622E3A46FD3D3A4F307E8DDAF39C3C0DDDA750E3B1622631B2AF80
            FA65DCFD0FCCCB7B2AC7581B2BABF0E59F67C4072D05BB38DF7F074B78F784B6
            61E74684D9487BE521CD9A79404444FF85846F6D13447B7BED29991D7BE0941E
            89FE1EA12C527D73FD08FE4394F42BF5E7345FF19617A7FFC373BF6661DF5DD1
            6CACA59935EBD957416362FDB51EFE7D6FF915F95B6A97754F1752C3FD2CD92E
            B66468C578B7C0D746DFFB219277806F0696BBDFA0FF638DF6E32346C9930FDC
            8556F900880805B185D7E027E87A5BFBB77B8DD42EDFDF061321EE139F4643AC
            84BAF7CF4AF3499A535CB29388466792F39BB44F52744D209B03B485128AB75D
            6CD1C3F21DDA2FD2AB55CB459D427E710FFB22C02A78BBFEA608A1B2142F9095
            5F1212AC1757D15BB065DAD8CDED85893332ABEEBBF1D38C01118B41AA82AC34
            6A9C4B98B47AE6723D122BFF411EE9145FBF12E9D17E6F913DCD07A8DFE4DC52
            22CD6A9F9E38E62166934D3A78C6963531CCD8D37830B72CD6409B1391EE4ABD
            785C164603B18CB6F9ACE8BBE37AD2FAB9FC1DB4A7505C48D723133D36A49688
            A42B1A090E4944A488882C207EFC45EDDFE11352A536D8DFBBFBAFC22F262B3F
            757E3A0F958E3AC2D7C61A8964949A77A9BEBA9BFFE630B7F7364BC424ED3BE2
            BF2722809F7CE04554EB4D9A25164D272582EB8EF7C1219F4FFCF595F42D2F08
            93E8CA827C804B9434FD66928870FAD7F2B7C9234A5B9F36089074CCC8D0B27B
            0576529F0621DB292C1E6018918E63A43C643A23200A5B9527171D117150A0C3
            943F21358A39BEFE40EA3EBCE341A1F913F186417246012970127002CC4F1F77
            53DA0B95C0270AE6059A20912422D43B200BA6C894B94DD4BA4FC193037EF33C
            E11E403D51A4DAA8FC9A717609F9D34EFF14E42DDC7DECA250D6EFBBA67DD4D7
            6F17768C51847267DD1B11A52A4B8E893548E3C82C3B2B8388B234A3FA44401F
            904154B5910A0EB266203E4824880873E6D005C891BBB42140E8A2DC8CC384FA
            7B526BAE2A3D3DDA03B1320D790B41D14FA08D53C4CC683CE28CCA63DAA8C157
            27C88AF699C1BAB00AA62C1FE97365CF9FF3D1C47CCC38F8340900ADD64047E5
            195A08D67A56F320BBE17C44246F8E0F1209223EF912E39B8BA18318312C97A9
            60BB074A2CF05C22F310DF40A6C1B110B144AFF8515366AA702366B4A93727D0
            575D7DE854791FC6D299B18E885F1043E8D8F47FD49F24AE503CD0355B63A96F
            40B2E9F8A192EBFF8EDC40E5FCA23D67AA4F940D5DEBC23C0D3D840A6947C0D4
            41A9360CC8E22B890411E10E53C85B13EF296B10112E89F7F72232DB482E3B4E
            DADE98D6EC567A305138D1B0ABACAFC087D248533D41C65DF9E654CFD648BC8B
            BFBA4CBF0026178DA1722CFB6259DF92CBF843D738E5E43CB94478DA715EEBFD
            9029A8715F3432362ED4E489ABA255644383D94E1D734E5827A494087D59FC4C
            6D8288B07803A3374FB336B8913588089702CC17CCBFF1E7E198474447074CA3
            7054FBC5878F00C337FD69608B3186A0F7DCB4F7F1960F2159505C7A8F548D48
            2AB41C04A9CC4CA18A6A94E3EC1A6AD562668DF8610BAB006D57EC273F66D7CC
            A48E7CB853404981B63E83A53274B19E5BE3D55A3F0127C05947F1ED662D1161
            88D804E7313468D385C8094983C8E2121561DFD44F4C1B9813AC0D4D3ECCDED0
            D8486C34BCDA53230D5F2C16ADA0F4714A96C6B70FF29149CCB33A7268518A97
            82812C918BE0E78E65AE14A3DC79F4547C1C7613B24073EA0A2DFBC87A2A3C13
            18A119D7ECBDB59BF827A491ED99037E5ABA7C99F093EB41210579FAE33E8196
            88304444F40EC43B4A359955E81BBE341DABE203739A4A6729E0AD9F37F4AED2
            39EE7F037EF4985FC4370259EE22888478CF99BCD3B390344068130C5E62BA0A
            811BE550C54E221146E6F34FB52389CF80D408E128D4D9597E409755E947CAD5
            F9D748A34F9FA346E4CD8806260FB887384DA29688304444AAD95A1B8C509F83
            2AD95C6D0A513B508F2E99065B977B95E8CF090C5FCC6A7C1B0BC4EF7E0B1443
            60343B9356012E53E642815F7CFAA744FD826F3E306BC8F0BE688C1839AD0D50
            EF425BC1C43730936A81BA0FA5FF07E28726EAC4A2E0658D2E105125C2C73F6E
            68A796882044F4C1599D01EDA12ED0AEE3A05EE72E6851A780792AFA702FF293
            C7B4662DC8F4325476415F7C0D38BE7117DE7600E5B3E9781FF30B984DF55E21
            8F4C65CD049568734B3535A2991570EBDF21D22C5A1F1A7C538CB5960F699EEE
            B570302CFCF1E2D2660D119F053B0321C51B62C9D463E806180CE81D581C4DDF
            1F43D431F479D8A4ED8D69CDB05B40D90C4F9C2EE9029F557C23459C025CF074
            A70AF10BCBD13DEFC08953172046076DFC15FEF6F1251EDFAAE99C180C2F2F0C
            D1040DE0DD73A93F5FB5E654770DC849A11388DBB154434498AB203F32A1C795
            F6CC944D89B8508304383087B50C15682B28FD3D15B80C0D2635D31E105C815E
            802223A3299B82F885CE4BA85502E141F4037B02C43741EB4DCD7E8440792C0A
            04390C3D0501CB9EE83D30C242C12E1F1C44B8E98599FFD410114E6F477A3ADC
            349D0DBD75DCE8EF87B4893ACF503BF1C09EC5B4667009214574019EE1E95005
            046E68AA300592B3534484B69666950011A3C601FCA8D43B9816070566F56564
            BECDEA218320F12EAA2C91103E9403939F0FFA6771DD660D11BFFF0279262C1B
            356AAB86982C9C09BD93B3A35FBF0B8E6264EC0F40DADE58090F66B23436830D
            89A69C3B706DF8C0BE29903665EA2EA05FA0451820D78CD602A1ADA677A7D61F
            1CBC321C67C8C8478335C919C475F44222913C20E5E522D29F15CD46B61A2282
            F1ED8570E403C17BD96AB6DEE65AF190FA53C30200AA109C02B0BD31B3076F81
            B29516F461531E1CFC3AACDD32C88C295ACB847E019D71A58234DFA17EF59B40
            A4F7C1E562E262600A583BD600CBDD4875406DDACB204A1850ACF0CF96623544
            042BEB1131021109DC8A6FCD4B479EAE1DEC0B0BD53212B4EDAC1DF9C0171EEB
            5682523275C10C283844AD91E756A298D9CEDADF97B43FD137837E811664823E
            D4D49BA19BC78547CF09E842C909A9742583823C8A6EFAC93768D232C4578228
            834644A001438207623067BE645B255F761D7D149DEE68A9199A01D6C01CF1FE
            1E35D3207FB3A9FA0FB012CCBD87C86B448339F1FA1C0806A75C3825C2F105DA
            0F729631830B3247DB93C1106B7B9BFB34B284A59F71BF0A2A11411911A9A37F
            43634E42C8EC3B26F46C03599C5532F5E5C26C9735CA8E7CFEA8FD3D7A91762E
            D1C58B5A23729501DB20021710FDDD816DA00507F0E19B7A6A18E28FA6DE66D6
            BEEA2072DEC6B2A264B99391D710EA4084882030A611D147BE1209A0B565CB8D
            AF2872805350967FC1387DDDDF1A46078EC7BE299217CC45A8E0A78A7D18E06F
            A926019473A39700CFD262A6328D6C4AAACF0EB8B7E24B3436904C980A113972
            B8C2B5BFBE9D92DD82BA117B5B42923BACD5965A6A2440C475E0DE9130F676CD
            CFD8FEA12207D82B161FBE04EB505D6FD2CF06A597D8C9648D96BEB61F5C22EA
            83C910936D52C81F3E5ABD015CA6A7BCA4416515E535D878C28B7D3B64B30813
            3EC781FCB258518876B94002447C1E6C810A6D85E79AE64F74971706D683C60F
            DBAF69000267A6B09B342531953F3009F43893B49DD14BAC94ED696A118D7680
            5FA0AEA605B633669240C684A0F26A90CCE5109DB40C983B20722D22E88B5188
            B809344960C59DC8D1658908DB8D122BEB41ACCBDC29977C9663D10D302574CF
            4A961BA297D02DEE9E42D4A4907E81FEFB02A33C13152F129AAD14F46A2B4B15
            890D2A67FAF17FD11832C459821F905247844484F2ECA0D690CB6AC0E0E62A2C
            EFAA05E8EF31BD0A307C31EB4EFA07BA6706B62F7A8944766E9B7600E0DEE8A3
            D048BB1E273A105CBDD3341CEF4D4B13DAA81A1B3E338BC59A4703B151A07447
            E9AC88109168AC481211F68A63B1B700C0C3CCCAE0A0ED9DAE38825232BD240E
            6CA7DADE4A60E73615518308EE8DFE3492763D3E8E105D471637B7066BD64B80
            6910096779EF9FB81F86D66B1671CD8975F8A03B91081181268BB9FB37198FC4
            BC1F28C0D1CB68A4ED8C2A5C12F3CC53BF24796F746D15B09D9A5F0459948262
            F985584228E6CF69088CB1AC06BFC5077AFC14F50D2422F223E56AE48F4844CA
            02D4F7CD157715E48618E41A630D803A255612A595B91190DF5BB414ADAF3334
            8D920BEA2D03B3449F73018CB2F66E5B2EF408BDEFCCB410D775A1F37150E441
            3110126D287A80D2CA27FE7DE63FD9444432899B356EC505F6FB6102FE8A3587
            445F0B8A7ACC6D08C0A31F4B4968656E08A08D502DB0BECED034A64341706FF4
            459AA45106633716E50B0D37A81C9C2270228F117D9CD81488C15C3540E806A5
            6FEB7F39F39FEC3A2252DED2E6E891FD32436FE0AF8828C069002D06661D193C
            FAD3CD7A500EA157F048DB190D6713C83A834587D8F70601025A24AB5991FBB6
            80839E8AA7A516E36A51E93EC5F9A9B53D37379C0904BFBB0766A764B33B2B88
            CF20E63EF9651E31B95E310132DF63CF98251FFD581B0F9443E88A56B2701D0D
            67F58A87D6FC5FDE4C498F766F1020A045EFD65B2EB0B23C1A50EB7C8C42C17C
            2FB7B8E1A9D024AE88AF84C9156DF114E835232D346286FB2A305F9601583B90
            D84B9EECEF31046088ED8DC5A26439A47088F69C036D44344E013208EE07B8EB
            934567C6E24D1EF5DE2048DA531FBEC8C8CC325A0AA23F2594B5F1F64D2CCBBB
            5E91DD2DE2F6EAB4910C524684EDDDD18999FF64AB6F90422B31A6566AFE12E8
            1527D2DF637218F4D062B1285941A0D3192F2593098C44D61F03F00BF4E20D19
            D0B27AEB9EFAAF99EE494D738024563C32E282D8A71619910802D4B87A36478F
            88A8CF36689B5161C6E00C12B004878CBCA3013CCC773146E982878FDADFA337
            67D0523208B224063BC600D840CDFEA9FD3D1AF28BB2FA68CFA7EA9B492A486F
            6EC38036794084AA30698EDFA394ADD04674A76D3B35CE1F9B524B038C11184B
            3D4890111B6DD9DA1448DB1BAB7DD3CADC08D05232E8954B949F78F70601ECBA
            C080676F7D2B3E075C7DE448AD3EB3252007A28AD8F13178BAA084327E522767
            CD0A92991223192576B580FDBD72FEE625D300111B93C3802F313F4E2B7343E0
            A564507991DF415022C620EDBAE006AE2D738E210DAFC94706D824B95D969820
            8608239D0E98E7C5556F78ABF8903B25B295EC6B8A2092DBDF637298E6C7A965
            6E08504A8E86B31499AA0C24620CB2AD3D1307442AFD477218E1F5CA6D305A9C
            74EB204D4ADE5EEDADD95A5F731BECC8C3613F8FC55189B3AE19898E89194CC8
            426A0A12DA5C8536B40107697B637E9C5AE686C04BC9809EF244A4DD1B0430CA
            D385EF153BA29798DECF0885176E753269BB81A360CA97A440B4551056B06730
            6989E8F290A722813431E304DD8D12057D7E870048451693C3C0F6C6FC78C2A5
            643D44CC1FCB1B734FC4E62652EF0D0204B4D1FE9EF7A6D833C9FA0EE092D9C9
            68181C14F801BC2B2F1DBDD050C90B4E89800DF1CC70CE036386369CA08D9416
            88CDCF5AAF63F3681090BD62F68A132D407F8FF91502C317F3E3099792816BE6
            C6889EA2A9BDD97CDF98FA2625620C32A09DCA71E34C35EBCD49B7AE566A0011
            F931625351F43AA16CF6E724DC24363016169135DB426A8908D366242B24F70B
            2F179BEE05271F09C6DE2AA8431B500039FC742C9A78291910919735E72F8A3D
            F6D37911EDDE2080ED8C7623E36FAC892149239F3935BE04AE999735CF6E2684
            EDFA1407A276F3D44F802345267C7C2BFE41D312F171B0160AF9AC05A35ADF2C
            B8802AA1FE1E19B1B1394CDADE58D5995AE686A09492813DE384B9F11BF84C25
            25B47B435E4BDA75D528E7E7C4BF21C3A590D52754B1C1D967A9FEF42C9B999D
            FDD544968B846BD033FB35652CDEC4584C2545C4038226119A66F1D207756803
            0A6A72482B7343D04AC9A0F6C24C9A3CE3F13169B46429116390016DB41BA935
            A8F4F8924C0DA65678CD23F305A663D16C06C42262B05E1B9D757C097BDF708E
            DBD61FC6FFC59DA18D54B948FEBB9688448970F291F8E62A20B8616E10046C6F
            CC70245E4A86DD0146E259EF8BFFF1A6DA69D47B83209D6BB41BA94DDA7CD769
            8F01F93E537C074D36469018B9DC13FF27AB194BEE218F8C2A4446526A7640E3
            EF2A80F81E72E329A1A276429BAB48A85915DAFC2D46995BFC1230E3AA3C47E1
            422C4B99F9D63E665E1800FC742AE549634F7B0C88BD57638C05B203FA2294A6
            5ECD53CB0A4136BCA68DD522E3B0A207ABD95ACFCCDF67057B14C827A06317BF
            CF07FB7B12657DDA50761CA4E18BC5A212A564DA2590F1BB14F7B8FE90D6974D
            EF0B4EBD30009A9F91A141F1559C48E46D4E0700C2717ABE9778601865AAD622
            22224456AB20AB58376BA7C212447CFA45700D248821D3159175F6B0AE2E5E0B
            06B550E60641B5B4CD55C44BC9D44B608A3ECCAE46F27A311119E3C200E8C216
            90C0E0968A4CCD63661BD1976331AAC73547F87901D390D07D7790E16571A258
            15FCBDF8B0766C883CC6CD57605D9DDD1BD14042CDAA205E60DAA64B949241E1
            7BC62D600BD441092772669824E7F4BEA4C02853432F70B7B8E84209F782AFB1
            A58764C2CCF705DBFD4AB68BCCD89AE676134718FB922A0D4709AB8474F7C848
            41019E59607752ACE20A4C62E802C73927D4DFA30D6DC041565E625A33895232
            19D4C73D8CD8F2A3F8DD3526AD5E683BB091B13523A45FA0EBE0C0DD466D27B6
            59D23CED53993F9C4BBEFD6C1084ED65A0BDFBFC865E6054A68602E228081216
            A6EB1DF8E32006316EDD541402FB35638C012671E96EB68A17C65612E26CD6E2
            5E00E07E689BABD04BC9E01271DA086D212F86A6FE39B993462372657CD110B2
            00BFF8F6A9A43B3244D9F805023444A76C276C4F4DBEF9818531BBBA727FD645
            707FF1BB4463AF570273E69C9CFC2E3CCBBFBC5687099D19A59BE06AC2D6B983
            70B535989F368927FF55FBB7C00EF658B1A97184F4B448841A0FB87C4C5C9C4D
            6BFEE3004F5FCCF091ED6A7A2919146FE26D2775D54AA142B3F1C555D3351A89
            1883FCC2A66D27E5DD8BEB4FDFF0D59CBC83D8C31DB3C6515057AD148E2A34CB
            C03219DF20898B8D5C4006466D2215878088DF7919BC08AB1E937D3EC57D036C
            2FCE02BA1489E20DF9394201D632717472928298397A05105C22BE5CE7BD8FB5
            4134868D3B62EA5BD2CCD1630C50B09C0E445BCEC96EF4456CA122BDA943A880
            51CA261315A5F5008C42BDB74027A12D222A081111DF1CBFDB750C9E0DE4CFD1
            D1CBD8C907AA7325943764F58BDD212543C4584A026C01BD164986F4DA50A076
            4C8E0B5BB6CF3C37E4BDD1E590A08513734B50C3C4C6EC94872920BB0332816C
            30388B05801888DA01DBA5A90864C0808848DE8C9AC48E4FC9F5824FBD4C4F58
            80B3F385C5875F903F1F5BD74D767062FD64D2A931560192CA15A2258D84DE74
            147AE21E0052AA4FEF7593EF3113A8234A4316829749B7583F203398AE7D9411
            41757E4C72009B0E0737F4D3EC7D360D4844287C404DA2B20E0C21EEFA84BABC
            5662322504C10B8E53277EEC994890F4B78C1913C42580F0E32641E1DB248237
            C715CD497FCB281C906F31FBF0D5578A8F23D33C0531349F1466A2BAC32B1D90
            876BBB110620C10034880811E13E68B8336C6D00B1D2D21C9ADF200BB1D4C618
            062269E62C74213ED14C2F972022CBBF1346156A32C397C46A4FC5DFD0A45524
            1119CF021117C727562BF7883AD7E05C746918B690004549152BA1843C8C8C22
            D119961EC52F56990624A2F2DD9FC363587657771C2CE6CF6EA6D80A22530835
            084F455448D7CC5BC0A94D8E678BCD5A1BD3F939A35BAD7D43ACC4D25CD4CDBF
            EFCEE1DDC4E3A66DF0B1B48CDAA0DA5715CF286C436F044D13B42CC353E0E387
            B9A1D10AA66E19C687CAD617E069DE62F8D8200611232292AEE0DBD12C848129
            95899AF83FB494557F01D0447794DD6867A1B17C71764F530462956889FEC796
            5F6299ADA7E812A70EBAF123382C46539967E65C9A0E4E612EE1042AB2B94671
            CB09D6B3DE7C8C33A4C4D774955D5E4378880ECBC41A000F211B89224444D6D9
            5392DC6AF87564DF887BE7F82C10D99598897CCFEC8FD27E9197E4C4C7C65363
            E0A611977CC774FB14C43FC5D4254A9133117AB0D6397A16637AFC5EA1486F2E
            1E71BE19F9BE3C95E758EEB5A93FEF80C24673AF976A157D81B203ECC7DD83FC
            CCD9D9C8138B951830838812712BF4E04A6131F2C9DA0AA012379C8BAFEA6B3A
            190BAB4A46857588D358F1E1F4EFE7CB1728FAD4F64E9F5D1CE8893FEE6D8915
            5FC3414E317DFD7BD3D42F1E66D83D4F71ED11C432152ED87E078DE7151763F7
            36CC6B2CCDD46934F94EDC3DBE3F8A72B1726C70A150AF203282746194C2EAFC
            43DCFDABDA726003064D5531C78CA4CC0A4E44D424A27D884031E47BD776BC8A
            D332A7FAD78AAFAE37C87B5611E437CEFFB552BC66F76EA114277266D43DD079
            ECF40479B66FE9BE81D04084BB244DBDC4E243C77DB9A313BC375CB9FFF8BCF0
            CEE9DFB3F8CADCAA1D0D7B593FE3CAAB074E29C57913A7F99F64D1C8E0B950ED
            C4717A10111998B85E7E6E608AD285D99583A5E397276466C27A1A2F56D7FDEE
            C623EAAFE85B7BF4D0390FFBEEA75130BBD3E90C5AF7633F3B36B27BF5EFB16B
            A244DCFC5BE420DAE881D5C4C9A82097EA353C32D3140D8157E7B6E5BCCBD654
            9F382C7869895B10FCBEBC8D5744DF3C19D8700C2602783B03DD0CE65BE84814
            9488CAFDC8B0395CCC5B790E3231342A3865DC413A62F57168742305D8E6A0F1
            21F10CD6BCAA60C089889A44BCFC8A644F8A3B2CBB79AE837441AB1BC9462367
            30D38337819EFA017A5D9C88C8DA1585D61E26A6EF4CA1B252B225EA203D10B8
            17917CE03CC4F5159A55F571A010115932A0D0444BEBB00D47971E121F57E720
            6D50598BB8600A0F5179069EA92854222ADFFB297290B254A71D7BC78E43722A
            0F07A98F601E5601ECB88E6E1E8F4B431E7C49C14123E2BAF7B1A9B6142D296A
            1395AA52716D80833440D9794CA9D23A80CAFF6A07B094226E871F0234226222
            1C85DA1E5D80D606C3FD896C8EE320B5D0D6DB8F6DAA4329D6E162B3A25EEA86
            435422A2556DEAF2C78547B09B8C5C131F27EB20B5D1B11D15EE511A692DFD68
            604675CC2C22C27DA85484F2F03E31564F9CC4D2FD8E51B403820B3F477FDFE5
            43687524FF6E743905267688814E446CEAC3247CF5B838A8AC010D592363472C
            EFA6384814955568B8EFBE0D1FD24A5191534AD953601011EDAFD0B7060CDC8A
            DF55B80535AD0ED20681513CB2EBE8C3D7CBCDAA4B3428BA89B5D09345C44DAF
            A3FBC1D0364B0D0EE1F7EB6EF99ABF4397835445F0FE97F19D3FD7BE89875D14
            1E527ACC31B088A83C8CCB54A8DAD4AEF7F15B6E9D2BB3519A8354C2EAB39422
            DCF2CF70F312C9C185E18FFF88F93E4C22A2AB0626D1FE3985899545141152B8
            E203C541FAA1EC4ECA226E6A41247F02B793F40AE214D844F4949C478FC3458A
            D3A83B4A599DE72E19747A7EE986C012DA4E8B1BFF42A986E4B776A3C799898A
            0A36119547FF8A6F1B4865626321EDDE236DBF7742C57442207886B22DBCFB91
            9D147F5D3F82377657FF89B77C9843446433AA2950BD332A579B42A86E8743C5
            744141E3E7141A2AAE365A9C557B115F32CD4E98A3E011119B5317452044E35B
            A0B48776B1D6C1394EFF391DD0583044FB79DDA51534895FC5157CB9B77FF52F
            141EB84444F65E9942208BB606CA73FBFBB4874971DD3AEC5031D551D048A5A1
            E22AA2CAEF690330FCDFFA4F850B3E1173D6526A2F957EEA32A8B27974B6B96A
            F31DD16C2A2350D84FB523EED2416A74751BCD61B30B88D3E0135159F7299E3A
            2BBE0AEA02B3C6C133D40F33E9A01D2AA62C360C7C40FFE5D66EA39AC3482F8D
            A10FFC5C1180001195E75FC253673881200E1D7EC666911D637B9D624E2AA2E1
            F075FA3FBABF7982EAE89ACFD274D0E82A66081122528B38CCF12DADCD2FD31F
            2DC55D72C1D1E5A41882E5875845966C2FFD175BFB3E6D2A95200FC588888EC3
            99026BD3605AB37C0AEED643CEAAD3144260B19BD5FD5ABB9DBEF443BBD59B06
            A23C142422B59CA828ED7B1803443A8F32A74E751D7782C5D4406B6FBF8BE1BF
            948EFE003DFD9CDD8115409887A2446430B1B88C315229B8ECFF589F4FE9E819
            703CB4E52828EFFA31EBDFDDA581BDF47F5D34973A8C4A9C87C244549EA1AB6B
            99D35F036DDDCCEBBAC76B7A1CE9AC85E01943C5DDB183915932DCB2FFBE9F2A
            C21026228B89C171D67C2FAA8263E6AB70ED76CCA24508749DE23418B2C38C21
            FD9A2D9D09F8D788D40F631027224D9DA8A2F3046BEEA5A7FD32E7C3BA17959D
            73A245D3D13871B58773CA521F53BF17EEA74ED713EAA7CC4282888C38510995
            B2A67E2B6D174779B3723B7AE639924533D17622BC638C734E3887B5790EB9A5
            B3064577F0FBCBF19021A2B2F58F23D47F0B8699D321DB2EE5717BCCAECDBF71
            5CB439F014BAE7739FFBA5434C1A2A150DF491B9ABC7B97A1B2DA488A86C798D
            CE44DF047B06AA805554948D9FF73A2D17A3E129F494F395273C1A822D9DE3B1
            E64FB209A81C11193D96496CF93D7B2671F0FEB7F854742F1A3EED70D140748C
            8F0BE89FB26FE1184C62877B2DB6FE50FAB62489A83CFF9BF3F47F2C76B3B740
            5182E577FE58E1C2BD68C4B18B86A0EDC265015BA8B85B2B384B80F391E1C5B3
            20B7C015812C1195673F66EDBE71F75B9C11BAADA5D7DE52F87057B94F3AF162
            7251D07CED92C8806D8126832F8B1186F9EF1692DB109026227569DF143A8FF6
            F05EDF10F842E87D5CAD47069C52779210A89AB387972347E1AAE9E3ADE7689E
            60EC57AA14AD952ADBC4A08388D4D50353A0ECBB158F8EDC0F84BE1425347EBD
            60AFD0990EE81074C82AB26BF6F34E89E4312BBE6B2AFF4DD74DEA21A272DF7B
            8C9445099D747347DC176C10C85BA270572DDFF7896318F5C233CF7568A1E08E
            171D3DB90779E7785C73985B4ADEF35BDE1528D04544E5E93F9F67FDF3C62FF9
            5B4BB5F67A7B44DF2EF275AD1331EA404173CE21E1BDA5BB8E717DB2A2ACF898
            F93B487597B5D04744E5D953AF31FF9DBDAFE5343A8E06C577A771958F8F388B
            51C5D178D1755A7C2B621163A828F5D77A98FFDE7CEB0FF817A14027117981A2
            527891EF9F27E3C92555BFE69F15837B51E1E8A8B306908F82393224549470F5
            2E81673CB2AF8A6D5E75BB6515BA89C8ECF7A9280EEF1209EDEAAE84657ACCEE
            AAA6BDFD8E65A4C2332F67A84F86844AABEBAC803154BC41CE76AC452B64C436
            00FA89A8ACF3B0DDB3B2FCEB5E91EB04970C89551662702F0AED7539C93440C1
            9CF5DBE4BE492572614CA844E671B5BDCB3E63935F5FB61C4302445494EFBFC0
            3921386FA7D0850ACA1BA576709E2463E7D7DF7CC5496062680DEF9134848AFA
            4007445CF2249A16712228FFB77F2474213A1222A2B2E5CDF39C334A0A043723
            DDB03D5B38C18BA14AFA15364470D1B9A1DB7F2F67085584DDA23DFDB57E5E20
            BFE6AAA4D6062231222AAEADDC768E30155B0747F8D2240DCA337C4F2195838D
            EFCA735086854AC510CFF1F857FD52E84A4C24484445D9FCB711CE19A19A8B42
            1B592BB25C74D7646EA05850169A784FD6174FA3EBFAC7C2414D530FF7D43555
            FF9A840F943011F939CB24159BC6DE10B9940A092E6E7C45EC3C7B2138B77EE0
            53DD4189949AC45339BF9B778EFF76F1957A2C244E445EC72F8AC2C8B0A8559C
            E4E289F9229239E5E94403E43483C793DF78F9936C3DAE780A72FA3AEFE239EF
            724FDADC977074388564105159572AB03E219C2F96414FA1EE866CAE5CAC2463
            264504BB462A7A5CBAA2C11944F20BB6491460236726CE714F2AFAA6EE961E89
            A41051C8284EE6D8EF1DE29F340B9E72C9DD6CFB857F6D5FCD597B787F6F4BC2
            EDA48D231F4949EAEACB3EBBCC3DC9FFC07F095C4A104922A292FD3D5E4D5145
            20FCA5C059B368BB7099DEAB5AFA59F2BE865442F0DAAA2F97BDBBE24FA7E78D
            27A53CD5319EB3534EF05E3B7846E0AC4D01FD9D6588641171F2BE0E8AB8DEC0
            B509811E743CEA5C14C3788788D43B2DE0A93DBEEA7D57FEC424F91E2CFC6942
            0E98807BD15259119DB7FC9C48365374A71E1D361DC923A2A23CF32B01FFACF8
            AE2C11CF5BA6D076B4FDCB93E0F7599FB65BAB0527C6278977CF7B130B3FAB7F
            77DEF176831674EB112CB59C10080D27BDF2BAFF11384B06C924A2F2ECF0CB42
            E785FD7CBD2289C6F0956ECD818E8F0D95CB16A8FFA37E3B233ADF26A8549C52
            C6CB9541C5D53CDC3FB1B0FACF130DEF2AF3969CF49A314860ED8E711DDAF645
            67BC42D1C0D6E349CA95679154222ACAD39F8BA5C61B0FEE96F4D08A52795AF3
            67FB87C9FE2E34689CF0CF4604EEF2C9FF51DB38F7EC9AFC9FE02E78FA9229D3
            B34415C72DED574E27D3BFCAC255BEF8431DAB20F3FD2EB14E557283C3692499
            888AF2F0DF45FCB3A2140F740917B9A7103AA9F9B3C1F04DC90B2A0EBAAC2494
            0EB8AB4A8FE95BE5236A0C953573752D8EE221E94454B29FF8AD181595E0ED6F
            C89845B7367FF69BA1BD69739F3D942E646CCD3B39774C5F452BDFBF5C50A09C
            EC1C6506C927A2A23C774DB4CCE96B1B10AE7207B4F47EEA3F8CF94220DA8EDE
            F3528AEB7C260D61E17B7A1F4C4FF1B8A031548A962541DE80C308224E868A67
            B9FDE718020B46C416AE74BEAFF9B3F284515F090A556490FF7A0ADA46F7FDEF
            CF2FF98BFEBCADFE70A1489AAC22F9A9721C8C21A2A23CBA5FD8D4F9EEB8F2A6
            C06977766BFEB44202D6BA2F3F6FD8939C327312E0EEDC1B28D6E98CA790EF6F
            EC163DB768D5FF4E18F8618C22A214152713E2B57FE09CE2A9D0FCFE564AC082
            7347F2467AB312501F248C50B1A7E9EDA2C45A9C91918BE255C6A255065A4315
            C6115151B6EE9190392CDFDDC2CCA2376899DAF50F23BF1531348E65672FD891
            EC660807936670CE445FC233AABC85C281E1248AEE335CE864241127ADE265E1
            585151C3C5FDF4B9760BB43AEFD49280CDB6878F571A5642745FBFB9E4EA8104
            CD6014DEC21BDFE66B1A6660020D8D26E22461C665D2FDD09DDDA729159D1CED
            F0FA3AEE8C16CBD03A72AAA4ECCC505D7FD5C23FD72BEF2AF394DAEE27FE2A33
            98D95D5E7A3331BEAFFDECA9ABC9E9244DDAC22109169A4343E389A8AE3394AA
            3C85EEFCB51BB18B6D3B3586C6ED4BC3B5CD416532DA1F2F5794B283936978AC
            DA72CFBEA965C56A95B4AEEFB4AB32BABB22D146526E4D4E5F303292757140E6
            05CD8B92A63864C378222ACAF383622DE819203BFC95690FD955023683757FD1
            FC9994C67ACBD7DE3CB98C7FF3E84B667D60338838F9B5BADF16ECB64451761A
            5E41FBC3D8470246C143DA4E47E28DF5F5DB4AE5B4A08AFF91A3499736D0610E
            1127F1CC1F794BA067510717A0D6F468FE4C92A74A59140C6AFF4EACB1EE2D5C
            30C15F7EA285C1654300D388A8285B2F09A6D09527C1A1C6C39A10D1600998F5
            2043C4041AEB2BDF2B970B0B5534D71BD452A6C244224EA6D02EA1C877593738
            64AE04CC7A104AA3D64FF45DC65B587B44BE03E55F3F2AB7594F32602A1115E5
            D9C1BFF33DF4BD700E8EE912308B41288DF434D63D8D7D57247393289A6B5EB5
            A26564321127F1CC0E5EBF250F966FAC9080590832445CF5BAE4059AFBAE6449
            FBE349F8EFF09A6F0CA3309F888AB2699499430706E121EDF97A3D55DA6035B1
            EB619E4C4BAFD97D6E50545043BCB2E615531394785841C449DC779A6E16DB3E
            0687AC9580998F6A6D6027DC58F734BA8F49B54DE2609D318CC222222ACA7397
            5FA3448B11B8B28A9080497BAA74031189B47D24F01A6F6D7FDD3E3DEE388A4D
            A366A7C9042C23E224367B7F8FB8E8503FEC36DFA00DBAA53C551A820C11B98D
            F595FBCBBE4A206C6E6EFDB1CEC162C98395449CC4E66160DC82F0A9AE3BACF9
            3315246086E2096D958BD9588F0C5CBB7645A7378EA2688D2F1963E51285C544
            549E04CD4CA4BF4748C0843C553A830811698D75EF6DBBAFBB1313AAFBEF2831
            644D9E3CAC26623B485A6AE0A4A6F4918025074488F8181447E7170D67DD29B1
            33080AFFFA0993A43502B09888CFFE3779C407C3C6D62B9AE555692901930151
            ACC21AEB85097F05FE0D972D4E4FB4B03A46047BC4848F8093324D024614AB22
            B9602A9DB734B1055CA9C642C572227E072815BD30F0CE3409181122228DF545
            E25BC741F8D78F25B4358F31B0988855A096E848C0949BB5161069AC979CD57B
            EDD5D9735290858AD5447C0E8C1CED7C079C4448C0104F652F902122D2585F22
            A9719DC61A77B695CD1326AC25E233201FBC1BEE35996912302244441AEB7A42
            C4A2F5177F6159235900D612F1BB206476246064888834D62B4E8B5E6B1A6BF2
            7253A45C4885B5442C06B51A47024686885BE170F2DB64A2E4D5D905BFB862F5
            67E2C352223EFD2279049180118D57DB4BC0C8101169ACDFD12D78ADA2F52726
            4C5C0095082C25E2E360EB284702A62CD4F68D90C67AFEA0C875FC1B86CA0C98
            EC6A142C25E28360355539DCE139D32460C4E7451AEBE1A3BC6BF8EF1FBF66DA
            8AE4E4C052228210D1918081CF8B34D64B99BBA0F8EF1F2E48F5CC048195447C
            F455F248FB367052A649C088CF8B35D69751D72817DDE3BE98B2954236AC24A2
            230143408488E1C3E08CF5F876A0CDD5BEE2541016EA84954474246008BEA17D
            D21009D84DA0B35474CF504E9A8584001612D1E5218FF8AE81010E9926012343
            44A4B1FE1868167F2B35DBC752B090885BC1847A47024686884863DD9303F449
            E33618C06221111F006D654402F6F88B9A3F1F337892B3E52042C4EC6BE08C15
            4005D76C87B8D942223A12300444882824017B3489DB265B06EB882824010B5E
            CE2C0918B177825273109C722BB07F0FA67BA2A2C23A22DEF777F20822016BD0
            FE1088A7B2178810514802E6D7375F24C5601D11BF075690391230B26A2A2401
            DBF482620358474418222212B0FBB4DC443C95BD40544D852460EB0DDB1FCF4C
            5846C44D60FF794702A6786ED1D24C4802B6214D9B7A5A5846C487C19E678804
            8C98BD617B0918B1BDD65AD8CC8312307B8488D611F109F01C2312304235BFD5
            16D110034488886CCE0B25605B7F68F55D2705961151480246A8E6CD9580793C
            A62F4AE037D6EFF91B7964D51F153BC02A22EA9180AD35F32B6FBB74683C7B8E
            B9E24781C63A9480AD4C93B5001C584544280143B69BE27B2AA350B0E935F5CD
            226DBB93B007A3303AB4CF222201AB076583A2938A2D601511535A0256377A26
            D6D009F90E9BA728E037D6A104EC9EDF2AB6804544CC719347524602D6DA5BFE
            45FCDFE10AD3FADB4463BDA40F9C31BF873CF270EA4C964B081611518F040CF1
            54C947E3F5AE1F93C7DA779993B5F01BEB8804ECAAE5438793038B88082560AD
            9F8293CC978005160F6173B6DC2D5F9B618CF98DF55AF02CDA4202A6C22222DE
            0F1685F2256088A74A2ECA6A77D0F65C3225546CD72646F5FBC019369580A9B0
            8688EBDE208F14C3416BE64AC0824B72997317BB8E1A9E2ADDA5BD81CC9180A9
            B086882927012B58FE05B73694ED353654241AEB21B88CDEAE123015D610114A
            C06EE80127F13D55B2D091FB81C83E88EED2C05E03BF1462DFB30C9280A9B086
            885002B6F47370924912B0D6D2A0F078FED00D1F19172AF21BEBB780EABA3D24
            602A2C212294802D7F1B9CC4F754C94063E525A9D0B36B97612913BFB19E0762
            037B48C0545842442801EB781F9C648604ACEE4A81F45874A34245621C5D2649
            C0545842C4D4908079C2812FF4BCCEDD72D188509158488A34D6D7FE853C6213
            09980A4B88980A12B0E092A23FEB7D6DC81B487E298958485A0EF736B3AD044C
            8515444C010958A08B5FAE6161EDF6C4F6C083205609B86BA0D5AD02EFF9641A
            4F5D226005118524607C4FA51F22E59AF0829D67586DDCEC7072B3F84C9680A9
            B082885002D6F52638C930099848B9C6DD7A683239F6D494308437EE92BC6486
            8A5DDABAC1BD50EEEA03E18B5D24602A2C20A23B873C8249C0FC5A4F952C0958
            63E541AE6DED18DB3B1D9036167CCE309D1D9E0BC90B156FD4264E4212B00752
            6D43BD04600111A1046CCB8BE024BEA7D2039172CDDAAFF3E3EAC681D1EBAC73
            93162A928D753F5486FB8104ECBBFF96A4774F01584044CB24600D87AF73CF59
            3A44C600654B58628864858A192D0153610111A104EC3E50E016F0549208961F
            E24A48DD25179062B5A7E6F271D66B92122AF21BEBE5E02B78E2DF93F0C6A902
            F3896889048CA278D5A035FF148552C185AC503152968450518F04CC0E836267
            603E11A104ACA41F9C945C099858B9E62D869E21B084E5065D2B12DDFCA56054
            73839804CC3F401CB1517F4FB18288664BC0DABCB9DC9DC6DDAD59BC1552EC50
            71E9A5C442454202B6FC9FE00C28015BF3AA6223984F44210918DF530942AE5C
            C382A7FD282B54ECD891480F9268ACDF0677528112B0876C35C6D974229A2A01
            8B5BA04C85B65CC34270D9FF3143C541FD8BF1FF45BB74504802F6581AEE2F45
            87E944149280F13D950804CA35EEF11A99964DA0AD9BF1AF4F1DD11B2A121230
            17E4BBAD25602A4C27A21E09D86DEF2AD21029D7442E0EC86A0BD9A1A2DEC5F8
            7A24609BFF5BD75BA52A4C2722DC2BBC111656129680050AF92D94D6FC1D3AFA
            869EF6CB8C628DBB64504FA8C897802D0783EE1FFF918E374A5D984D4428016B
            DA054EE27B2A363A2676705FB2F4F4599DCB4F828FFC84152AD6BE234DEF4C97
            80A9309B88C64BC05A4BAFF1CB351D85BF13B916059C5071B76C2491E9123015
            6613514802C6F7545488946B424BBB13957B97DDC99292C9868A7A24608FFC24
            C18F9062309988595EF248E110F090029E8A82E4966B98587D96D5D76BDF2343
            F54C9780A9309988464AC044164349966B5868CBEB63E44332A162C64BC05498
            4C44210918DF53211029D774F448976B5828C863D9DF569FE862FC8C9780A930
            99884649C044D435AE9A3E897CD63B2A70D286CF7B18FF2A1A2A3EA36D91649E
            044C85B944D42501F373433AC63CB9192C1DEA112FD778BE39D85D327A49E0CC
            27BE483C54241AEBEB61425F089E205B49C054984B442324606D5EFE0265B972
            4DE4FC02B500E39BB82C7072E2A162E361AD04AC173C305002A688DC5A5AC15C
            22265F022652AE69AD9429D7D457ED8AFDEC81797B045EC00E15F9233EF98DF5
            4580EAF69280A9309788C9968089285E379E1C9528D72C1AE989FF3338F780C0
            8B361C61A5EB1BFFC90E721D09980A53890825601B7F054E22C5CABD3483428E
            FFC72057AEF166B57713874235FD22639A2A998BF1D9D3E00909981F9E6B7709
            980A5389984C0958E3F5C3492ED7E4E70E6391972FFFBC4096D376B194B5189F
            310D9EDF588F8082BECD24602A4C252294802DFE129C2424014B7EB9A6B9FA4B
            5AB0B9F19D5E810B14E4F7EB0A151D095814A612514802C6F75462E51A19758D
            6741D697AC7F0F2EFF83C055EAF259A1026D1ABC23018BC24C2226470226B418
            AA345762954BBEDFC59355846A3E13A92AB2434574C4A72E09D8533F10FF7469
            023389980C0998C8F87FC9724DD1810181D392122A22D3E089BDC237BE026FD0
            F61230156612F1C1D7C8231158A7637A2A11754D7841BFC47A77A25CC3C2C63D
            5F0A9CC5A92A82119F4463FD69E874ED2F015361221173B3C9238523E03B6678
            AAD65E6F0FEF3DA6E6C9890229D730918C50919CDBE448C0A6602211A1042C08
            7D22550286EDD6085E2CB44039869517BF946E9475EC1209151B8E08878A6D3B
            35F6D3DD2C2201B3C95EE11A98484428012B03D30B689E4AC427CB956B561CEA
            D1F3217C915D02A162EB3073C467DC3478620756A4B1DE0C123ADB49C0549848
            4428015B02D60DE09EAAE1307FFD5452CB352C88858AEC119FB3A1A223019B86
            7944149280219E4A64FCBFBBC42B55AE59A063A1F42C82F3760A9C25162A3EA4
            5DFB9299123015E611713318F82C2201132AD750E7C96168AEDE2652AE616299
            505591132AAA233E1D09580CE611F13B2F9347BCF01B253C55BBC26FA184AB87
            8D29D7B0E09B3328A0E0E64C832F0DECADD446C9192A0153611E11A104EC2EE0
            AC49091817C6966B58A874F7089CC59906DF3FACADE5347C0DCE7181F93DF693
            80A9308D88CF83E24B25EC0F109E8A07C972CD5BB9A24ECDFFD0A7FC30B069F8
            90C0A5D8233EC9F7CD4C09980AD388F80C788E110958E569A16B4D416E8172ED
            E019D1538B96BD32A13CF3AB11EE8925559F0B5C8E3DB7291E4FFD0738941112
            3015A611F1BBA01BC09780B12057AEA93C272C4C6CAE9FBAD3EC277ECBA562E1
            45B748A8C81CF119074402D6B49B3C624309980AD3882824017373B5AED3E7A1
            E3FF699028D7F8D78FCE6A269F1BE6EF86DC79B447E0B2EC69F033C85409980A
            B388F8F48BE411BE048C06C9724DE12ED1728DFF91A3DAE6D9A3FBCD0C153356
            02A6C22C223E0EE44DD9D0FA2D14595FC21EFF4FA26254B8EDB7BA02B135F77D
            729EFBC264858A88046CE53FC823769480A9308B887A246008DC25B7482C50F6
            2EEE150E3A375DC5FB1559DF4D5AA8C8DC3848C96009980AB388084244BE040C
            426E9E9C4CB9E68E6AFAD8CBE7AEFD947B81CEED226FC50915911D584B41AA6F
            4709980A9388B8E537E4114402B681ADF633AC5CB3DAFB2BF6D477A150B1F44D
            EE39EC119F98046C2EA8D5D85102A6C224227EFF05F2085F02A681DC02653DE5
            1A2636FF931F2A86EBDFE05F8831E273E967F0DE4042B7FAF7E2DF425AC12422
            EA9180C5416EFC7F7EEE8468D1D7FFD0B8609FE2F13F7143C550C5CE44AA8A77
            C064264324602ACC21E2B3A008CB9780CDC2B0724DD19AD3E28E6E5D2869A122
            BE7150E64AC054984344210958191ED449956B3C0B02C2ADDDE6F23FCA7D0A91
            5031708BDE50B1E3631109D8E884DC3DA70DCC21A21E095814EE8E2B1273D193
            51AE61C2C850B1FD437052A648C0549843442109D843208A376C3114B35CC344
            D24245300D3E8325602A4C21A23E099881E59A57F43BB875252F73CF290E7F2A
            702562C42722015B026421F69480A93085885002B6AC1B9CA495801957AE5993
            CF4F3A98D874E535EE39CBFB65477C66B2044C85294414928085E28CA4EC3C39
            F172CD1DA1246806444245C1119F33D3E02B4F807F8412B04D2F287685294484
            12B03CB8F8685602E6AA3D9D9C7972248AD67893B43BC9C37F4F56A8189B068F
            48C06E0379DAFA5FF22F98A630838850021600BB0FCF4AC024D53561E3CA352C
            88848A628BF1A742C58C9680A93083884212B0CEE8C2015DE3FF85B079F425D1
            53C520122A8A4F83EF027A2FA505349AEC2A015361061185246077762B4A6BD3
            3689164ADCF87F1E80E23529D8FA7F0255C51C9150B1A3B7141AF6CC9180A930
            83882212B0B6DC0F36063E336681F26AEFEFAE18F3C9444245B1119F8DF00984
            12B055498C2D520D2610514802D63121B540B97C7EB7E8B9BA5A28A2100A1585
            467C42648E044C850944149280C9C0F4720D0B22A1A2D8DC2602192401536102
            11E15EE14B448618D12053AE59F5D235C15313C096C1D7B9E7888DF8D4004AC0
            EEF9ADEC35D208C613114AC07C628BF53018AAAED10D81C5F882A1621CA004EC
            E1045B42290DE389082560E1233A2F25A3AE497AB98685674FFE957B8E64A8E8
            C9010A8E2BD7255E9F6E309E8842123011088EFF57614CB98685A4878A500266
            CB41B133309E8850025627525A232153AEA9B06218429243C51220617FF4BF2C
            F854A6C170223E07BEBE4AF9FE80CC3CB984D535BA2132B7E9EEF70443452801
            7BD0C458C37C184E442109181B2D1E71C5EBFA3C0BDBB1EEA7F9EA18C15031A3
            24602A0C27229480DDCB1D89AD41CA956B58786E84BF365568C4674649C05418
            4E442109181532E3FF8516281B8E24CD6DCA2809980AA389282401A34166FCFF
            6657AAA8E893122A7E1B2CE0D9C09F9197CE309A885002D6F6B1E04BD70F58AC
            AED18BECEF09848AEC69F0992501536134118524601852BE5CC38248A8C81CF1
            193E4A1ED9FA43AB3F94B1309A8822123088946DA10843A4AAD83E420D27334B
            02A6C260220A49C048C8CC93B3B45CC34442233E334B02A6C26022EA9080C98C
            FF5FF573A9ED30CC4502233ED703F3676B09980A838908256035CCCA45FA956B
            58D03DE2F3262055B7B5044C85B14494948019324FCE52E8AC2A3E0644E5B696
            80A9309688521230A97972C95AA06C38F4848A99260153612C11252460898EFF
            4F59E43E261D2AAE00233BED2D0153612C1145256086CF93B314D2233E334D02
            A6C25022420958E73BC869C91AFF9FBA901CF19969123015861251480296CCF1
            FFA90B99119FDE52526E647309980A4389C8978079B372923BFE3F752130E2B3
            D0156D40578052ABCD25602A0C25224F0266BF720D0BC2233E334E02A6C24822
            722460CDBD5EF1797212E3FF53174F9F1598DB74CB9B777493076D2E01536124
            115912B0D45CA06C384442C52DA02A607709980A2389082560E5BD53FF6FEF72
            0D1302A12280DD25602A8C2422081143FDD1B2AD29E3FF531622A12201BB4BC0
            5418484428016BDF36F93FB5D77B44AF90D0F8FFD485C8627C0DEC2E01536120
            119F0445D8B2D3A68EFF4F5D888CF89C452684884612114AC0167F6507C56B52
            20132ADA5E02A6C23822BA3CFA5F9B46EA1ABD1099DB340DDB4BC0541847C4CD
            BA9F631B956B58100E15C72C9E1A600A8C23E203C24FBC165BD3BE85220C91AA
            622648C0541847C42A99783C061B966B981098069F011230158611F1391D5F9F
            71E3FF531602A1A2FD25602A0C23E27D7F977D858DCB352CF042C50C9080A930
            8C88DF936395DDCB352CB017E36780044C856144940A118B56FD42D756247601
            6B6E530648C0541845C44D125BEA6548B986859C7FA1DABD0C9080A9308A880F
            0B0F8B4ECDD935A6E3B9619C701912221A46C427C49E63FF03B650BC26055B07
            B050311324602A8C2262B1482B35BD16281B0F2C54CC0409980A8388F8E8ABFC
            7332B45CC302320D3E1324602A0C22E293BCB82F93CB352C90233E334202A6C2
            2022B6B317945B3FFE3F75A15D8C9F11123015C610D19DC3FAD7345FA06C38E2
            E7366584044C853144DCCA28C23AE51A2EE2A6C18F674AA1DF1822522560A935
            FE3F75110B15334302A6C21822DE8F374F9D168A38A61AD099210153610811D7
            BD811DB5D90265C3A1868A99210153610811110958A6295E9381ECEFBD9C21FD
            3DC52022020958D1325B2E50361CCFDA7D09D92C0C2122210173CA350EB83082
            881A09980DE6C93930014610314E02E6946B1C88C10822CE48C01C758D035118
            41C469099853AE71200E038818958039E51A07523080884FBE94CEE3FF1D5803
            0388D8AE38E51A07B2308088CF3B8A5707D2307A077B070E84E010D1414AC021
            A2839480434407290187880E52020E111DA404FE7FD851A4B4C9853624000000
            0049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 583.225352080000000000
          Top = 0.975700320000000000
          Width = 43.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data -')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 627.816901410000000000
          Top = 1.212943330000000000
          Width = 89.347404930000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] ')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 185.211267610000000000
          Top = 212.914543660000000000
          Width = 367.605633800000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 326.760563390000000000
          Top = 215.731445080000000000
          Width = 67.727686620000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Assinatura')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 33.919251390000000000
          Width = 718.110236220000000000
          Height = 24.531452820000000000
          Frame.Typ = []
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = -0.000000010000000000
          Top = 261.384040150000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 652.112676070000000000
          Top = 228.401883090000000000
          Width = 64.206559860000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 26.760563370000000000
          Top = 36.667627820000000000
          Width = 54.122052820000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBSaida
          DataSetName = 'frxSaida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxSaida."ID"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 0.704225350000000000
          Top = 36.736152820000000000
          Width = 24.741771130000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ID:')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'Client.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 43879.423307939820000000
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 992
    Top = 360
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 1000
    Top = 496
  end
  object FSiGrowl: TUniFSiGrowl
    Messages = 'Hello World!'
    Types = Info
    AlertSize = Regular
    Icon = linecons_lab
    Delay = 2500
    Spacing = 20
    OffsetX = 20
    OffsetY = 20
    EnableAnimation = True
    EnterAnimation = fadeInDown
    ExitAnimation = bounceOut
    PlacementX = right
    PlacementY = top
    Left = 896
    Top = 424
  end
  object Toast: TUniFSToast
    TitleSize = 13
    TitleLineHeight = 0
    MsgSize = 12
    MsgLineHeight = 0
    Theme = Dark
    ImageWidth = 0
    MaxWidth = 0
    zIndex = 99999
    Layout = SmallInt
    Balloon = False
    Close = True
    CloseOnEscape = False
    CloseOnClick = False
    RTL = False
    Position = bottomRight
    TimeOut = 5000
    Drag = True
    Overlay = False
    ToastOnce = False
    PauseOnHover = True
    ResetOnHover = False
    ProgressBar = True
    ProgressBarColor = 'rgb(0, 255, 184)'
    ScreenMask.Enabled = False
    Animateinside = True
    TransitionIn = fadeInUp
    TransitionOut = fadeOut
    TransitionInMobile = fadeInUp
    TransitionOutMobile = fadeOutDown
    ButtonTextYes = 'Confirma'
    ButtonTextNo = 'Cancela'
    Left = 888
    Top = 211
  end
end
