object frLogSys: TfrLogSys
  Left = 0
  Top = 0
  Width = 1067
  Height = 738
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniScrollBox1: TUniScrollBox
    Left = 0
    Top = 42
    Width = 1067
    Height = 696
    Hint = ''
    Align = alClient
    TabOrder = 0
    ExplicitTop = 0
    ExplicitHeight = 738
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 1055
      Height = 684
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataSource = dsConulta
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
          FieldName = 'ID'
          Title.Caption = 'ID'
          Width = 64
        end
        item
          FieldName = 'DIA'
          Title.Caption = 'DIA'
          Width = 208
        end
        item
          FieldName = 'LOGIN'
          Title.Caption = 'LOGIN'
          Width = 184
        end
        item
          FieldName = 'OPERACAO'
          Title.Caption = 'OPERACAO'
          Width = 184
        end
        item
          FieldName = 'OCORRENCIA'
          Title.Caption = 'OCORRENCIA'
          Width = 604
        end>
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 1067
    Height = 42
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -20
    Font.Style = [fsBold]
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = 'Cadastro de Usu'#225'rios'
    Color = clNone
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 1050
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
      Left = 748
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
      ExplicitLeft = 731
    end
  end
  object dsConulta: TDataSource
    AutoEdit = False
    DataSet = dmDados.RDWLOGSYS
    Left = 887
    Top = 11
  end
end
