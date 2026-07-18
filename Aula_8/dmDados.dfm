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
    Left = 88
    Top = 72
  end
  object stInsereCliente: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_AdicionarCliente'
    Parameters = <>
    Left = 88
    Top = 160
  end
end
