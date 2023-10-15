object DM: TDM
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 214
  Width = 972
  object Tarefas: TQuery
    DatabaseName = 'Base'
    Left = 200
  end
  object Base: TDatabase
    Connected = True
    DatabaseName = 'Base'
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=DESKTOP-8RA54NO'
      'DATABASE NAME=DB_BELAFLOR'
      'USER NAME=Ciafelina'
      'PASSWORD=lftrlftr10'
      'ENABLE BCD=FALSE'
      'BLOB SIZE=256'
      'BLOBS TO CACHE=256'
      'USER NAME=Ciafelina')
    SessionName = 'Default'
    Left = 240
  end
end
