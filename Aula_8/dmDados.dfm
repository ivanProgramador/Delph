object dm: Tdm
  Height = 318
  Width = 613
  object conProjetoVenda: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=rqqo231;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=ProjetoVenda;Data Source=localhost;Us' +
      'e Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;W' +
      'orkstation ID=DESKTOP-DPPTK8A;Use Encryption for Data=False;Tag ' +
      'with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 16
  end
  object stInsereCliente: TADOStoredProc
    Connection = conProjetoVenda
    ProcedureName = 'st_InsereCli'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@nome'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 136
    Top = 16
  end
  object qryClientes: TADOQuery
    Active = True
    Connection = conProjetoVenda
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TBCLIENTES')
    Left = 224
    Top = 16
    object qryClientesID_CLI: TAutoIncField
      FieldName = 'ID_CLI'
      ReadOnly = True
    end
    object qryClientesNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 50
    end
  end
  object dsClientes: TDataSource
    DataSet = qryClientes
    Left = 312
    Top = 16
  end
  object stAlteraCli: TADOStoredProc
    Connection = conProjetoVenda
    ProcedureName = 'st_AlteraCli'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@nome'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 392
    Top = 16
  end
  object stExcluiCliente: TADOStoredProc
    Connection = conProjetoVenda
    ProcedureName = 'ST_APAGACLI'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 488
    Top = 16
  end
  object qryProdutos: TADOQuery
    Connection = conProjetoVenda
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TBPRODUTO')
    Left = 40
    Top = 88
    object qryProdutosID_PROD: TAutoIncField
      FieldName = 'ID_PROD'
      ReadOnly = True
    end
    object qryProdutosNOME_PROD: TStringField
      FieldName = 'NOME_PROD'
      Size = 30
    end
    object qryProdutosQTD_PRO: TIntegerField
      FieldName = 'QTD_PRO'
    end
    object qryProdutosVL_PROD: TBCDField
      FieldName = 'VL_PROD'
      Precision = 19
    end
  end
  object dsProdutos: TDataSource
    DataSet = qryProdutos
    Left = 128
    Top = 88
  end
  object stInsereProduto: TADOStoredProc
    Connection = conProjetoVenda
    ProcedureName = 'st_InsereProd'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@nome'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@qtd'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@vl'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
      end>
    Left = 256
    Top = 88
  end
  object stAtualizaProduto: TADOStoredProc
    Connection = conProjetoVenda
    ProcedureName = 'st_AtualizaProd'
    Parameters = <>
    Left = 368
    Top = 88
  end
  object stExcluiProduto: TADOStoredProc
    Connection = conProjetoVenda
    ProcedureName = 'stExcluiProd'
    Parameters = <>
    Left = 472
    Top = 88
  end
end
