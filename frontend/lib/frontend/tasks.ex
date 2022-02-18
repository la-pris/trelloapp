defmodule Frontend.Tasks do
  use Ecto.Schema
  import Ecto.Changeset

  schema "task" do
    field :description, :string
    field :tasks, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(tasks, attrs) do
    tasks
    |> cast(attrs, [:tasks, :title, :description])
    |> validate_required([:tasks, :title, :description])
  end
end
