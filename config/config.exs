# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :ecto_decimal_bug,
      ecto_repos: [EctoDecimalBug.MysqlRepo, EctoDecimalBug.PostgresRepo]

import_config "#{Mix.env}.exs"
