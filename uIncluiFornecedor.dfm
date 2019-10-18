object FormMistoiForncedor: TFormMistoiForncedor
  Left = 907
  Top = 81
  BorderStyle = bsDialog
  Caption = 'Fornecedor'
  ClientHeight = 470
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  DesignSize = (
    529
    470)
  PixelsPerInch = 96
  TextHeight = 13
  object lbCep: TLabel
    Left = 32
    Top = 216
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object lbUf: TLabel
    Left = 384
    Top = 168
    Width = 14
    Height = 13
    Caption = 'UF'
  end
  object lbFone: TLabel
    Left = 152
    Top = 216
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object lbCnpj: TLabel
    Left = 32
    Top = 24
    Width = 27
    Height = 13
    Caption = 'CNPJ'
  end
  object btSalvar: TBitBtn
    Left = 32
    Top = 368
    Width = 139
    Height = 57
    Cursor = crHandPoint
    Caption = 'Salvar'
    TabOrder = 9
    OnClick = btSalvarClick
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBFBFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF4F4F4DFDFDFD5D5D5EAEA
      EAFCFCFCFEFEFEFCFCFCF5F5F5E3E3E3C8C8C8BBBBBBCFCFCFF2F2F2FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFBFBFBEDEDEDD2D2D2A8A8A8979796AAA6A28F8E8EA8A8
      A8D5D5D5D8D8D8B9B9B99F9F9EACABABC6C6C4DBDBDB9D9C9CA0A0A0DCDCDCFB
      FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F9F9F9E5E5E5C2C2C29D9D9D9F9E9DC1BBB4E1D6C4C9B381C2C3AADED3C0A5A4
      A264646440403F747472BCBBB9B5B4B3BEBDBBB5B3B0C9C9C8C3C2C1898989BF
      BFBFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEBEB
      ABABABAFABA7D1C3B4DDC7AED6B58ADDBE92E4D1B4DEC9ACC9A977AD9C7CA794
      7E7975703E3D3C686664CECCCADAD8D6DBD9D7CCCAC6A9A7A3B0AFACC8C7C591
      908F9E9E9EDBDBDBFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD1D0D0
      CABAA9A17745AF895BCEB190DCC0A4D4B79AB99D7E947F676054453E372F2B2A
      28403F3D686867A0A09FE2E0DF92A18F69A974D9D6D2B8B5B19E9B969F9C98B4
      B3B0A8A7A5848483BDBDBDEFEFEFFEFEFEFFFFFFFFFFFFFFFFFFF0F0F0C7C7C7
      8F8E8E827C75A68A6A916F49755F475045383834303A39385E5D5C8C8C8BAEAD
      AD9E9E9D7D7D7C51504F4C4B49C3C1BED1CECBAFADAAC3BFBBB7B4AF95938F96
      938F9F9E9BAEADAA83817F9C9C9BDADADAFAFAFAFFFFFFFFFFFFC0BEBDCBC9C9
      908F8E2A2928302F2E3A383755555481807FA7A6A69F9E9E8383825B5B5A3C3B
      3A3D3C3A3E3E3C40403E424140555452B7B4B1AEACA8C5C2BED7D2CCBCB8B48F
      8D8A8E8C89908F8CA2A19E96938F858483CBCBCBF9F9F9FFFFFFCAC9C7D2D1D0
      D4D3D38281809E9E9D9E9E9D8888876564634544434444424645444847464A49
      484C4B4A4E4D4C4F4F4E51514F5A59586B6A69B4B1AED9D4D0D7D1CBD5CFC8C3
      BEB88C8B89868583878684939291A3A19DB8B8B8F7F7F7FFFFFFF3F3F2DEDEDD
      BDC1BE8E8E8D6463624C4B4A4E4D4C504F4E5251505353525555535757555958
      575B5A595D5C5B5F5E5D60605F7271707777767777769E9C99D2CDC7D5CFC8D4
      CDC4CAC3BB8F8E8C7E7D7D7F7F7E828281DEDEDEFEFEFEFFFFFFFFFFFFEDEFED
      A7BBACADADACB6B6B68B8A89605F5E5F5E5D61605F6362616464636666656868
      676A6A696C6B6A6E6D6C717170828281828281838281848382918F8EC3BEB8D2
      CCC3D3CBC1CFC7BD9C99947B7B7B7B7B7BEDEDEDFFFFFFFFFFFFFFFFFFFFFFFF
      FDFDFDE2E2E1BCBCBBB5B4B3ACAAA7838280706F6F7271707473727575747777
      767979787B7B7A7D7D7C8584848D8D8C8E8D8D8E8E8D8F8E8E8F8F8E919190B0
      ADA8CDC6BDD1C9BEC8C0B5ADA69F7E7E7DF0EFEFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9D5D4D3BAB8B5BCB8B3AEAAA58F8D8B8382828584848686
      868888878A8A898C8C8B9191909999989A99989A9A999A9A999B9B9A9C9B9A9C
      9C9BA6A4A2C2BCB4B6B0A8CCC3B8CBC4BDF7F6F6FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D6D4D1C1BBB4C4BCB3B8B0A9A09D999695
      959797979999999C9C9B9B9B9AA5A4A3A5A5A4A6A5A4A6A6A5A7A6A5AAA9A9B6
      B6B5BEBEBDBFBEBDA7A7A5D2D1D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F5DBD7D1CAC0B6CCC0B4C1B8
      AEAFACA9A8A8A8AFAFAEB1B1B1BABAB9C9C8C8D6D6D6E3E3E3EFEEEEF6F6F5F3
      F3F2EEEEEDCECDCBA8A7A6929394FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8F7E2DCD4DAD1
      C8E2DCD6E7E6E3E3E3E2BAB8B6E6E6E6FFFFFFFEFEFEFBFBFAF7F7F6F3F3F2EF
      EFEFECEBEBE2E1E0B5B3B06E7171EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFF8F8F7BBB9B6D4D5D5FEFEFEFBFBFBF7F7F7F3F3F3F0EFEFEC
      EBEBE8E7E7E4E4E3D1CFCE9A9A98BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCAC8C5C4C5C4FBFBFBF7F7F7F4F3F3F0EFEFECECEBE8
      E8E7E5E4E3E1E0DFDEDDDCD6D5D3A1A09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEDECECDFDEDEF8F7F7F4F3F3F0F0EFECECEBE9E8E7E5
      E4E3E1E0DFDEDDDCDCDAD9D9D8D7AAA8A5E8E8E8FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F8F4F4F3F0F0EFEDECEBE9E8E7E5E4E4E1
      E0E0DEDDDCDCDBD9D9D8D7D7D6D4C3C2BFB3B2B2FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF1F0F0EDECECE9E8E8E5E5E4E2E1E0DE
      DDDCDCDBDAD9D8D7D7D6D5D5D4D2D0CFCD8D8C8AFAFAFAFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEEEEDEDE9E9E8E6E5E4E2E1E0DEDDDCDC
      DBDADAD8D7D7D6D5D5D4D2D3D1D0D0CFCDADABA8C3C3C3FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F2F2E6E5E4E2E1E0DFDEDDDCDBDADA
      D9D7D7D6D5D4D3D1C9C8C7BEBDBCBEBEBDBCBBBBC5C5C5FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBDFDEDED3D2D1D2D2D1D5D5D5DB
      DAD9E0E0E0E8E8E8F4F3F3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object lbEmail: TLabeledEdit
    Left = 32
    Top = 280
    Width = 233
    Height = 21
    CharCase = ecLowerCase
    EditLabel.Width = 25
    EditLabel.Height = 13
    EditLabel.Caption = 'Email'
    TabOrder = 8
  end
  object lbEndereco: TLabeledEdit
    Left = 32
    Top = 136
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'Endere'#231'o'
    TabOrder = 2
  end
  object lbCidade: TLabeledEdit
    Left = 224
    Top = 184
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Cidade'
    TabOrder = 4
  end
  object lbNome: TLabeledEdit
    Left = 32
    Top = 88
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome'
    TabOrder = 1
  end
  object lbBairro: TLabeledEdit
    Left = 32
    Top = 184
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Bairro'
    TabOrder = 3
  end
  object meCep: TMaskEdit
    Left = 32
    Top = 232
    Width = 65
    Height = 21
    EditMask = '00\.000\-000;1;_'
    MaxLength = 10
    TabOrder = 6
    Text = '  .   -   '
  end
  object meUF: TMaskEdit
    Left = 384
    Top = 184
    Width = 25
    Height = 21
    CharCase = ecUpperCase
    EditMask = '!LL;1;_'
    MaxLength = 2
    TabOrder = 5
    Text = '  '
  end
  object meCnpj: TMaskEdit
    Left = 32
    Top = 40
    Width = 111
    Height = 21
    EditMask = '00\.000\.000\/0000\-00;0;_'
    MaxLength = 18
    TabOrder = 0
  end
  object meFone: TMaskEdit
    Left = 152
    Top = 232
    Width = 81
    Height = 21
    EditMask = '(99)999999999;1;_'
    MaxLength = 13
    TabOrder = 7
    Text = '(  )         '
  end
  object btFechar: TBitBtn
    Left = 304
    Top = 368
    Width = 139
    Height = 57
    Cursor = crHandPoint
    Anchors = [akBottom]
    Cancel = True
    Caption = 'Fechar'
    DragCursor = crHandPoint
    TabOrder = 10
    OnClick = btFecharClick
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FDFDFEEDEDFADADAF5D7D7F4D7D7F4D7D7F4D7D7F4D7D7F4D7D7F4D7D7F4D7D7
      F4D7D7F4D7D7F4D7D7F4D7D7F4D7D7F4D7D7F4D7D7F4D7D7F4D7D7F4D7D7F4D7
      D7F4D7D7F4D7D7F4D7D7F4DADAF5EDEDFAFDFDFEFFFFFFFFFFFFFFFFFFFDFDFE
      BCBCEB4245AA12178502097D02097C02097C02097B02097B02097B02097A0209
      7A02097902097902097802097702097702097702097702097702097702097702
      09770209770209770209770C127D3639A0BBBBEAFDFDFEFFFFFFFFFFFFEDEDFA
      4346AD4D62B3263FA91F39AB1F3EB01F42B61F46BB1F4AC11F4EC51F51CA1F54
      CE1F57D11F58D31F59D51F59D51F58D31F57D11F54CE1F51CA1F4EC51F4AC01F
      46BB1F42B61F3EB01F3AAA2239A73B57AC3639A0EDEDFAFFFFFFFFFFFFDADAF5
      14168D263EA900028E000896000E9F0014A7001AAE0020B60025BD002AC4002F
      CB0033D00036D30037D50037D50036D30033D0002FCB002AC40025BD0020B600
      1AAE0014A7000E9F00089600028E121D9A1D2C8FDADAF5FFFFFFFFFFFFD7D7F4
      0204881F34A5000491000A9A0011A20017AA001DB30023BB0029C3002FCB0034
      D20039D7003CDC003EDE003EDE003CDC0039D70034D2002FCB0029C30023BB00
      1DB30017AA0011A2000A9A000491060A911B2F92D7D7F4FFFFFFFFFFFFD7D7F4
      02048A1F32A4000693000C9C0013A52D42BBE0E3F2AAB7E70632C90033D00039
      D7003EDE0043E40045E70045E70043E4003EDE0039D70033D00632C9A9B6E7E0
      E3F22E42BB0013A5000C9C000693060B911B2D91D7D7F4FFFFFFFFFFFFD7D7F4
      02038D1E2FA3000795000E9E2D3DB6E2E4F0F1F1F1F1F1F1AEBDEC063BD5003D
      DC0043E40048EB004CF0004CF00048EB0043E4003DDC053BD5ADBCECF1F1F1F1
      F1F1E2E4F02E3EB6000E9E000795060A921B2A8FD7D7F4FFFFFFFFFFFFD7D7F4
      02038E1D2CA2000896000F9FDADCEBF1F1F1F1F1F1F0F0F0EFEFEFADBEEE0643
      DF0045E7004CF00052F70052F7004CF00045E70543DFABBCECEDEDEDEFEFEFF1
      F1F1F1F1F1DADCEB000F9F000896060A921A278DD7D7F4FFFFFFFFFFFFD7D7F4
      0203911B28A1000896000F9F7980B2E8E8E8F0F0F0EEEEEEEBEBEBE9E9E9ABBF
      EF064AE8004CF00052F80052F8004CF0054AE8A8BCEDE3E3E3E6E6E6EBEBEBEF
      EFEFEDEDED8188B9000F9F00089605099119248CD7D7F4FFFFFFFFFFFFD7D7F4
      0203931A259F000795000E9E0317A6747CABE5E5E5EBEBEBE8E8E8E5E5E5E4E4
      E4AABFEF064DEC004DF1004DF1054DECA6BBECDBDBDBDCDCDCE1E1E1E6E6E6E8
      E8E88088B60317A7000E9E00079505089118218DD7D7F4FFFFFFFFFFFFD7D7F4
      02029618219C000694000D9C0013A5031CAD6E77A6DFDFDFE6E6E6E3E3E3E0E0
      E0DFDFDFA8BDEE064AE8054AE8A5BAEBD3D3D3D2D2D2D7D7D7DDDDDDDEDEDE78
      82B1031CAD0013A5000D9C000694050790171E8DD7D7F4FFFFFFFFFFFFD7D7F4
      010298161C9A000491000B9A0011A20017AB0220B26872A1DADADAE2E2E2DFDF
      DFDCDCDCDBDBDBA7BBEBA5B9EAD3D3D3CDCDCDCECECED4D4D4D5D5D5717BAA02
      20B20017AB0011A2000B9A00049104068F151B8ED7D7F4FFFFFFFFFFFFD7D7F4
      01029A14199900028F000897000F9F0014A7001AAF0222B5616D9CD6D6D6DEDE
      DEDBDBDBD8D8D8D8D8D8D5D5D5D0D0D0CFCFCFD0D0D0CFCFCF6A75A40222B500
      1AAF0014A7000F9F00089700028F04058E13188ED7D7F4FFFFFFFFFFFFD7D7F4
      01019D12159700008C000593000B9B0011A30016AA001CB10223B65C6796D2D2
      D2DBDBDBD9D9D9D6D6D6D4D4D4D2D2D2D1D1D1CDCDCD6570A00223B6001CB100
      16AA0011A3000B9B00059300008C03048E11158FD7D7F4FFFFFFFFFFFFD7D7F4
      01019F0F119600008C01038F070F990F1CA31628AD1D32B5213ABC2843C0767E
      A1DBDBDBDADADAD8D8D8D6D6D6D4D4D4D4D4D47B84AB0323B5001CB10017AB00
      12A4000D9D00089600028F00008C03048D0F1190D7D7F4FFFFFFFFFFFFD8D8F5
      0101A22C2DA33131A23D3EA84346AE464DB44651B94654BD4657C24A5EC7BDC4
      E5DEDEDEDBDBDBD9D9D9D8D8D8D7D7D7D7D7D7C7CDE76475CF5968C8515EC24A
      54BB353CAE090C9500008C00008C02038D0C0E91D8D8F5FFFFFFFFFFFFDADAF6
      0000A35455B44D4DAF4D4DAF4D4EAF4D50B34D54B74D57BB515DC0C1C5E5E2E2
      E2DFDFDFDDDDDDDBDBDBDADADADADADADADADADCDCDCBFC4E3515EC04D57BB4D
      54B7575AB77272C06969BC5454B21C1C980A0B92DADAF6FFFFFFFFFFFFDCDCF7
      0000A6595AB75555B25555B25555B25555B35558B6595EBBC4C6E4E6E6E6E2E2
      E2E0E0E0DFDFDFDBDBDBDADADADCDCDCDCDCDCDDDDDDE1E1E1C3C6E3595EBB55
      58B65555B35555B25555B25656B39595CF101196DCDCF6FFFFFFFFFFFFDEDEF8
      0000A95F5FB95D5DB65D5DB65D5DB65D5DB66161B8C7C8E3E9E9E9E6E6E6E4E4
      E4E2E2E2DDDDDDA3A5C2A2A5C2DBDBDBDFDFDFE0E0E0E2E2E2E5E5E5C7C7E361
      61B85D5DB65D5DB65D5DB65D5DB68787C9101199DEDEF7FFFFFFFFFFFFE0E0F9
      0000AB6565BC6565B96565B96565B96969BBCBCBE5ECECECE9E9E9E7E7E7E6E6
      E6DFDFDFA0A1BC676CBF676BBF9FA0BBDDDDDDE3E3E3E4E4E4E6E6E6EAEAEACB
      CBE46969BB6565B96565B96565B98C8CCB0E0E9AE0E0F9FFFFFFFFFFFFE2E2F9
      0000AD6D6DC06D6DBD6D6DBD7070BFCECEE7F0F0F0EDEDEDEBEBEBE9E9E9E2E2
      E29C9CB56E6FBD6D6EBE6D6EBE6E6FBD9B9BB4E0E0E0E7E7E7E9E9E9EBEBEBEF
      EFEFCECEE77070BF6D6DBD6D6DBD9191CD0C0C9CE2E2F9FFFFFFFFFFFFE4E4FA
      0000B07575C47575C17575C1CBCBE5F1F1F1F0F0F0EFEFEFEDEDEDE4E4E49999
      B07676C07575C17575C17575C17575C17676BF9898AFE2E2E2ECECECEEEEEEF0
      F0F0F1F1F1CBCBE57575C17575C19696D00C0C9EE4E4FAFFFFFFFFFFFFE6E6FB
      0000B27C7CC77C7CC47C7CC4BCBCC4F0F0F0F1F1F1F0F0F0E6E6E69595AB7D7D
      C37C7CC47C7CC47C7CC47C7CC47C7CC47C7CC47D7DC29494AAE5E5E5F0F0F0F1
      F1F1F0F0F0BABAC27C7CC47C7CC49B9BD20B0BA0E6E6FAFFFFFFFFFFFFE7E7FB
      0000B58484CB8484C88484C88282BAB2B2B8F0F0F0E6E6E69090A58484C68484
      C88484C88484C88484C88484C88484C88484C88484C88484C69090A5E6E6E6F0
      F0F0B2B2B78282BA8484C88484C8A0A0D50B0BA3E7E7FBFFFFFFFFFFFFEAEAFC
      0000B78C8CCF8C8CCC8C8CCC8C8CCC8686BA8E8E948585998B8BCA8C8CCC8C8C
      CC8C8CCC8C8CCC8C8CCC8C8CCC8C8CCC8C8CCC8C8CCC8C8CCC8B8BC98585998E
      8E948686BA8C8CCC8C8CCC8C8CCCA5A5D70B0BA5EAEAFBFFFFFFFFFFFFECECFC
      0000BA9494D29494CF9494CF9494CF9494CF9494CF9494CF9494CF9494CF9494
      CF9494CF9494CF9494CF9494CF9494CF9494CF9494CF9494CF9494CF9494CF94
      94CF9494CF9494CF9494CF9494CFABABDA0B0BA8ECECFCFFFFFFFFFFFFEFEFFD
      2D2DCBA1A1D99C9CD39C9CD39C9CD39C9CD39C9CD39C9CD39C9CD39C9CD39C9C
      D39C9CD39C9CD39C9CD39C9CD39C9CD39C9CD39C9CD39C9CD39C9CD39C9CD39C
      9CD39C9CD39C9CD39C9CD39C9CD3B3B3DD3232BDEFEFFDFFFFFFFFFFFFF8F8FE
      8585EDC0C0F0AFAFDFB0B0DFB0B0DFB0B0DFB0B0DFB0B0DFB0B0DEB0B0DEB0B0
      DEB0B0DEB0B0DEB0B0DEB0B0DEB0B0DEB0B0DEB0B0DEB0B0DEB0B0DEB0B0DEB0
      B0DEB0B0DEB0B0DEB0B0DEB0B0DEC1C1ED8181E9F8F8FEFFFFFFFFFFFFFFFFFF
      D6D6FA8383F03D3DDE2525D82525D82525D72525D72525D72525D72525D62525
      D62525D52525D52525D52525D42525D32525D32525D22525D22525D12525D025
      25D02525CF2525CF2525CE3C3CD48181ECD7D7FAFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFAFAFEF2F2FEF0F0FEF0F0FEF0F0FEF0F0FEF0F0FEF0F0FEF0F0FEF0F0
      FEF0F0FEF0F0FEF0F0FEF0F0FEF0F0FEF0F0FEF0F0FEF0F0FDF0F0FDF0F0FDF0
      F0FDF0F0FDF0F0FDF0F0FDF2F2FEF9F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
end