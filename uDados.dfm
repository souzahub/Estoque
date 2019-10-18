object dmDados: TdmDados
  OldCreateOrder = False
  Left = 1428
  Top = 703
  Height = 307
  Width = 417
  object tbEstoque: TTable
    DatabaseName = 'IBEstoqueTI'
    TableName = 'ESTOQUE'
    Left = 32
    Top = 16
    object tbEstoqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object tbEstoquePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object tbEstoqueESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
    end
    object tbEstoquePRECO: TFloatField
      FieldName = 'PRECO'
    end
    object tbEstoqueDTSAIDA: TDateTimeField
      FieldName = 'DTSAIDA'
    end
    object tbEstoqueDTENTRADA: TDateTimeField
      FieldName = 'DTENTRADA'
    end
    object tbEstoqueFORNEC: TStringField
      FieldName = 'FORNEC'
      Size = 80
    end
    object tbEstoqueESTOQUE_USADO: TIntegerField
      FieldName = 'ESTOQUE_USADO'
    end
    object tbEstoqueESTOQUE_NOVO: TIntegerField
      FieldName = 'ESTOQUE_NOVO'
    end
  end
  object tbFornec: TTable
    DatabaseName = 'IBEstoqueTI'
    TableName = 'FORNEC'
    Left = 104
    Top = 16
    object tbFornecENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object tbFornecBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object tbFornecCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object tbFornecUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object tbFornecCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object tbFornecFONE: TStringField
      FieldName = 'FONE'
    end
    object tbFornecEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object tbFornecNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object tbFornecCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object tbFornecID: TIntegerField
      FieldName = 'ID'
    end
  end
  object tbEntrada: TTable
    DatabaseName = 'IBEstoqueTI'
    TableName = 'ENTRADA'
    Left = 176
    Top = 16
    object tbEntradaENTRADA: TDateTimeField
      FieldName = 'ENTRADA'
    end
    object tbEntradaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object tbEntradaTOTALITENS: TFloatField
      FieldName = 'TOTALITENS'
    end
    object tbEntradaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object tbEntradaID: TIntegerField
      FieldName = 'ID'
    end
    object tbEntradaNPRODUTO: TStringField
      FieldName = 'NPRODUTO'
      Size = 40
    end
    object tbEntradaTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object tbEntradaCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object tbEntradaCPRODUTO: TIntegerField
      FieldName = 'CPRODUTO'
    end
  end
  object tbSaida: TTable
    DatabaseName = 'IBEstoqueTI'
    TableName = 'SAIDA'
    Left = 256
    Top = 16
    object tbSaidaSAIDA: TDateTimeField
      FieldName = 'SAIDA'
    end
    object tbSaidaCPRODUTO: TIntegerField
      FieldName = 'CPRODUTO'
    end
    object tbSaidaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object tbSaidaVPRODUTO: TFloatField
      FieldName = 'VPRODUTO'
    end
    object tbSaidaSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object tbSaidaNPRODUTO: TStringField
      FieldName = 'NPRODUTO'
      Size = 40
    end
    object tbSaidaPATRIMONIO: TStringField
      FieldName = 'PATRIMONIO'
      Size = 5
    end
    object tbSaidaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 40
    end
  end
  object Database1: TDatabase
    AliasName = 'IBEstoqueTI'
    Connected = True
    DatabaseName = 'IBEstoqueTI'
    LoginPrompt = False
    Params.Strings = (
      'USER=SYSDBA'
      'PASSWORD=lmalma')
    SessionName = 'Default'
    Left = 32
    Top = 192
  end
  object dsFornec: TDataSource
    DataSet = tbFornec
    Left = 112
    Top = 80
  end
  object dsEstoque: TDataSource
    DataSet = tbEstoque
    Left = 32
    Top = 80
  end
  object dsEntrada: TDataSource
    DataSet = tbEntrada
    Left = 184
    Top = 80
  end
  object dsSaida: TDataSource
    DataSet = tbSaida
    Left = 264
    Top = 72
  end
end
