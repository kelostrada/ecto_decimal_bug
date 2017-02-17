use Mix.Config

config :ecto_decimal_bug, EctoDecimalBug.MysqlRepo,
  adapter: Ecto.Adapters.MySQL,
  database: "ecto_decimal_bug_dev",
  username: "root",
  password: "123qwe",
  hostname: "127.0.0.1"

config :ecto_decimal_bug, EctoDecimalBug.PostgresRepo,
  adapter: Ecto.Adapters.Postgres,
  database: "ecto_decimal_bug_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
