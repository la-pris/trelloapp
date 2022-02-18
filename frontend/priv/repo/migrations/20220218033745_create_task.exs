defmodule Frontend.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table(:task) do
      add :tasks, :string
      add :title, :string
      add :description, :string

      timestamps()
    end
  end
end
