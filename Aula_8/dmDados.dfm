object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Aa123456;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=ProjetoVenda;Data Source=localhost'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 32
  end
  object stInsereCliente: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_AdicionarCliente'
    Parameters = <>
    Left = 224
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TBCLIENTES')
    Left = 136
    Top = 32
    object ADOQuery1ID_CLI: TAutoIncField
      FieldName = 'ID_CLI'
      ReadOnly = True
    end
    object ADOQuery1NOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 50
    end
  end
  object dsCliente: TDataSource
    DataSet = ADOQuery1
    Left = 40
    Top = 112
  end
  object stAtualizaCliente: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_EditarCliente'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Nome'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 136
    Top = 112
  end
  object stExcluiCliente: TADOStoredProc
    Connection = ADOConnection1
    DataSource = dsCliente
    ProcedureName = 'sp_ApagarCliente'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@Id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 240
    Top = 112
  end
end
