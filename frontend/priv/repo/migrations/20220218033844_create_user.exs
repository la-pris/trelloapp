defmodule Frontend.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:user) do
      add :users, :string
      add :email, :string
      add :password, :string

      timestamps()
    end
  end
end
