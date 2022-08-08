object frCadastroFornec: TfrCadastroFornec
  Left = 0
  Top = 0
  Width = 1050
  Height = 600
  OnCreate = UniFrameCreate
  TabOrder = 0
  object PnUsuario: TUniPanel
    Left = 0
    Top = 42
    Width = 1050
    Height = 558
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = 'PnUsuario'
    object PageCadastro: TUniPageControl
      Left = 1
      Top = 1
      Width = 1048
      Height = 556
      Hint = ''
      ActivePage = Tab2
      Align = alClient
      TabOrder = 1
      object Tab1: TUniTabSheet
        Hint = ''
        Caption = 'Consulta'
        object UniDBGrid1: TUniDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 1030
          Height = 518
          Hint = ''
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BodyRTL = False
          DataSource = dsCadastroFornec
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          BorderStyle = ubsNone
          Align = alClient
          TabOrder = 0
          ParentColor = False
          Color = clWindow
          OnDblClick = UniDBGrid1DblClick
          Columns = <
            item
              FieldName = 'ID'
              Title.Caption = 'C'#211'D'
              Width = 47
            end
            item
              FieldName = 'NOME'
              Title.Caption = 'NOME'
              Width = 311
            end
            item
              FieldName = 'CIDADE'
              Title.Caption = 'CIDADE'
              Width = 156
            end
            item
              FieldName = 'BAIRRO'
              Title.Caption = 'BAIRRO'
              Width = 174
            end
            item
              FieldName = 'ENDERECO'
              Title.Caption = 'ENDERECO'
              Width = 424
            end>
        end
      end
      object Tab2: TUniTabSheet
        Hint = ''
        Caption = 'Ficha'
        object UniPanel3: TUniPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1034
          Height = 522
          Hint = ''
          AutoScroll = True
          Align = alClient
          TabOrder = 0
          Caption = ''
          Color = clNone
          LayoutConfig.Cls = 'cor1'
          ExplicitLeft = 37
          ScrollHeight = 522
          ScrollWidth = 1034
          object edNome: TUniEdit
            Left = 43
            Top = 56
            Width = 368
            Hint = ''
            CharCase = ecUpperCase
            MaxLength = 40
            Text = 'UNINOME'
            TabOrder = 1
            InputMask.MaskChar = #0
            InputMask.RemoveMaskChar = False
          end
          object UniLabel6: TUniLabel
            Left = 44
            Top = 37
            Width = 32
            Height = 13
            Hint = ''
            Caption = 'Nome'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 10
          end
          object edCnpj: TUniEdit
            Left = 442
            Top = 56
            Width = 145
            Hint = ''
            MaxLength = 14
            Text = 'edCnpj'
            TabOrder = 2
            ClientEvents.ExtEvents.Strings = (
              
                'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
                '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
                '50,'#13#10'   hideDelay: 50,'#13#10'   html: "Aten'#231#227'o!&nbsp<b>deve conter 14' +
                ' digitos &nbsp </b> <i class='#39'far fa-lg fas fa-exclamation-trian' +
                'gle'#39'></i>"'#13#10'  });'#13#10'}')
            InputMask.Mask = '99999999999999'
            InputMask.MaskChar = ' '
            InputMask.RemoveWhiteSpace = True
            OnExit = edCnpjExit
          end
          object lbCnpj: TUniLabel
            Left = 442
            Top = 37
            Width = 25
            Height = 13
            Hint = ''
            Caption = 'Cnpj'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 11
          end
          object edFone: TUniEdit
            Left = 440
            Top = 128
            Width = 147
            Hint = ''
            MaxLength = 15
            Text = 'edFone'
            TabOrder = 5
            ClearButton = True
            InputMask.Mask = '99999999999'
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
          end
          object lbFone: TUniLabel
            Left = 440
            Top = 109
            Width = 49
            Height = 13
            Hint = ''
            Caption = 'Telefone'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 12
          end
          object edCep: TUniEdit
            Left = 299
            Top = 128
            Width = 110
            Hint = ''
            Text = 'edCep'
            TabOrder = 13
            InputMask.Mask = '99.999-999'
            InputMask.UnmaskText = True
          end
          object lbCep: TUniLabel
            Left = 299
            Top = 109
            Width = 20
            Height = 13
            Hint = ''
            Caption = 'CEP'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 14
          end
          object edUf: TUniEdit
            Left = 250
            Top = 128
            Width = 31
            Hint = ''
            CharCase = ecUpperCase
            Text = 'UEDITUF'
            TabOrder = 4
            InputMask.Mask = 'aa'
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
          end
          object lbUf: TUniLabel
            Left = 253
            Top = 109
            Width = 14
            Height = 13
            Hint = ''
            Caption = 'UF'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 15
          end
          object edCidade: TUniEdit
            Left = 41
            Top = 128
            Width = 192
            Hint = ''
            CharCase = ecUpperCase
            MaxLength = 30
            Text = 'UEDITCIDADE'
            TabOrder = 3
          end
          object lbCidade: TUniLabel
            Left = 41
            Top = 109
            Width = 38
            Height = 13
            Hint = ''
            Caption = 'Cidade'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 16
          end
          object lbEndereco: TUniLabel
            Left = 42
            Top = 181
            Width = 52
            Height = 13
            Hint = ''
            Caption = 'Endere'#231'o'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 9
          end
          object edEndereco: TUniEdit
            Left = 41
            Top = 200
            Width = 368
            Hint = ''
            BodyRTL = False
            CharCase = ecUpperCase
            MaxLength = 40
            Text = 'UNIEDIT1'
            TabOrder = 6
          end
          object edBairro: TUniEdit
            Left = 440
            Top = 200
            Width = 147
            Hint = ''
            CharCase = ecUpperCase
            MaxLength = 30
            Text = 'UNIEDIT1'
            TabOrder = 7
          end
          object lbBairro: TUniLabel
            Left = 440
            Top = 181
            Width = 34
            Height = 13
            Hint = ''
            Caption = 'Bairro'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 17
          end
          object edEmail: TUniEdit
            Left = 41
            Top = 272
            Width = 546
            Hint = ''
            CharCase = ecLowerCase
            MaxLength = 30
            Text = 'uniedit1'
            TabOrder = 8
          end
          object lbEmail: TUniLabel
            Left = 41
            Top = 253
            Width = 30
            Height = 13
            Hint = ''
            Caption = 'Email'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 18
          end
          object UniBitBtn2: TUniBitBtn
            Left = 591
            Top = 56
            Width = 72
            Height = 22
            Hint = ''
            Enabled = False
            Visible = False
            Caption = 'Validar'
            ParentFont = False
            Font.Color = clBlack
            TabOrder = 19
            Images = UniNativeImageList1
            LayoutConfig.Cls = 'borda'
            OnClick = UniBitBtn2Click
          end
          object lvMsg: TUniLabel
            Left = 506
            Top = 17
            Width = 25
            Height = 13
            Hint = ''
            Caption = 'Cnpj'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 20
          end
        end
      end
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 1050
    Height = 42
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -20
    Font.Style = [fsBold]
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = 'Cadastro de Fornecedor'
    Color = clNone
    object UniLabel8: TUniLabel
      Left = 784
      Top = 24
      Width = 6
      Height = 24
      Hint = ''
      Visible = False
      Caption = '.'
      TabOrder = 1
    end
    object EdPesquisar: TUniEdit
      AlignWithMargins = True
      Left = 731
      Top = 5
      Width = 299
      Height = 35
      Hint = ''
      Margins.Top = 5
      Margins.Right = 20
      Margins.Bottom = 2
      ParentShowHint = False
      CharCase = ecUpperCase
      MaxLength = 40
      Text = ''
      ParentFont = False
      Font.Color = clBlack
      Font.Style = [fsBold]
      Align = alRight
      TabOrder = 2
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
      Left = 156
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
      TabOrder = 3
      ClientEvents.Enabled = False
      OnClick = BtCanClick
    end
    object BtGrv: TUniFSButton
      AlignWithMargins = True
      Left = 118
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
      TabOrder = 4
      ClientEvents.Enabled = False
      OnClick = BtGrvClick
    end
    object BtExc: TUniFSButton
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
      Caption = '<i class="far fa-trash-alt"></i>'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      TabOrder = 5
      ClientEvents.Enabled = False
      OnClick = BtExcClick
    end
    object BtAlt: TUniFSButton
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
      Caption = '<i class="far fa-edit"></i>'
      Align = alLeft
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      TabOrder = 6
      ClientEvents.Enabled = False
      OnClick = BtAltClick
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
      TabOrder = 7
      ClientEvents.Enabled = False
      OnClick = BtIncClick
    end
  end
  object dsCadastroFornec: TDataSource
    DataSet = dmDados.RDWFornec
    Left = 572
    Top = 10
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 680
    Top = 16
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
  object UniScreenMask1: TUniScreenMask
    Enabled = True
    DisplayMessage = ' Buscando . . .'
    Left = 784
    Top = 16
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
    Left = 468
    Top = 10
  end
  object frxReport1: TfrxReport
    Version = '6.5.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Microsoft Print to PDF'
    PrintOptions.PrintOnSheet = 9
    ReportOptions.CreateDate = 43949.673707465300000000
    ReportOptions.LastChange = 44000.594697187500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 416
    Datasets = <
      item
        DataSet = frxrelatfornec
        DataSetName = 'frxFornec'
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
      Frame.Typ = []
      MirrorMode = []
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      ResetPageNumbers = True
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 105.582734360000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxrelatfornec
        DataSetName = 'frxFornec'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 49.549295780000000000
          Top = 29.720595910000000000
          Width = 48.488250000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxrelatfornec
          DataSetName = 'frxFornec'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxFornec."ID"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 154.436619720000000000
          Top = 48.680936010000000000
          Width = 510.755855630000000000
          Height = 16.897650000000000000
          DataField = 'NOME'
          DataSet = frxrelatfornec
          DataSetName = 'frxFornec'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxFornec."NOME"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 8.887323940000000000
          Top = 31.899587320000000000
          Width = 42.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 7.407113950000000000
          Top = 47.857333800000000000
          Width = 147.854447180000000000
          Height = 19.601875350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do Fornecedor:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 7.816901410000000000
          Top = 71.387062400000000000
          Width = 72.769940140000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 79.577464790000000000
          Top = 73.091287750000000000
          Width = 590.333320430000000000
          Height = 16.897650000000000000
          DataSet = frxrelatfornec
          DataSetName = 'frxFornec'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxFornec."ENDERECO"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 9.154929600000000000
          Top = 97.132030120000000000
          Width = 703.521126760000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 239.140845060000000000
          Top = 5.558536880000000000
          Width = 221.631362980000000000
          Height = 25.302342260000000000
          DataSetName = 'frxDBDatasetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio Fornecedor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 641.535211270000000000
          Top = 5.836420090000000000
          Width = 79.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] ')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 596.239436620000000000
          Top = 5.836420100000000000
          Width = 43.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data -')
        end
      end
    end
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 40
    Top = 496
  end
  object frxrelatfornec: TfrxDBDataset
    UserName = 'frxFornec'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'FONE=FONE'
      'EMAIL=EMAIL'
      'NOME=NOME'
      'CNPJ=CNPJ'
      'ID=ID')
    BCDToCurrency = False
    Left = 128
    Top = 496
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
    Left = 40
    Top = 344
  end
  object ACBrValidador1: TACBrValidador
    TipoDocto = docCNPJ
    IgnorarChar = './-'
    Left = 744
    Top = 272
  end
end
