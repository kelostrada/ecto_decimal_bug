defmodule EctoDecimalBug do
  @moduledoc """
  Documentation for EctoDecimalBug.
  """

  use Application
  import Supervisor.Spec, warn: false

  def start(_type, _args) do
    Supervisor.start_link([
      supervisor(EctoDecimalBug.MysqlRepo, []),
      supervisor(EctoDecimalBug.PostgresRepo, [])
    ], [strategy: :one_for_one, name: EctoDecimalBug.Supervisor])
  end

end
