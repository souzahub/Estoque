object dmDados: TdmDados
  OldCreateOrder = False
  Height = 605
  Width = 697
  object RDWConexao: TRESTDWDataBase
    Active = True
    Compression = True
    CriptOptions.Use = False
    CriptOptions.Key = 'RDWBASEKEY256'
    MyIP = '177.155.224.141'
    Login = 'admin'
    Password = 'tifri2020'
    Proxy = False
    ProxyOptions.Port = 8888
    PoolerService = '170.81.40.199'
    PoolerPort = 9098
    PoolerName = 'TDMServer.RESTDWPoolerDB'
    StateConnection.AutoCheck = False
    StateConnection.InTime = 1000
    RequestTimeOut = 10000
    EncodeStrings = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    AccessTag = 'rdwfalcon'
    ParamCreate = True
    FailOver = False
    FailOverConnections = <>
    FailOverReplaceDefaults = False
    ClientConnectionDefs.Active = False
    Left = 32
    Top = 16
  end
  object rdwUsuario: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'LOGIN'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SENHA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PERFIL'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select * from usuario  order by ID desc')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 24
    Top = 112
    object rdwUsuarioID: TIntegerField
      FieldName = 'ID'
    end
    object rdwUsuarioNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object rdwUsuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object rdwUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 30
    end
    object rdwUsuarioSENHA: TStringField
      FieldName = 'SENHA'
    end
    object rdwUsuarioPERFIL: TStringField
      FieldName = 'PERFIL'
    end
  end
  object RDWEntrada: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvStoreItems, rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select * from entrada  order by NPRODUTO')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 24
    Top = 176
    object RDWEntradaENTRADA: TSQLTimeStampField
      FieldName = 'ENTRADA'
    end
    object RDWEntradaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object RDWEntradaTOTALITENS: TFloatField
      FieldName = 'TOTALITENS'
    end
    object RDWEntradaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object RDWEntradaID: TIntegerField
      FieldName = 'ID'
    end
    object RDWEntradaNPRODUTO: TStringField
      FieldName = 'NPRODUTO'
      Size = 40
    end
    object RDWEntradaTIPO: TIntegerField
      FieldName = 'TIPO'
      OnGetText = RDWEntradaTIPOGetText
    end
    object RDWEntradaCUSTO: TFloatField
      FieldName = 'CUSTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object RDWEntradaCPRODUTO: TIntegerField
      FieldName = 'CPRODUTO'
    end
    object RDWEntradaLOCALPRODUTO: TStringField
      FieldName = 'LOCALPRODUTO'
      Size = 80
    end
    object RDWEntradaPATRIMONIO: TStringField
      FieldName = 'PATRIMONIO'
      Size = 10
    end
  end
  object RDWEstoque: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvStoreItems, rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select * from ESTOQUE  order by PRODUTO ')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 24
    Top = 248
    object RDWEstoqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object RDWEstoquePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object RDWEstoqueESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
    end
    object RDWEstoquePRECO: TFloatField
      FieldName = 'PRECO'
      OnGetText = RDWEstoquePRECOGetText
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object RDWEstoqueDTSAIDA: TSQLTimeStampField
      FieldName = 'DTSAIDA'
    end
    object RDWEstoqueDTENTRADA: TSQLTimeStampField
      FieldName = 'DTENTRADA'
    end
    object RDWEstoqueFORNEC: TStringField
      FieldName = 'FORNEC'
      Size = 80
    end
    object RDWEstoqueESTOQUE_USADO: TIntegerField
      FieldName = 'ESTOQUE_USADO'
    end
    object RDWEstoqueESTOQUE_NOVO: TIntegerField
      FieldName = 'ESTOQUE_NOVO'
    end
    object RDWEstoqueGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object RDWEstoqueID: TIntegerField
      FieldName = 'ID'
    end
    object RDWEstoqueVISUALIZAR: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'VISUALIZAR'
      OnGetText = RDWEstoqueVISUALIZARGetText
      Calculated = True
    end
  end
  object RDWFornec: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select * from fornec  order by ID desc')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 24
    Top = 320
    object RDWFornecENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object RDWFornecBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object RDWFornecCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object RDWFornecUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object RDWFornecCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object RDWFornecFONE: TStringField
      FieldName = 'FONE'
      Size = 35
    end
    object RDWFornecEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object RDWFornecNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object RDWFornecCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object RDWFornecID: TIntegerField
      FieldName = 'ID'
    end
  end
  object RDWSaida: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select * from saida  order by NPRODUTO ')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 24
    Top = 464
    object RDWSaidaSAIDA: TSQLTimeStampField
      FieldName = 'SAIDA'
    end
    object RDWSaidaCPRODUTO: TIntegerField
      FieldName = 'CPRODUTO'
    end
    object RDWSaidaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object RDWSaidaVPRODUTO: TFloatField
      FieldName = 'VPRODUTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object RDWSaidaSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object RDWSaidaNPRODUTO: TStringField
      FieldName = 'NPRODUTO'
      Size = 40
    end
    object RDWSaidaPATRIMONIO: TStringField
      FieldName = 'PATRIMONIO'
      Size = 5
    end
    object RDWSaidaID: TIntegerField
      FieldName = 'ID'
      OnGetText = RDWSaidaIDGetText
    end
    object RDWSaidaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 40
    end
  end
  object RDWAuxiliar: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 104
    Top = 16
  end
  object RDWGrupos: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select * from grupos  order by ID desc')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 24
    Top = 384
    object RDWGruposID: TIntegerField
      FieldName = 'ID'
    end
    object RDWGruposGRUPOS: TStringField
      FieldName = 'GRUPOS'
      Size = 50
    end
  end
  object RDWEstoqueRelat: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvStoreItems, rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select * from ESTOQUE where ESTOQUE<>0  order by ID asc')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 416
    Top = 520
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
    end
    object StringField1: TStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'ESTOQUE'
    end
    object FloatField1: TFloatField
      FieldName = 'PRECO'
      OnGetText = RDWEstoquePRECOGetText
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DTSAIDA'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'DTENTRADA'
    end
    object StringField2: TStringField
      FieldName = 'FORNEC'
      Size = 80
    end
    object IntegerField3: TIntegerField
      FieldName = 'ESTOQUE_USADO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ESTOQUE_NOVO'
    end
    object StringField3: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID'
    end
  end
  object RelatFornec: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select * from fornec  ')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 504
    Top = 520
    object RelatFornecENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object RelatFornecBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object RelatFornecCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object RelatFornecUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object RelatFornecCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object RelatFornecFONE: TStringField
      FieldName = 'FONE'
      Size = 35
    end
    object RelatFornecEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object RelatFornecNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object RelatFornecCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object RelatFornecID: TIntegerField
      FieldName = 'ID'
    end
  end
  object relatSaida: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvStoreItems, rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select * from SAIDA')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 576
    Top = 520
    object IntegerField10: TIntegerField
      FieldName = 'ID'
    end
    object relatSaidaSAIDA: TSQLTimeStampField
      FieldName = 'SAIDA'
    end
    object relatSaidaCPRODUTO: TIntegerField
      FieldName = 'CPRODUTO'
    end
    object relatSaidaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object relatSaidaVPRODUTO: TFloatField
      FieldName = 'VPRODUTO'
    end
    object relatSaidaSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object relatSaidaNPRODUTO: TStringField
      FieldName = 'NPRODUTO'
      Size = 40
    end
    object relatSaidaPATRIMONIO: TStringField
      FieldName = 'PATRIMONIO'
      Size = 5
    end
    object relatSaidaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 40
    end
  end
  object RDWLOGSYS: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvStoreItems, rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select * from LOGSYS  order by ID desc')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 312
    Top = 520
    object RDWLOGSYSID: TIntegerField
      FieldName = 'ID'
    end
    object RDWLOGSYSDIA: TSQLTimeStampField
      FieldName = 'DIA'
    end
    object RDWLOGSYSLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 30
    end
    object RDWLOGSYSOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 30
    end
    object RDWLOGSYSOCORRENCIA: TStringField
      FieldName = 'OCORRENCIA'
      Size = 100
    end
  end
  object FSiGrowlComp: TUniFSiGrowl
    Messages = 'Hello World!'
    Types = Info
    AlertSize = Regular
    Icon = linecons_lab
    UrlImage = 
      'http://www.falconsistemas.com.br/assets/images/falcon_sistemas_3' +
      '6.png'
    Delay = 2500
    Spacing = 20
    OffsetX = 20
    OffsetY = 20
    EnableAnimation = True
    EnterAnimation = fadeInDown
    ExitAnimation = bounceOut
    PlacementX = right
    PlacementY = top
    Left = 232
    Top = 528
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
    Left = 160
    Top = 523
  end
  object RDWAutentificacao: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select *  from AUTENTICACAO order by ID desc')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 464
    Top = 440
    object RDWAutentificacaoID: TIntegerField
      FieldName = 'ID'
    end
    object RDWAutentificacaoDATA_INICIO: TSQLTimeStampField
      FieldName = 'DATA_INICIO'
    end
    object RDWAutentificacaoDATA_FIM: TSQLTimeStampField
      FieldName = 'DATA_FIM'
    end
    object RDWAutentificacaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 40
    end
    object RDWAutentificacaoID_IDENTIFICACAO: TIntegerField
      FieldName = 'ID_IDENTIFICACAO'
    end
    object RDWAutentificacaoNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      Size = 50
    end
  end
  object RDWDataServidor: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvStoreItems, rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select current_timestamp as DATASERVIDOR from AUTENTICACAO')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 408
    Top = 248
    object RDWDataServidorDATASERVIDOR: TSQLTimeStampField
      FieldName = 'DATASERVIDOR'
    end
  end
  object RDWIDEmpresa: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select *  from IDENTIFICACAO_SYS order by ID desc')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 568
    Top = 448
    object RDWIDEmpresaID: TIntegerField
      FieldName = 'ID'
    end
    object RDWIDEmpresaDATA_INICIO: TSQLTimeStampField
      FieldName = 'DATA_INICIO'
    end
    object RDWIDEmpresaDATA_FIM: TSQLTimeStampField
      FieldName = 'DATA_FIM'
    end
    object RDWIDEmpresaNOME_SISTEMA: TStringField
      FieldName = 'NOME_SISTEMA'
      Size = 50
    end
  end
  object RDWCAD_PRODUTO: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvStoreItems, rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    Params = <>
    DataBase = RDWConexao
    SQL.Strings = (
      'select * from ESTOQUE  order by PRODUTO ')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 344
    Top = 64
    object RDWCAD_PRODUTOCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object RDWCAD_PRODUTOPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object RDWCAD_PRODUTOESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
    end
    object RDWCAD_PRODUTOPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object RDWCAD_PRODUTODTSAIDA: TSQLTimeStampField
      FieldName = 'DTSAIDA'
    end
    object RDWCAD_PRODUTODTENTRADA: TSQLTimeStampField
      FieldName = 'DTENTRADA'
    end
    object RDWCAD_PRODUTOFORNEC: TStringField
      FieldName = 'FORNEC'
      Size = 80
    end
    object RDWCAD_PRODUTOESTOQUE_USADO: TIntegerField
      FieldName = 'ESTOQUE_USADO'
    end
    object RDWCAD_PRODUTOESTOQUE_NOVO: TIntegerField
      FieldName = 'ESTOQUE_NOVO'
    end
    object RDWCAD_PRODUTOGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object RDWCAD_PRODUTOID: TIntegerField
      FieldName = 'ID'
    end
  end
end
