defmodule EctoDecimalBug.User do
  use Ecto.Schema

  import Ecto.Changeset

  schema "users" do
    field :username, :string
    field :password_hash, :string
    field :balance, :decimal

    timestamps()
  end

  @required_fields ~w(username)a
  @optional_fields ~w(password_hash balance)a

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, @required_fields ++ @optional_fields)
    |> validate_required(@required_fields)
    |> validate_length(:username, min: 3, max: 30)
  end

end
