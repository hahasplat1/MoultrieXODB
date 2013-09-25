USE [master]
RESTORE DATABASE [XODB] FROM  DISK = N'C:\Temp\xodb_ent\xodb_ent.bak' WITH  FILE = 1,  NOUNLOAD,  STATS = 5

GO