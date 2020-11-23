object FormMlogin: TFormMlogin
  Left = 0
  Top = 0
  ClientHeight = 586
  ClientWidth = 333
  Caption = 'Login'
  BorderIcons = []
  AutoHeight = False
  DisplayCaption = False
  FreeOnClose = False
  ShowTitle = False
  CloseButton.DefaultIcon = False
  TitleButtons = <>
  ShowAnimation = 'fade'
  HideAnimation = 'fadeOut'
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 487
  PlatformData = {}
  object CntPnlTop: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 333
    Height = 201
    Hint = ''
    Align = alTop
    Color = clHighlight
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'     config.c' +
        'ls = "corPn2" '#13#10'}')
    object UnimLabel1: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 80
      Width = 327
      Height = 29
      Hint = ''
      Margins.Top = 80
      Alignment = taCenter
      AutoSize = False
      Caption = 'EDENTIFICA'#199#195'O'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -24
    end
  end
  object edUsuario: TUnimEdit
    AlignWithMargins = True
    Left = 25
    Top = 231
    Width = 283
    Height = 33
    Hint = ''
    Margins.Left = 25
    Margins.Top = 30
    Margins.Right = 25
    Margins.Bottom = 0
    BodyRTL = False
    Align = alTop
    Text = ''
    CharCase = ecUpperCase
    EmptyText = 'USU'#193'RIO'
    ParentFont = False
    TabOrder = 1
  end
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 264
    Width = 333
    Height = 53
    Hint = ''
    Align = alTop
  end
  object edSenha: TUnimEdit
    AlignWithMargins = True
    Left = 25
    Top = 317
    Width = 283
    Height = 33
    Hint = ''
    Margins.Left = 25
    Margins.Top = 0
    Margins.Right = 25
    Margins.Bottom = 0
    BodyRTL = False
    Align = alTop
    Text = ''
    CharCase = ecUpperCase
    EmptyText = 'SENHA'
    ParentFont = False
    TabOrder = 2
  end
  object UnimContainerPanel2: TUnimContainerPanel
    Left = 0
    Top = 350
    Width = 333
    Height = 27
    Hint = ''
    Align = alTop
  end
  object sbConectarOs: TUnimBitBtn
    AlignWithMargins = True
    Left = 25
    Top = 407
    Width = 283
    Height = 45
    Hint = ''
    Margins.Left = 25
    Margins.Top = 30
    Margins.Right = 25
    ParentShowHint = False
    Align = alTop
    UI = 'round'
    Caption = 'Entrar'
    Font.Height = -17
    OnClick = sbConectarOsClick
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 40
    Top = 9
    Images = {
      0200000000000000060E0000004E657749636F6E436C733B66613B0000000006
      0B0000007369676E2D696E3B66613B}
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    ImageIndex = 0
    InputType = ItText
    Width = 400
    Padding = 20
    ShowConfirmButton = False
    ReverseButtons = True
    Left = 136
    Top = 24
  end
end
