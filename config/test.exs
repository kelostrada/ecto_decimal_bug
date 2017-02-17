use Mix.Config

config :ecto_decimal_bug, EctoDecimalBug.MysqlRepo,
  adapter: Ecto.Adapters.MySQL,
  url: "ecto://" <> (System.get_env("MYSQL_URL") || "root@localhost") <> "/ecto_decimal_bug_test",
  pool: Ecto.Adapters.SQL.Sandbox

config :ecto_decimal_bug, EctoDecimalBug.PostgresRepo,
  adapter: Ecto.Adapters.Postgres,
  database: "ecto_decimal_bug_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
