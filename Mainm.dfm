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
    ExplicitLeft = -1
    ExplicitWidth = 321
    object UnimPanel1: TUnimPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 314
      Height = 37
      Hint = ''
      Align = alClient
      ExplicitWidth = 315
      object UnimBitBtn1: TUnimBitBtn
        Left = 1
        Top = 1
        Width = 46
        Height = 35
        Hint = ''
        Align = alLeft
        UI = 'back'
        Caption = '<i class="fa fa-angle-left 5x"></i>'
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
        ExplicitLeft = 265
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
        ExplicitWidth = 205
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
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  '#13#10'  '#13#10'  con' +
        'fig.selectedCls='#39#39';'#13#10'  config.deleteRow=function(indx){'#13#10'   ajax' +
        'Request(MainmForm.window,'#39'deleteRow'#39',['#39'index='#39'+indx.toString()])' +
        ';'#13#10'  };'#13#10'  '#13#10'  var clrs=['#39'#5acb98'#39','#39'#72b3e3'#39','#39'#f98689'#39','#39'#fcca67'#39 +
        ','#39'#d3b894'#39','#39'#f491bc'#39'];'#13#10'  var clrIndx=0;'#13#10'  var htmlRow='#39'<div cl' +
        'ass="myrow">'#39'+'#13#10'               '#39'<table style="width:100%;height:' +
        '100%;vertical-align:middle;">'#39'+'#13#10'                '#39'<tr>'#39'+'#13#10'      ' +
        '           '#39'<td style="width:75px;text-align:center;">'#39'+'#13#10'      ' +
        '            '#39'<div class="crcldv" style="background:url(files/ima' +
        'ges/user.svg);'#39'+'#13#10'                   '#39'background-size:24px auto;' +
        'background-position:center;background-repeat:no-repeat;'#39'+'#13#10'     ' +
        '              '#39'background-color:{[this.getColor()]};" '#39'+'#13#10'      ' +
        '             '#39' onClick="javascript:MainmForm.UnimDBListGrid1.del' +
        'eteRow({0});">'#39'+                                      '#13#10'        ' +
        '          '#39'</div>'#39'+'#13#10'                 '#39'</td>'#39'+'#13#10'                ' +
        ' '#39'<td>'#39'+'#13#10'                  '#39'<span style="font-weight:bold;font-' +
        'size:13px;color:#0092f4;width:100%;display:inline-block;"> C'#243'd: ' +
        '{0}</span>'#39'+'#13#10'                  '#39'<span style="font-size:11px;col' +
        'or:#929292;width:100%;display:inline-block;"> Nome: {1}</span>'#39'+' +
        #13#10'                  '#39'<span style="font-size:11px;color:#929292;w' +
        'idth:100%;display:inline-block;"> Estoque: {2}</span>'#39'+'#13#10'       ' +
        '           //'#39'<span style="font-size:11px;color:#929292;width:10' +
        '0%;display:inline-block;">Estoque: {3}</span>'#39'+'#13#10'               ' +
        '   '#13#10'                 '#39'</td>'#39'+'#13#10'                 '#39'<td style="wid' +
        'th:55px;text-align:center;">'#39'+'#13#10'                  '#39'{[this.getNum' +
        'ber()]}'#39'+'#13#10'                  /*'#39'<img src="files/images/up.svg" s' +
        'tyle="width:12px;height12px;margin:auto;"/>'#39'+'#13#10'                 ' +
        ' '#39'<span style="color:#f00;font-size:12px;">+ 150</span>'#39'+*/'#13#10'   ' +
        '              '#39'</td>'#39'+'#13#10'                '#39'</tr>'#39'+'#13#10'              ' +
        ' '#39'</table>'#39'+    '#13#10'              '#39'</div>'#39';  '#13#10'  config.itemTpl= n' +
        'ew Ext.XTemplate('#13#10'   htmlRow,'#13#10'   {'#13#10'    getColor: function(){'#13 +
        #10'     if(clrIndx>5){clrIndx=0;}'#13#10'     return clrs[clrIndx++];   ' +
        '  '#13#10'    },  '#13#10'    getNumber:function(){'#13#10'     var i=randomIntFro' +
        'mInterval(-200,200);'#13#10'     if(i>0){'#13#10'      return '#39'<img src="fil' +
        'es/images/up.svg" style="width:12px;height12px;margin:auto;"/>'#39'+' +
        #13#10'             '#39'<span style="color:#07d280;font-size:12px;">+ '#39'+' +
        'i.toString()+'#39'</span>'#39';'#13#10'     }'#13#10'     else{'#13#10'      return '#39'<img ' +
        'src="files/images/down.svg" style="width:12px;height12px;margin:' +
        'auto;"/>'#39'+'#13#10'             '#39'<span style="color:#f37372;font-size:1' +
        '2px;">- '#39'+(i*-1).toString()+'#39'</span>'#39';'#13#10'     }'#13#10'    }'#13#10'   }'#13#10'  )' +
        ';'#13#10'}'#13#10)
    Flex = 1
    Options = [dgRowLines]
    WebOptions.Paged = False
    LayoutConfig.Width = '100%'
    Columns = <
      item
        Title.Caption = 'CODIGO'
        FieldName = 'CODIGO'
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
      end>
  end
  object dsEstoque: TDataSource
    DataSet = dmDados.RDWEstoque
    Left = 114
    Top = 352
  end
end
