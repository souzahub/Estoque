object frEstoque: TfrEstoque
  Left = 0
  Top = 0
  Width = 1098
  Height = 636
  OnCreate = UniFrameCreate
  TabOrder = 0
  object PnUsuario: TUniPanel
    Left = 0
    Top = 45
    Width = 1098
    Height = 591
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = 'PnUsuario'
    object PageCadastro: TUniPageControl
      Left = 1
      Top = 1
      Width = 1096
      Height = 589
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
          Width = 1078
          Height = 551
          Hint = ''
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          BodyRTL = False
          DataSource = dsEstoque
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
          WebOptions.Paged = False
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
              FieldName = 'ID'
              Title.Caption = 'C'#211'D'
              Width = 46
            end
            item
              FieldName = 'VISUALIZAR'
              Title.Caption = 'INF'
              Width = 36
            end
            item
              FieldName = 'PRODUTO'
              Title.Caption = 'PRODUTO'
              Width = 393
            end
            item
              FieldName = 'ESTOQUE'
              Title.Caption = 'ESTOQUE'
              Title.Font.Color = clBlack
              Width = 69
              Font.Color = clMaroon
              Font.Height = -17
              Font.Style = [fsBold]
              Alignment = taCenter
            end
            item
              FieldName = 'PRECO'
              Title.Caption = 'ULTIMO PRE'#199'O'
              Width = 96
            end
            item
              FieldName = 'DTSAIDA'
              Title.Caption = 'ULTIMA SAIDA'
              Width = 88
            end
            item
              FieldName = 'DTENTRADA'
              Title.Caption = 'ULTIMA ENTRADA'
              Width = 108
            end
            item
              FieldName = 'FORNEC'
              Title.Caption = 'ULTIMO FORNECEDOR'
              Width = 318
            end
            item
              FieldName = 'ESTOQUE_USADO'
              Title.Caption = 'USADO'
              Width = 62
              Font.Color = clRed
              Alignment = taCenter
            end
            item
              FieldName = 'ESTOQUE_NOVO'
              Title.Caption = 'NOVOS'
              Width = 60
              Alignment = taCenter
            end
            item
              FieldName = 'GRUPO'
              Title.Caption = 'GRUPO'
              Width = 151
            end>
        end
        object pnInfo: TUniPanel
          Left = 0
          Top = 48
          Width = 310
          Height = 193
          Hint = ''
          Visible = False
          TabOrder = 1
          Caption = ''
          Color = clSkyBlue
          object UniPanel2: TUniPanel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 302
            Height = 32
            Hint = ''
            Align = alTop
            ParentFont = False
            Font.Height = -16
            Font.Style = [fsBold]
            TabOrder = 1
            Caption = 'Detalhes do Produto'
            object UniFSButton2: TUniFSButton
              Left = 271
              Top = 1
              Width = 30
              Height = 30
              Hint = ''
              StyleButton = Transparent
              CaptionIconFont = '<i class="fa fa-times" aria-hidden="true"></i>'
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
              TabOrder = 1
              ScreenMask.ShowMessage = False
              OnClick = UniFSButton2Click
            end
          end
          object UniPanel3: TUniPanel
            AlignWithMargins = True
            Left = 4
            Top = 42
            Width = 302
            Height = 147
            Hint = ''
            Align = alClient
            TabOrder = 2
            Caption = ''
            object UniListBox1: TUniListBox
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 294
              Height = 139
              Hint = ''
              Align = alClient
              TabOrder = 1
              OnClick = UniListBox1Click
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
    Width = 1098
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
      Width = 41
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
      Left = 50
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
    object EdPesquisar: TUniEdit
      AlignWithMargins = True
      Left = 789
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
      TabOrder = 4
      EmptyText = 'PESQUISAR'
      ClearButton = True
      FieldLabel = '<i class="fas fa-search"></i>'
      FieldLabelWidth = 20
      FieldLabelSeparator = ' '
      FieldLabelFont.Height = -19
      FieldLabelFont.Style = [fsBold]
      OnChange = EdPesquisarChange
    end
  end
  object dsEstoque: TDataSource
    DataSet = dmDados.RDWEstoque
    Left = 404
    Top = 82
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 688
    Top = 128
    Images = {
      1700000000000000060600000073613B66613B00000000060B0000006465736B
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
      000066612D66696C652D636F64652D6F3B66615F3B}
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'Sim'
    CancelButtonText = 'N'#227'o'
    ConfirmButtonColor = clMaroon
    CancelButtonColor = 6835774
    Width = 350
    Padding = 20
    Left = 508
    Top = 130
  end
  object UniGridHTMLExporter1: TUniGridHTMLExporter
    FileExtention = 'html'
    MimeType = 'text/html'
    CharSet = 'UTF-8'
    Left = 752
    Top = 128
  end
  object UniGridExcelExporter1: TUniGridExcelExporter
    FileExtention = 'xlsx'
    MimeType = 
      'application/vnd.openxmlformats-officedocument.spreadsheetml.shee' +
      't'
    CharSet = 'UTF-8'
    Left = 816
    Top = 128
  end
  object dsInfo: TDataSource
    DataSet = dmDados.RDWEstoque
    Left = 446
    Top = 82
  end
end
