defmodule Frontend.Users do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user" do
    field :email, :string
    field :password, :string
    field :users, :string

    timestamps()
  end

  @doc false
  def changeset(users, attrs) do
    users
    |> cast(attrs, [:users, :email, :password])
    |> validate_required([:users, :email, :password])
  end
end
