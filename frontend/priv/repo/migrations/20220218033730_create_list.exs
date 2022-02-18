defmodule Frontend.Repo.Migrations.CreateList do
  use Ecto.Migration

  def change do
    create table(:list) do
      add :lists, :string
      add :title, :string
      add :position, :integer

      timestamps()
    end
  end
end
