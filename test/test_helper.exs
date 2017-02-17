ExUnit.start()

Ecto.Adapters.SQL.Sandbox.mode(EctoDecimalBug.MysqlRepo, :manual)
Ecto.Adapters.SQL.Sandbox.mode(EctoDecimalBug.PostgresRepo, :manual)
