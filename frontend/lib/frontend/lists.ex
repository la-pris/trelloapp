defmodule Frontend.Lists do
  use Ecto.Schema
  import Ecto.Changeset

  schema "list" do
    field :lists, :string
    field :position, :integer
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(lists, attrs) do
    lists
    |> cast(attrs, [:lists, :title, :position])
    |> validate_required([:lists, :title, :position])
  end
end
