defmodule EctoDecimalBug.PostgresRepo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string, null: false
      add :password_hash, :string
      add :balance, :decimal

      timestamps()
    end

    create unique_index(:users, [:username])
  end
end
