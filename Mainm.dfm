object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 527
  ClientWidth = 320
  Caption = 'DADOS'
  ShowTitle = False
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimContainerPanel1: TUnimContainerPanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 320
    Height = 43
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Align = alTop
    object UnimPanel1: TUnimPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 314
      Height = 37
      Hint = ''
      Align = alClient
      object UnimBitBtn1: TUnimBitBtn
        Left = 1
        Top = 1
        Width = 46
        Height = 35
        Hint = ''
        Align = alLeft
        UI = 'back'
        Caption = '<i class="fa fa-angle-left 5x"></i>'
        OnClick = UnimBitBtn1Click
      end
      object UnimBitBtn2: TUnimBitBtn
        Left = 264
        Top = 1
        Width = 49
        Height = 35
        Hint = ''
        Visible = False
        Align = alRight
        Caption = '<i class="fa fa-angle-right 5x"></i>'
      end
      object EdPesquisar: TUnimEdit
        AlignWithMargins = True
        Left = 50
        Top = 4
        Width = 204
        Height = 29
        Hint = ''
        Margins.Right = 10
        Align = alClient
        Text = 'EdPesquisar'
        CharCase = ecUpperCase
        EmptyText = 'Pesquisar'
        ParentFont = False
        TabOrder = 3
        OnChange = EdPesquisarChange
      end
    end
  end
  object UnimDBListGrid2: TUnimDBListGrid
    Left = 0
    Top = 46
    Width = 320
    Height = 481
    Hint = ''
    Align = alClient
    DataSource = dsEstoque
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.load' +
        'ingText='#39'Carregando...'#39';'#13#10'  config.grouped=false;'#13#10'  config.sele' +
        'ctedCls='#39#39';'#13#10'  config.itemTpl=new Ext.XTemplate('#13#10#13#10#39'<div class=' +
        '"card-body shadow" style="width: 20rem;">'#39'+  '#13#10#39'{[this.getReady(' +
        'values)]}{3}</span>'#39'+'#13#10#39'<p class="text-info">C'#243'd: {0}</p>'#39'+'#13#10#39'<p' +
        ' class="text-primary font-weight-bold">{1}</p>'#39'+'#13#10#39'<p class="tex' +
        't-dark font-weight-bold">Estoque: {2}</p>'#39'+ '#13#10#39'</div>'#39','#13#10'       ' +
        ' {'#13#10'      getReady: function(values) {'#13#10'           if(parseFloat' +
        '(values[3])<=100)return '#39'<span class="badge badge-pill badge-dan' +
        'ger float-right">'#39';'#13#10'            else return '#39'<span class="badge' +
        ' badge-pill badge-primary float-right">'#39';           '#13#10'        }'#13 +
        #10'    }'#13#10');'#13#10'}                              ')
    Flex = 1
    Options = [dgRowLines]
    WebOptions.Paged = False
    LayoutConfig.Width = '100%'
    Columns = <
      item
        Title.Caption = 'CODIGO'
        FieldName = 'ID'
        Width = 114
      end
      item
        Title.Caption = 'PRODUTO'
        FieldName = 'PRODUTO'
        Width = 554
      end
      item
        Title.Caption = 'ESTOQUE'
        FieldName = 'ESTOQUE'
        Width = 114
      end
      item
        Title.Caption = 'PRECO'
        FieldName = 'PRECO'
        Width = 114
      end>
  end
  object dsEstoque: TDataSource
    DataSet = dmDados.RDWEstoque
    Left = 114
    Top = 352
  end
end
