object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initi' +
      'al Catalog=SistemaExemplo;Data Source=localhost'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 32
  end
  object QryInserir: TADOQuery
    Parameters = <>
    Left = 152
    Top = 32
  end
end
