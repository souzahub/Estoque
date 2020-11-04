object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 542
  ClientWidth = 306
  Caption = 'Estoque T.I'
  BorderIcons = []
  ShowTitle = False
  CloseButton.DefaultIcon = False
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object pnTitulo: TUnimPanel
    Left = 0
    Top = 0
    Width = 306
    Height = 41
    Hint = ''
    Align = alTop
    Color = clHighlight
    Title = 'Estoque T.I'
    object UnimLabel1: TUnimLabel
      AlignWithMargins = True
      Left = 11
      Top = 4
      Width = 44
      Height = 33
      Hint = ''
      Margins.Left = 10
      AutoSize = False
      Caption = '<i class="fa fa-angle-left" aria-hidden="true"></i>'
      Align = alLeft
      ParentColor = False
      Color = clHighlight
      ParentFont = False
      Font.Color = clHighlightText
      Font.Height = -33
      OnClick = UnimLabel1Click
    end
    object UnimLabel2: TUnimLabel
      AlignWithMargins = True
      Left = 61
      Top = 11
      Width = 199
      Height = 26
      Hint = ''
      Margins.Top = 10
      Margins.Right = 45
      Alignment = taCenter
      AutoSize = False
      Caption = 'Estoque T.I'
      Align = alClient
      ParentFont = False
      Font.Color = clHighlightText
      Font.Height = -24
    end
  end
  object edBusca: TUnimEdit
    AlignWithMargins = True
    Left = 10
    Top = 41
    Width = 286
    Height = 25
    Hint = ''
    Margins.Left = 10
    Margins.Top = 0
    Margins.Right = 10
    Margins.Bottom = 2
    InputRTL = False
    Align = alTop
    Text = ''
    CharCase = ecUpperCase
    EmptyText = 'BUSCA DIN'#194'MICA'
    ParentFont = False
    TabOrder = 1
    InputType = 'search'
    OnChange = edBuscaChange
  end
  object UnimDBListGrid1: TUnimDBListGrid
    AlignWithMargins = True
    Left = 3
    Top = 71
    Width = 300
    Height = 468
    Hint = ''
    BodyRTL = True
    Align = alClient
    DataSource = dsEstoque
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' '#13#10'config.loa' +
        'dingText='#39'Carregando...'#39';'#13#10'config.grouped=false;'#13#10'//config.selec' +
        'tedCls='#39#39';'#13#10'config.itemTpl='#39'<div class="product-info">'#39'+'#13#10'      ' +
        '  // '#39'<p>&nbsp;C'#243'digo: {0}</p>'#39'+          '#13#10'                    ' +
        '                       '#13#10'         '#39'<h1> &nbsp;Produto: {0}</h1>'#39 +
        '+'#13#10'         '#39'<p> &nbsp;Estoque: {1}</p>'#39'+ '#13#10'         '#39'<p> &nbsp;' +
        'Pre'#231'o R$: {2}</p>'#39'+              '#13#10'         '#39'</div>'#39'; '#13#10'}')
    Options = [dgColLines, dgRowLines, dgConfirmDelete]
    WebOptions.PageSize = 200
    WebOptions.FetchAll = True
    DisclosureIcon = True
    DirectionLock = True
    ScrollToSelected = True
    Columns = <
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
  object xxUnimHTMLFrame1: TUnimHTMLFrame
    Left = 253
    Top = 297
    Width = 45
    Height = 52
    Hint = ''
    Visible = False
    HTML.Strings = (
      '<!DOCTYPE html>'
      '<html lang="pt-br">'
      '  <head>'
      '    <link href="css/estilo.css" rel="stylesheet">'
      '    <!-- Font awesome -->'
      
        '    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.' +
        'com/font-awesome/4.7.0/css/font-awesome.min.css">'
      ''
      '    <title>TESTE</title>'
      '    <meta charset="utf-8">'
      '  </head>'
      '  <body>'
      ''
      '    <div class="fab">'
      '      <button class="main">'
      ''
      '      </button>'
      '      <ul>'
      '        <li>'
      
        '          <button onclick="ajaxRequest(FormMlogin.UnimHTMLFrame1' +
        ', '#39'valor1'#39',[])">'
      
        '          <i class="fa fa-address-book-o"></i> <!-- fonte awesom' +
        'e -->'
      '          </button>'
      '        </li>'
      '        <li>'
      
        '          <button onclick="ajaxRequest(FormMlogin.UnimHTMLFrame1' +
        ', '#39'valor2'#39',[])">'
      '          <i class="fa fa-pie-chart"></i> <!-- fonte awesome -->'
      '          </button>'
      '        </li>'
      '        <li>'
      
        '          <button onclick="ajaxRequest(FormMlogin.UnimHTMLFrame1' +
        ', '#39'valor3'#39',[])">'
      '          <i class="fa fa-cog"></i> <!-- fonte awesome -->'
      '          </button>'
      '        </li>'
      '      </ul>'
      '    </div>'
      ''
      '  </body>'
      '</html>')
    OnAjaxEvent = xxxUnimHTMLFrame1AjaxEvent
  end
  object UnimHTMLFrame1: TUnimHTMLFrame
    Left = 253
    Top = 459
    Width = 45
    Height = 52
    Hint = ''
    HTML.Strings = (
      ''
      '<!DOCTYPE html>'
      '<html lang="pt-br">'
      #9'<head>'
      #9'       <meta charset="UTF-8" />'
      
        '               <meta http-equiv="X-UA-Compatible" content="IE=ed' +
        'ge,chrome=1">'
      
        #9#9#9#9#9#9#9'  <link href="files/boodtstrap/css/bootstrap.min.css" rel' +
        '="stylesheet" type="text/css" />'
      ''
      
        #9#9#9' '#9#9#9#9' <script type="text/javascript" src="files/boodtstrap/js' +
        '/bootstrap.min.js"> </script>'
      
        #9#9#9' '#9#9#9#9' <script type="text/javascript" src="files/boodtstrap/js' +
        '/jquery-3.5.1.min.js"> </script>'
      ''
      #9'</head>'
      #9' <body>'
      ''
      #9'     <div id="menu_flutuante"></div>'
      #9'     <script>'
      ''
      #9#9#9#9'//COME'#65533'ANDO O SCRIPT E CRIANDO OBJETOS'
      #9#9#9#9'var menu_ct = document.createElement("div");'
      #9#9#9#9'var menu_aberto = false;'
      #9#9#9#9'var menuwrap = document.createElement("div");'
      #9#9#9#9'var menuitens = [];'
      ''
      #9#9#9#9'$(menu_ct).css({'
      #9#9#9#9'            "width":"100%",'
      #9#9#9#9'            "height":"100%",'
      #9#9#9#9'            "text-align":"center",'
      #9#9#9#9'            "line-height":"60px"'
      #9#9#9#9'});'
      ''
      #9#9#9#9'$(menuwrap).css({'
      #9#9#9#9'            "position":"fixed",'
      #9#9#9#9'            "right":"15px",'
      #9#9#9#9'            "bottom":"90px",'
      #9#9#9#9'            "transition":"0.15s",'
      #9#9#9#9'            "opacity":"0",'
      #9#9#9#9'            "text-align":"right",'
      #9#9#9#9'            "display":"none"'
      #9#9#9#9'});'
      ''
      #9#9#9#9'//DESENHANDO OS ITENS DO MENU'
      #9#9#9#9'function drawMenu(n)'
      #9#9#9#9'{'
      #9#9#9#9'    $("#menu_flutuante").html("");'
      #9#9#9#9'    $("#menu_flutuante").append(menu_ct);'
      #9#9#9#9'    $("#menu_flutuante").append(menuwrap);'
      #9#9#9#9'    $("#menu_flutuante").css("display","block");'
      ''
      #9#9#9#9'    menuitens.forEach(function(item){$(item).remove();});'
      #9#9#9#9'    menuitens = [];'
      #9#9#9#9'    for( var i=0; i<n; i++)'
      #9#9#9#9'    {'
      #9#9#9#9'        var itemwrap = document.createElement("div");'
      #9#9#9#9'        var itemlab = document.createElement("div");'
      #9#9#9#9'        var item = document.createElement("div");'
      ''
      #9#9#9#9'        $(itemwrap).css({'
      #9#9#9#9'            "height":"50px",'
      #9#9#9#9'            "margin-bottom":"2px",'
      #9#9#9#9'            "margin-top":"2px",'
      #9#9#9#9'            "display":"block",'
      #9#9#9#9'            "cursor":"default"'
      #9#9#9#9'        });'
      #9#9#9#9'        $(itemlab).attr("class","label_item");'
      #9#9#9#9'        $(itemlab).css({'
      #9#9#9#9'            "box-shadow":"2px 2px 4px #404040a0",'
      #9#9#9#9'            "margin-right":"6px",'
      #9#9#9#9'            "display":"inline-block"'
      #9#9#9#9'        });'
      #9#9#9#9'        $(item).attr("id","menu_item_"+i);'
      #9#9#9#9'        $(item).attr("class","menu_item");'
      #9#9#9#9'        $(item).css({'
      #9#9#9#9'            "width":"48px",'
      #9#9#9#9'            "height":"48px",'
      #9#9#9#9'            "border-radius":"100%",'
      #9#9#9#9'            "background-color":"#202040",'
      #9#9#9#9'            "text-align":"center",'
      #9#9#9#9'            "line-height":"50px",'
      #9#9#9#9'            "font-size":"20px",'
      #9#9#9#9'            "box-shadow":"2px 2px 4px #404040a0",'
      #9#9#9#9'            "margin-right":"6px",'
      #9#9#9#9'            "display":"inline-block",'
      #9#9#9#9'            "cursor":"pointer"'
      #9#9#9#9'        });'
      ''
      #9#9#9#9'        menuitens.push(itemwrap);'
      #9#9#9#9'        $(menuwrap).append(itemwrap);'
      #9#9#9#9'        $(itemwrap).append(itemlab);'
      #9#9#9#9'        $(itemwrap).append(item);'
      #9#9#9#9'    }'
      #9#9#9#9'}'
      ''
      #9#9#9#9'//DEFININDO ESTILIZA_ITEM'
      #9#9#9#9'function Estiliza_item(ind,color,fontcolor,ct,label)'
      #9#9#9#9'{'
      #9#9#9#9'    //ind = ind || null;'
      #9#9#9#9'    //if( ind == null ) return;'
      #9#9#9#9'    color = color || null;'
      #9#9#9#9'    ct = ct || null;'
      #9#9#9#9'    label = label || null;'
      #9#9#9#9'    fontcolor = fontcolor || null;'
      #9#9#9#9'    if( ind == -1 )'
      #9#9#9#9'    {'
      #9#9#9#9'        if( color != null )'
      
        #9#9#9#9'            $("#menu_flutuante").css("background-color",colo' +
        'r);'
      #9#9#9#9'        if( ct != null )'
      #9#9#9#9'            $(menu_ct).html(ct);'
      #9#9#9#9'        if( fontcolor != null )'
      #9#9#9#9'            $(menu_ct).css("color",fontcolor);'
      #9#9#9#9'    }'
      #9#9#9#9'    else'
      #9#9#9#9'    {'
      #9#9#9#9'        if( color != null )'
      
        #9#9#9#9'            $(menuitens[ind]).find(".menu_item").css("backgr' +
        'ound-color",color);'
      #9#9#9#9'        if( ct != null )'
      #9#9#9#9'            $(menuitens[ind]).find(".menu_item").html(ct);'
      #9#9#9#9'        if( label != null )'
      
        #9#9#9#9'            $(menuitens[ind]).find(".label_item").html(label' +
        ');'
      #9#9#9#9'        if( fontcolor != null )'
      
        #9#9#9#9'            $(menuitens[ind]).find(".menu_item").css("color"' +
        ',fontcolor);'
      #9#9#9#9'    }'
      #9#9#9#9'}'
      ''
      #9#9#9#9'//CLICK DO MENU'
      #9#9#9#9'$(document).on("click","#menu_flutuante",function(){'
      #9#9#9#9'    if( menu_aberto )'
      #9#9#9#9'    {'
      #9#9#9#9'        $(menuwrap).css({'
      #9#9#9#9'            "opacity":"0",'
      #9#9#9#9'            "bottom":"60px"'
      #9#9#9#9'        });'
      #9#9#9#9'        setTimeout(function(){'
      #9#9#9#9'            $(menuwrap).hide(0);'
      #9#9#9#9'            menu_aberto = false;'
      #9#9#9#9'        },150);'
      #9#9#9#9'    }'
      #9#9#9#9'    else'
      #9#9#9#9'    {'
      #9#9#9#9'        $(menuwrap).show(0,function(){'
      #9#9#9#9'            $(menuwrap).css({'
      #9#9#9#9'                "opacity":"1",'
      #9#9#9#9'                "bottom":"120px"'
      #9#9#9#9'            });'
      #9#9#9#9'            menu_aberto = true;'
      #9#9#9#9'        });'
      #9#9#9#9'    }'
      #9#9#9#9'});'
      ''
      #9#9#9#9'//DEFININDO CSS DO MENU'
      #9#9#9#9'$("#menu_flutuante").css({'
      #9#9#9#9'    "position":"fixed",'
      #9#9#9#9'    "width":"60px",'
      #9#9#9#9'    "height":"60px",'
      #9#9#9#9'    "right":"15px",'
      #9#9#9#9'    "bottom":"60px",'
      #9#9#9#9'    "background-color":"#101030",'
      #9#9#9#9'    "border-radius":"100%",'
      #9#9#9#9'    "box-shadow":"2px 2px 4px #404040a0",'
      #9#9#9#9'    "font-size":"20px",'
      #9#9#9#9'    "cursor":"pointer",'
      #9#9#9#9'    "display":"none"'
      #9#9#9#9'});'
      ''
      #9#9#9#9'drawMenu(2);'
      
        #9#9#9#9'Estiliza_item(-1,"rgb(4, 21, 154)","rgb(255, 255, 255)","&#9' +
        '776");'
      
        #9#9#9#9'Estiliza_item(0,"rgb(29, 29, 29)","rgb(255, 255, 255)","&#10' +
        '010","");'
      
        #9#9#9#9'menuitens[0].onclick = function(){ajaxRequest(MainmForm.Unim' +
        'HTMLFrame1,'#39'valor1'#39',[])}'
      
        #9#9#9#9'Estiliza_item(1,"rgb(29, 29, 29)","rgb(255, 255, 255)","&#98' +
        '66","");'
      
        #9#9#9#9'menuitens[1].onclick = function(){ajaxRequest(MainmForm.Unim' +
        'HTMLFrame1,'#39'valor2'#39',[])}'
      ''
      ''
      #9'     </script>'
      ''
      #9'</body>'
      '</html>')
    OnAjaxEvent = UnimHTMLFrame1AjaxEvent
  end
  object dsEstoque: TDataSource
    DataSet = dmDados.RDWEstoque
    Left = 16
    Top = 296
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    ConfirmButtonColor = clMaroon
    ImageIndex = 0
    InputType = ItText
    Width = 300
    Padding = 20
    Left = 16
    Top = 208
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 16
    Top = 129
    Images = {
      0500000000000000060E0000004E657749636F6E436C733B66613B0000000006
      0B0000007369676E2D696E3B66613B00000000060E0000006172726F775F6C65
      66743B66613B00000000060E000000616E676C652D646F776E3B66613B000000
      00060C000000616E676C652D75703B66613B}
  end
end
