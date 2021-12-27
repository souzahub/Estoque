object frBalanco: TfrBalanco
  Left = 0
  Top = 0
  Width = 1116
  Height = 636
  OnCreate = UniFrameCreate
  TabOrder = 0
  object PnUsuario: TUniPanel
    Left = 0
    Top = 45
    Width = 1116
    Height = 591
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = 'PnUsuario'
    object PageCadastro: TUniPageControl
      Left = 1
      Top = 1
      Width = 1114
      Height = 589
      Hint = ''
      ActivePage = Tab1
      Align = alClient
      TabOrder = 1
      object Tab1: TUniTabSheet
        Hint = ''
        Caption = 'Consulta'
        OnBeforeActivate = Tab1BeforeActivate
        object UniDBGrid1: TUniDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 1096
          Height = 551
          Hint = ''
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BodyRTL = False
          DataSource = dsBalanco
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
          WebOptions.PageSize = 50
          LoadMask.Message = 'Carregando...'
          ForceFit = True
          BorderStyle = ubsNone
          Align = alClient
          TabOrder = 0
          ParentColor = False
          Color = clWindow
          OnCellClick = UniDBGrid1CellClick
          Columns = <
            item
              FieldName = 'ID'
              Title.Caption = 'C'#211'D'
              Width = 46
            end
            item
              FieldName = 'INFO'
              Title.Alignment = taCenter
              Title.Caption = '-'
              Width = 36
              Alignment = taCenter
            end
            item
              FieldName = 'PRODUTO'
              Title.Caption = 'PRODUTO'
              Width = 588
            end
            item
              FieldName = 'BALANCAO'
              Title.Caption = 'BALAN'#199'O'
              Title.Font.Color = clBlack
              Width = 62
              Font.Color = clMaroon
              Font.Height = -17
              Font.Style = [fsBold]
              Alignment = taCenter
            end
            item
              FieldName = 'DTBALANCAO'
              Title.Caption = 'ULTIMA DATA'
              Width = 119
            end
            item
              FieldName = 'GRUPO'
              Title.Caption = 'GRUPO'
              Width = 151
            end>
        end
      end
      object Tab2: TUniTabSheet
        Hint = ''
        Caption = 'Balan'#231'o'
        OnBeforeActivate = Tab2BeforeActivate
        object UniScrollBox2: TUniScrollBox
          Left = 0
          Top = 0
          Width = 1106
          Height = 561
          Hint = ''
          Align = alClient
          Color = clBackground
          TabOrder = 0
          DesignSize = (
            1104
            559)
          ScrollHeight = 361
          object UniContainerPanel5: TUniContainerPanel
            AlignWithMargins = True
            Left = 243
            Top = 48
            Width = 609
            Height = 313
            Hint = ''
            ParentColor = False
            Color = clBackground
            Anchors = [akTop]
            AutoScroll = True
            TabOrder = 0
            ScrollHeight = 313
            ScrollWidth = 609
            object pn1: TUniPanel
              AlignWithMargins = True
              Left = 5
              Top = 53
              Width = 604
              Height = 224
              Hint = ''
              Margins.Left = 5
              Margins.Right = 0
              Align = alTop
              TabOrder = 1
              Alignment = taLeftJustify
              Caption = ''
              Color = clWindow
              object edBalanco: TUniEdit
                Left = 16
                Top = 26
                Width = 65
                Height = 28
                Hint = ''
                CharCase = ecUpperCase
                MaxLength = 4
                CharEOL = #13
                Text = ''
                TabOrder = 1
                InputMask.Mask = '9999'
                InputMask.MaskChar = ' '
                LayoutConfig.Cls = 'border-bottom-edit'
                OnKeyPress = edBalancoKeyPress
              end
              object UniLabel31: TUniLabel
                Left = 16
                Top = 10
                Width = 84
                Height = 13
                Hint = ''
                Caption = 'Estoque Atual?'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 2
              end
              object pn3: TUniContainerPanel
                Left = 1
                Top = 166
                Width = 602
                Height = 39
                Hint = ''
                ParentColor = False
                Align = alBottom
                TabOrder = 3
                object BtGrv: TUniFSButton
                  AlignWithMargins = True
                  Left = 446
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
                  ScreenMask.Enabled = True
                  ScreenMask.Message = 'Carregando dados...'
                  Images = UniNativeImageList1
                  ImageIndex = 18
                  OnClick = BtGrvClick
                end
                object UniFSButton2: TUniFSButton
                  AlignWithMargins = True
                  Left = 287
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
                  ScreenMask.Enabled = True
                  ScreenMask.Message = 'Carregando dados...'
                  Images = UniNativeImageList1
                  ImageIndex = 18
                  OnClick = UniFSButton2Click
                end
              end
              object lbProdu: TUniLabel
                AlignWithMargins = True
                Left = 16
                Top = 101
                Width = 553
                Height = 34
                Hint = ''
                Margins.Top = 17
                Margins.Right = 10
                AutoSize = False
                Caption = ''
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -20
                Font.Style = [fsBold]
                ParentColor = False
                Color = clWindow
                TabOrder = 4
              end
              object UniLabel1: TUniLabel
                Left = 16
                Top = 78
                Width = 45
                Height = 13
                Hint = ''
                Caption = 'Produto'
                ParentFont = False
                Font.Style = [fsBold]
                TabOrder = 5
              end
              object UniContainerPanel1: TUniContainerPanel
                Left = 1
                Top = 205
                Width = 602
                Height = 18
                Hint = ''
                ParentColor = False
                Align = alBottom
                TabOrder = 6
              end
            end
            object UniPanel22: TUniPanel
              AlignWithMargins = True
              Left = 5
              Top = 3
              Width = 604
              Height = 44
              Hint = ''
              Margins.Left = 5
              Margins.Right = 0
              Align = alTop
              TabOrder = 2
              BorderStyle = ubsNone
              Caption = ''
              Color = clHighlight
              object UniLabel2: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 10
                Width = 80
                Height = 24
                Hint = ''
                Margins.Left = 10
                Margins.Top = 10
                Caption = 'Balan'#231'o'
                Align = alLeft
                ParentFont = False
                Font.Height = -20
                Font.Style = [fsBold]
                TabOrder = 1
              end
              object UniSimplePanel1: TUniSimplePanel
                AlignWithMargins = True
                Left = 368
                Top = 3
                Width = 233
                Height = 38
                Hint = ''
                ParentColor = False
                Color = clHighlight
                Align = alRight
                TabOrder = 2
                object UniLabel3: TUniLabel
                  AlignWithMargins = True
                  Left = -6
                  Top = 10
                  Width = 172
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
                object lbCod: TUniLabel
                  AlignWithMargins = True
                  Left = 174
                  Top = 9
                  Width = 56
                  Height = 24
                  Hint = ''
                  Margins.Top = 9
                  Margins.Bottom = 5
                  AutoSize = False
                  Caption = 'xx'
                  Align = alRight
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Style = [fsBold]
                  ParentColor = False
                  Color = clBlack
                  TabOrder = 2
                end
              end
            end
          end
        end
      end
    end
  end
  object UniPanel1: TUniPanel
    AlignWithMargins = True
    Left = 0
    Top = 3
    Width = 1116
    Height = 42
    Hint = ''
    Margins.Left = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -20
    Font.Style = [fsBold]
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = 'ESTOQUE TI'
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
    object sbExportHtml: TUniFSButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 46
      Height = 36
      Hint = ''
      Visible = False
      StyleButton = Transparent
      CaptionIconFont = '<i class="fas fa-code"></i>'
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = ''
      Align = alLeft
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -20
      Font.Style = [fsBold]
      TabOrder = 2
      ClientEvents.ExtEvents.Strings = (
        
          'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
          '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
          '50,'#13#10'   hideDelay: 50,'#13#10'   html: "Exportar Html &nbsp"'#13#10'  });'#13#10'}')
      OnClick = sbExportHtmlClick
    end
    object sbExportExcel: TUniFSButton
      AlignWithMargins = True
      Left = 55
      Top = 3
      Width = 41
      Height = 36
      Hint = ''
      Margins.Right = 10
      Visible = False
      StyleButton = Transparent
      CaptionIconFont = '<i class="far fa-file-excel"></i>'
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = ''
      Align = alLeft
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -20
      Font.Style = [fsBold]
      TabOrder = 3
      ClientEvents.ExtEvents.Strings = (
        
          'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
          '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
          '50,'#13#10'   hideDelay: 50,'#13#10'   html: "Exportar Excel &nbsp"'#13#10'  });'#13#10 +
          '}')
      OnClick = sbExportExcelClick
    end
    object pnPesquisar: TUniContainerPanel
      AlignWithMargins = True
      Left = 712
      Top = 3
      Width = 401
      Height = 36
      Hint = ''
      ParentColor = False
      Align = alRight
      TabOrder = 4
      object btLimpar: TUniFSButton
        AlignWithMargins = True
        Left = 360
        Top = 5
        Width = 31
        Height = 26
        Hint = ''
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 10
        Margins.Bottom = 5
        StyleButton = Primary
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = ''
        Align = alRight
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'   Ext.creat' +
            'e('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay' +
            ':50,'#13#10'   hideDelay: 50,'#13#10'   html: "Limpar"'#13#10'  });'#13#10'}')
        ScreenMask.Enabled = True
        ScreenMask.Message = 'Carregando...'
        Images = UniNativeImageList1
        ImageIndex = 23
        OnClick = btLimparClick
      end
      object EdPesquisar: TUniEdit
        AlignWithMargins = True
        Left = 11
        Top = 0
        Width = 299
        Height = 36
        Hint = ''
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        ParentShowHint = False
        CharCase = ecUpperCase
        MaxLength = 40
        CharEOL = #13
        Text = ''
        ParentFont = False
        Font.Color = clBlack
        Font.Style = [fsBold]
        Align = alRight
        TabOrder = 2
        EmptyText = 'PESQUISAR'
        FieldLabelWidth = 20
        FieldLabelSeparator = ' '
        FieldLabelFont.Height = -19
        FieldLabelFont.Style = [fsBold]
        OnKeyPress = EdPesquisarKeyPress
      end
      object btPesquisar: TUniFSButton
        AlignWithMargins = True
        Left = 320
        Top = 5
        Width = 30
        Height = 26
        Hint = ''
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 10
        Margins.Bottom = 5
        StyleButton = Transparent
        CaptionIconFont = '<i class="fas fa-search"></i>'
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = ''
        Align = alRight
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -20
        Font.Style = [fsBold]
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
            '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
            '50,'#13#10'   hideDelay: 50,'#13#10'   html: "Busca dinamica &nbsp"'#13#10'  });'#13#10 +
            '}')
        OnClick = btPesquisarClick
      end
    end
  end
  object dsBalanco: TDataSource
    DataSet = dmDados.RDWBalanco
    OnDataChange = dsBalancoDataChange
    Left = 36
    Top = 578
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 40
    Top = 440
    Images = {
      1800000000000000060600000073613B66613B00000000060B0000006465736B
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
      66613B00000000061000000077696E646F772D636C6F73653B66613B00000000
      061400000066612D66696C652D657863656C2D6F3B66615F3B00000000061300
      000066612D66696C652D636F64652D6F3B66615F3BFFFFFF1F04CA0100008950
      4E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF6100
      000006624B474400FF00FF00FFA0BDA7930000017F49444154381195D3BF4B94
      711C07F0E77B6468B4B8A85338080545B9069162B488A30D4D1E04228693116E
      E5140EAD49D4A0B816A1A07F801804E611D49415081AB61804B744DDD3EBE3F1
      C8DD11A2F27E7DBE3F9ECFF7CB3DC799B2ECF47F799E7738B5CE0F4E1F173C24
      B29DA9FD94693FC955FA3A3920F23853BF1399567AB97DDC459ECF11A9297D25
      CDDBFCE51B1719E2BF71A0C7832922EF524A5F92CD33561D54B9CC4E4AE997F1
      287AC62D6E51E12B63ACE99B37D6A3E915917DE5427D37CBCCBB295ED334AF2A
      F374153DD1D46EA331F78A8736DF50E6011F29F2C9243E7DBDD56295C84FA597
      78BD27C6119EB2C938F7A910B9563FAD5AB571936EBA784DE4B7B2C4300B7C66
      823B9C4DCE6626315E35BFC20077394F636A16CF58E106355FE2ACF1F08B2AB9
      648BD6BCB4F181C6D42CE215AEC7E1521437C5EDF103AAC49A5D26D9A378CF19
      F33F24E2D36D1A9BE3E6735C6282F7147994E7F9738A8C369F6C59E91A64831D
      CABCA0C8624BFBF14BA726794B95659AFEE9FE01BBA6B199375228D500000000
      49454E44AE426082}
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'Sim'
    CancelButtonText = 'N'#227'o'
    ConfirmButtonColor = clMaroon
    CancelButtonColor = 6835774
    Width = 400
    Padding = 20
    ShowLoaderOnConfirm = True
    OnDismiss = UniSweetAlert1Dismiss
    OnConfirm = UniSweetAlert1Confirm
    Left = 36
    Top = 522
  end
  object UniGridHTMLExporter1: TUniGridHTMLExporter
    FileExtention = 'html'
    MimeType = 'text/html'
    CharSet = 'UTF-8'
    Left = 48
    Top = 288
  end
  object UniGridExcelExporter1: TUniGridExcelExporter
    FileExtention = 'xlsx'
    MimeType = 
      'application/vnd.openxmlformats-officedocument.spreadsheetml.shee' +
      't'
    CharSet = 'UTF-8'
    Left = 48
    Top = 368
  end
end
