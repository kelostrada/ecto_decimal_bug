defmodule EctoDecimalBugTest do
  use ExUnit.Case
  alias EctoDecimalBug.{MysqlRepo, PostgresRepo, User}

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(EctoDecimalBug.PostgresRepo)
    Ecto.Adapters.SQL.Sandbox.mode(EctoDecimalBug.PostgresRepo, {:shared, self()})
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(EctoDecimalBug.MysqlRepo)
    Ecto.Adapters.SQL.Sandbox.mode(EctoDecimalBug.MysqlRepo, {:shared, self()})
    :ok
  end

  test "inserting simple object into postgres and getting the same results" do
    user = PostgresRepo.insert!(%User{username: "testuser", balance: Decimal.new(1.23)})
    assert PostgresRepo.get(User, user.id) == user
  end

  test "inserting buggy object into postgres and getting the same results" do
    user = PostgresRepo.insert!(%User{username: "testuser", balance: Decimal.new("1.00123")})
    assert PostgresRepo.get(User, user.id) == user
  end

  test "inserting simple object into mysql and getting the same results" do
    user = MysqlRepo.insert!(%User{username: "testuser", balance: Decimal.new(1.23)})
    assert MysqlRepo.get(User, user.id) == user
  end

  test "inserting buggy object into mysql and getting the same results" do
    user = MysqlRepo.insert!(%User{username: "testuser", balance: Decimal.new("1.00123")})
    assert MysqlRepo.get(User, user.id) == user
  end
end
