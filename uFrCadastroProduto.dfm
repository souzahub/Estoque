object frCadastroProduto: TfrCadastroProduto
  Left = 0
  Top = 0
  Width = 1050
  Height = 639
  OnCreate = UniFrameCreate
  TabOrder = 0
  object PnUsuario: TUniPanel
    Left = 0
    Top = 42
    Width = 1050
    Height = 597
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = 'PnUsuario'
    object PageCadastro: TUniPageControl
      Left = 1
      Top = 1
      Width = 1048
      Height = 595
      Hint = ''
      ActivePage = Tab1
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
          Height = 557
          Hint = ''
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BodyRTL = False
          DataSource = dsProdutos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          BorderStyle = ubsNone
          Align = alClient
          TabOrder = 0
          ParentColor = False
          Color = clWindow
          OnBodyDblClick = UniDBGrid1BodyDblClick
          OnCellClick = UniDBGrid1CellClick
          Columns = <
            item
              FieldName = 'ID'
              Title.Caption = 'C'#211'D'
              Width = 76
            end
            item
              FieldName = 'PRODUTO'
              Title.Caption = 'PRODUTO'
              Width = 685
            end
            item
              FieldName = 'GRUPO'
              Title.Caption = 'GRUPO'
              Width = 225
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
          Height = 561
          Hint = ''
          AutoScroll = True
          Align = alClient
          TabOrder = 0
          Caption = ''
          Color = cl3DLight
          LayoutConfig.Cls = 'cor1'
          ScrollHeight = 561
          ScrollWidth = 1034
          object UniContainerPanel1: TUniContainerPanel
            Left = 34
            Top = 46
            Width = 919
            Height = 512
            Hint = ''
            ParentColor = False
            Color = clWhite
            TabOrder = 1
            LayoutConfig.Cls = 'cor1'
            object lbGrupo: TUniLabel
              Left = 40
              Top = 24
              Width = 107
              Height = 13
              Hint = ''
              Caption = 'Grupo Pertencente'
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 1
            end
            object dbCbGrupos: TUniFSComboBox
              Left = 40
              Top = 43
              Width = 232
              Hint = ''
              ParentShowHint = False
              Text = 'dbCbGrupos'
              TabOrder = 2
              AnyMatch = True
              IconItems = <>
              ReadOnlyMode = urmNotEditable
              Value = '-1'
            end
            object UniLabel6: TUniLabel
              Left = 42
              Top = 93
              Width = 32
              Height = 13
              Hint = ''
              Caption = 'Nome'
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 3
            end
            object edNome: TUniEdit
              Left = 40
              Top = 112
              Width = 384
              Hint = ''
              CharCase = ecUpperCase
              MaxLength = 50
              Text = 'UNINOME'
              TabOrder = 4
            end
            object tgl1: TUniFSToggle
              Left = 324
              Top = 43
              Width = 100
              Height = 25
              Hint = ''
              ThemeOn = Success
              ThemeOff = Black
              TitleOn = 'ON'
              TitleOff = 'OFF'
              OnToggled = tgl1Toggled
            end
            object UniLabel1: TUniLabel
              Left = 332
              Top = 24
              Width = 73
              Height = 13
              Hint = ''
              Caption = 'Incluir Grupo'
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 6
            end
            object sbExcluir: TUniFSButton
              Left = 521
              Top = 87
              Width = 128
              Height = 34
              Hint = ''
              StyleButton = Danger
              BadgeText.Text = '0'
              BadgeText.TextColor = '#FFFFFF'
              BadgeText.TextSize = 10
              BadgeText.TextStyle = 'bold'
              BadgeText.BackgroundColor = '#D50000'
              Caption = 'Excluir'
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              TabOrder = 7
              OnClick = sbExcluirClick
            end
            object sbAnexar: TUniFSButton
              AlignWithMargins = True
              Left = 520
              Top = 34
              Width = 129
              Height = 31
              Hint = ''
              Margins.Left = 6
              Margins.Top = 6
              Margins.Right = 4
              Margins.Bottom = 6
              StyleButton = Primary
              BadgeText.Text = '0'
              BadgeText.TextColor = '#FFFFFF'
              BadgeText.TextSize = 10
              BadgeText.TextStyle = 'bold'
              BadgeText.BackgroundColor = '#D50000'
              Caption = 'Anexar arquivos'
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Roboto'
              TabOrder = 8
              Images = UniNativeImageList1
              ImageIndex = 10
              OnClick = sbAnexarClick
            end
            object UniContainerPanel2: TUniContainerPanel
              Left = 655
              Top = 24
              Width = 256
              Height = 512
              Hint = ''
              ParentColor = False
              TabOrder = 9
              object UniListBox1: TUniListBox
                Left = 3
                Top = 3
                Width = 256
                Height = 512
                Hint = ''
                TabOrder = 1
                LayoutConfig.Cls = 'color1'
              end
            end
            object UniLabel2: TUniLabel
              Left = 80
              Top = 232
              Width = 61
              Height = 16
              Hint = ''
              Enabled = False
              Visible = False
              TextConversion = txtHTML
              Caption = 'UniLabel2'
              ParentFont = False
              Font.Color = clHighlight
              Font.Height = -13
              Font.Style = [fsBold]
              ParentColor = False
              Color = clBtnShadow
              TabOrder = 10
            end
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
    Caption = 'Cadastro de Produto'
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
      Left = 741
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
      ScreenMask.Enabled = True
      ScreenMask.Message = 'Carregando...'
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
      ScreenMask.Enabled = True
      ScreenMask.Message = 'Carregando...'
      OnClick = BtIncClick
    end
  end
  object dsProdutos: TDataSource
    DataSet = dmDados.RDWCAD_PRODUTO
    Left = 476
    Top = 10
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 296
    Top = 8
    Images = {
      1500000000000000060600000073613B66613B00000000060B0000006465736B
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
      66613B00000000061000000077696E646F772D636C6F73653B66613B}
  end
  object UniScreenMask1: TUniScreenMask
    Enabled = True
    DisplayMessage = ' Buscando . . .'
    Left = 384
    Top = 8
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'Sim'
    CancelButtonText = 'N'#227'o'
    ConfirmButtonColor = clMaroon
    CancelButtonColor = 6835774
    Width = 410
    Padding = 20
    OnDismiss = UniSweetAlert1Dismiss
    OnConfirm = UniSweetAlert1Confirm
    Left = 636
    Top = 10
  end
  object dsGrupos: TDataSource
    DataSet = dmDados.RDWGrupos
    Left = 556
    Top = 10
  end
  object UniFileUpload: TUniFileUpload
    Title = 'Busca de Arquivos'
    TimeoutMS = 5000
    Messages.Uploading = 'Enviando'
    Messages.PleaseWait = 'Aguarde...'
    Messages.Cancel = 'Cancelar'
    Messages.Processing = 'Processando...'
    Messages.UploadError = 'Erro no Envio'
    Messages.Upload = 'Enviar'
    Messages.NoFileError = 'Por favor, selecione o arquivo'
    Messages.BrowseText = 'Buscar'
    Messages.UploadTimeout = 'Ocorreu um tempo limite ...'
    Messages.MaxSizeError = 'O arquivo '#233' maior que o tamanho m'#225'ximo permitido'
    Messages.MaxFilesError = 'Voc'#234' pode enviar no m'#225'ximo% d arquivos.'
    Overwrite = True
    Width = 280
    ImageIndex = 13
    EraseCacheAfterCompleted = True
    OnCompleted = UniFileUploadCompleted
    Left = 230
    Top = 64
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
    Left = 224
    Top = 11
  end
  object UniFileUploadEditar: TUniFileUpload
    Title = 'Busca de Arquivos'
    TimeoutMS = 5000
    Messages.Uploading = 'Enviando'
    Messages.PleaseWait = 'Aguarde...'
    Messages.Cancel = 'Cancelar'
    Messages.Processing = 'Processando...'
    Messages.UploadError = 'Erro no Envio'
    Messages.Upload = 'Enviar'
    Messages.NoFileError = 'Por favor, selecione o arquivo'
    Messages.BrowseText = 'Buscar'
    Messages.UploadTimeout = 'Ocorreu um tempo limite ...'
    Messages.MaxSizeError = 'O arquivo '#233' maior que o tamanho m'#225'ximo permitido'
    Messages.MaxFilesError = 'Voc'#234' pode enviar no m'#225'ximo% d arquivos.'
    Overwrite = True
    Width = 280
    ImageIndex = 13
    EraseCacheAfterCompleted = True
    OnCompleted = UniFileUploadEditarCompleted
    Left = 310
    Top = 64
  end
end
