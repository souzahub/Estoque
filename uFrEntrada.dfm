object frEntrada: TfrEntrada
  Left = 0
  Top = 0
  Width = 1233
  Height = 630
  OnCreate = UniFrameCreate
  TabOrder = 0
  object PnUsuario: TUniPanel
    Left = 0
    Top = 42
    Width = 1233
    Height = 588
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = 'PnUsuario'
    object PageCadastro: TUniPageControl
      Left = 1
      Top = 1
      Width = 1231
      Height = 586
      Hint = ''
      ActivePage = Tab1
      Align = alClient
      TabOrder = 1
      object Tab1: TUniTabSheet
        Hint = ''
        Caption = 'Entrada'
        object UniDBGrid1: TUniDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 1213
          Height = 548
          Hint = ''
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BodyRTL = False
          DataSource = dsEntrada
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          BorderStyle = ubsNone
          Align = alClient
          TabOrder = 0
          ParentColor = False
          Color = clWindow
          Columns = <
            item
              FieldName = 'CPRODUTO'
              Title.Caption = 'C'#211'D'
              Width = 58
              Alignment = taLeftJustify
            end
            item
              FieldName = 'ENTRADA'
              Title.Caption = 'ENTRADA'
              Width = 81
            end
            item
              FieldName = 'NPRODUTO'
              Title.Caption = 'PRODUTO'
              Width = 411
            end
            item
              FieldName = 'TOTALITENS'
              Title.Caption = 'TOTAL ITENS'
              Width = 81
              Alignment = taCenter
            end
            item
              FieldName = 'VALORTOTAL'
              Title.Caption = 'TOTAL R$'
              Width = 68
            end
            item
              FieldName = 'TIPO'
              Title.Caption = 'TIPO'
              Width = 52
              Alignment = taLeftJustify
            end
            item
              FieldName = 'CUSTO'
              Title.Caption = 'CUSTO R$'
              Width = 66
            end
            item
              FieldName = 'FORNECEDOR'
              Title.Caption = 'FORNECEDOR'
              Width = 234
            end
            item
              FieldName = 'LOCALPRODUTO'
              Title.Caption = 'LOCAL DO PRODUTO'
              Width = 178
            end
            item
              FieldName = 'PATRIMONIO'
              Title.Alignment = taCenter
              Title.Caption = 'PATRIM'#212'NIO'
              Width = 75
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
          Width = 1223
          Height = 558
          Hint = ''
          Align = alClient
          Color = clBtnHighlight
          TabOrder = 0
          object UniPanel3: TUniPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1215
            Height = 550
            Hint = ''
            AutoScroll = True
            Align = alClient
            TabOrder = 0
            Caption = ''
            Color = clNone
            LayoutConfig.Cls = 'cor1'
            ScrollHeight = 582
            ScrollWidth = 1215
            object edDataEntrada: TUniDateTimePicker
              Left = 32
              Top = 39
              Width = 120
              Hint = ''
              DateTime = 43854.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 1
              Color = 12189695
            end
            object lbEmissao: TUniLabel
              Left = 32
              Top = 20
              Width = 91
              Height = 13
              Hint = ''
              Caption = 'Data da Entrada'
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 2
            end
            object uPn1: TUniPanel
              Left = 32
              Top = 84
              Width = 833
              Height = 197
              Hint = ''
              TabOrder = 3
              BorderStyle = ubsFrameLowered
              Caption = ''
              Color = clWhite
              LayoutConfig.Cls = 'borda'
              object edCodProduto: TUniEdit
                Left = 16
                Top = 132
                Width = 59
                Hint = ''
                Text = ''
                TabOrder = 1
                Color = 12189695
                ReadOnly = True
              end
              object lbCodProduto: TUniLabel
                Left = 16
                Top = 113
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
                Top = 113
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
                Top = 132
                Width = 553
                Hint = ''
                BorderStyle = ubsNone
                Text = ''
                TabOrder = 4
                Color = 15453368
                ReadOnly = True
              end
              object edFornec: TUniEdit
                Left = 81
                Top = 44
                Width = 553
                Hint = ''
                BorderStyle = ubsNone
                Text = ''
                TabOrder = 5
                Color = 15453368
                ReadOnly = True
              end
              object lbFornec: TUniLabel
                Left = 92
                Top = 49
                Width = 38
                Height = 13
                Hint = ''
                Visible = False
                Caption = 'Fornec'
                ParentFont = False
                Font.Color = clBlack
                Font.Style = [fsBold]
                TabOrder = 6
              end
              object lbFornecedor: TUniLabel
                Left = 81
                Top = 25
                Width = 64
                Height = 13
                Hint = ''
                Caption = 'Fornecedor'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 7
              end
              object edCodFornec: TUniEdit
                Left = 16
                Top = 44
                Width = 59
                Hint = ''
                Text = ''
                TabOrder = 8
                Color = 12189695
                ReadOnly = True
              end
              object lbCodFornec: TUniLabel
                Left = 16
                Top = 25
                Width = 21
                Height = 13
                Hint = ''
                Caption = 'C'#243'd'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 9
              end
              object lbProduto: TUniLabel
                Left = 92
                Top = 136
                Width = 45
                Height = 13
                Hint = ''
                Visible = False
                Caption = 'Produto'
                ParentFont = False
                Font.Color = clBlack
                Font.Style = [fsBold]
                TabOrder = 10
              end
              object btFornec: TUniBitBtn
                Left = 647
                Top = 44
                Width = 26
                Height = 26
                Hint = ''
                Caption = ''
                TabOrder = 11
                Images = UniNativeImageList1
                ImageIndex = 13
                LayoutConfig.Cls = 'circulo'
                OnClick = btFornecClick
              end
              object btCliente: TUniBitBtn
                Left = 647
                Top = 132
                Width = 26
                Height = 26
                Hint = ''
                Caption = ''
                TabOrder = 12
                Images = UniNativeImageList1
                ImageIndex = 13
                LayoutConfig.Cls = 'circulo'
                OnClick = btClienteClick
              end
            end
            object UniPanel1: TUniPanel
              Left = 32
              Top = 312
              Width = 833
              Height = 270
              Hint = ''
              AutoScroll = True
              ParentFont = False
              TabOrder = 4
              BorderStyle = ubsFrameLowered
              Caption = ''
              Color = clWhite
              LayoutConfig.Cls = 'borda'
              ScrollHeight = 270
              ScrollWidth = 833
              object lbQuantidade: TUniLabel
                Left = 21
                Top = 24
                Width = 65
                Height = 13
                Hint = ''
                Caption = 'Quantidade'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 1
              end
              object seQuantidade: TUniSpinEdit
                Left = 21
                Top = 43
                Width = 80
                Height = 30
                Hint = ''
                HelpType = htKeyword
                BodyRTL = False
                MaxValue = 1500
                TabOrder = 2
                ParentFont = False
                Font.Height = -13
                Font.Orientation = 1
                FieldLabelAlign = laRight
                OnChange = seQuantidadeChange
              end
              object lbPreco: TUniLabel
                Left = 21
                Top = 85
                Width = 32
                Height = 13
                Hint = ''
                Caption = 'Pre'#231'o'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 3
              end
              object edValorTotal: TUniFormattedNumberEdit
                Left = 21
                Top = 160
                Width = 111
                Hint = ''
                TabOrder = 4
                Color = 12189695
                ReadOnly = True
                DecimalSeparator = ','
                ThousandSeparator = '.'
              end
              object UniLabel2: TUniLabel
                Left = 21
                Top = 141
                Width = 82
                Height = 13
                Hint = ''
                Caption = 'Valor Total R$ '
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 5
              end
              object edPreco: TUniFormattedNumberEdit
                Left = 21
                Top = 104
                Width = 111
                Hint = ''
                ParentFont = False
                Font.Color = clRed
                TabOrder = 6
                DecimalSeparator = ','
                ThousandSeparator = '.'
                OnChange = edPrecoChange
              end
              object edLocal: TUniEdit
                Left = 198
                Top = 43
                Width = 435
                Hint = ''
                CharCase = ecUpperCase
                MaxLength = 80
                Text = 'LOCAL'
                TabOrder = 7
                ClientEvents.ExtEvents.Strings = (
                  
                    'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
                    '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
                    '50,'#13#10'   hideDelay: 50,'#13#10'   html: "Localiza'#231#227'o onde o produto ser' +
                    #225' guardado no Estoque &nbsp"'#13#10'  });'#13#10'}')
              end
              object lbLocal: TUniLabel
                Left = 198
                Top = 24
                Width = 91
                Height = 13
                Hint = ''
                Caption = 'local do produto'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 8
              end
              object UniLabel3: TUniLabel
                Left = 21
                Top = 200
                Width = 62
                Height = 13
                Hint = ''
                Caption = 'Patrimonio'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 9
              end
              object edPatrimonio: TUniEdit
                Left = 21
                Top = 219
                Width = 111
                Hint = ''
                CharCase = ecUpperCase
                MaxLength = 15
                Text = 'PATRIMONIO'
                TabOrder = 10
                ClientEvents.ExtEvents.Strings = (
                  
                    'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
                    '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
                    '50,'#13#10'   hideDelay: 50,'#13#10'   html: "Numero do Patrim'#244'nio do produt' +
                    'o"'#13#10'  });'#13#10'}')
              end
              object UniLabel1: TUniLabel
                Left = 198
                Top = 85
                Width = 89
                Height = 13
                Hint = ''
                Caption = 'Tipo do Produto'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 11
              end
              object uniRGTipo: TUniRadioGroup
                Left = 198
                Top = 104
                Width = 91
                Height = 62
                Hint = ''
                Items.Strings = (
                  'NOVO'
                  'USADO')
                LayoutConfig.Cls = 'cor2'
                Caption = ''
                TabOrder = 12
                ParentFont = False
                Font.Color = clTeal
                Font.Style = [fsBold]
                ParentColor = False
                Color = clWhite
              end
            end
          end
        end
      end
    end
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 1233
    Height = 42
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -20
    Font.Style = [fsBold]
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = 'Entrada do Produto'
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
      Left = 914
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
      TabOrder = 5
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
      TabOrder = 6
      ClientEvents.Enabled = False
      OnClick = BtIncClick
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 696
    Top = 8
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
  object dsEntrada: TDataSource
    DataSet = dmDados.RDWEntrada
    Left = 777
    Top = 9
  end
  object dsEstoque: TDataSource
    DataSet = dmDados.RDWEstoque
    Left = 841
    Top = 17
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
    Left = 596
    Top = 10
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
    Left = 520
    Top = 11
  end
end
