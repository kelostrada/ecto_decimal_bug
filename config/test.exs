use Mix.Config

config :ecto_decimal_bug, EctoDecimalBug.MysqlRepo,
  adapter: Ecto.Adapters.MySQL,
  database: "ecto_decimal_bug_test",
  username: "root",
  password: "123qwe",
  hostname: "127.0.0.1",
  pool: Ecto.Adapters.SQL.Sandbox

config :ecto_decimal_bug, EctoDecimalBug.PostgresRepo,
  adapter: Ecto.Adapters.Postgres,
  database: "ecto_decimal_bug_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
