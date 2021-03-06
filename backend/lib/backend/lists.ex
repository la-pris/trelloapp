defmodule Backend.Lists do
  @moduledoc """
  The Lists context.
  """

  import Ecto.Query, warn: false
  alias Backend.Repo

  alias Backend.Lists.List

  def list_lists do
    Repo.all(List)
  end

  def get_list!(id), do: Repo.get!(List, id)

  def create_list(attrs \\ %{}) do
    with_position =
      case attrs do
        %{position: _} -> attrs
          _ -> Map.put(attrs, "position", next_list_position())
      end
    %List{}
    |> List.changeset(with_position)
    |> Repo.insert()
  end

  def update_list(%List{} = list, attrs) do
    list
    |> List.changeset(attrs)
    |> Repo.update()
  end

  def delete_list(%List{} = list) do
    Repo.delete(list)
  end

  def change_list(%List{} = list, attrs \\ %{}) do
    List.changeset(list, attrs)
  end

  def next_list_position do
    result = from(list in List, select: max(list.position))
    |> Repo.one()

    case result do
      nil -> 0
      int -> int + 1
    end
  end

  alias Backend.Lists.Task

  def list_tasks do
    Repo.all(Task)
  end

  def get_task!(id), do: Repo.get!(Task, id)

  def create_task(attrs \\ %{}) do
    %Task{}
    |> Task.changeset(attrs)
    |> Repo.insert()
  end

  def update_task(%Task{} = task, attrs) do
    task
    |> Task.changeset(attrs)
    |> Repo.update()
  end

  def delete_task(%Task{} = task) do
    Repo.delete(task)
  end

  def change_task(%Task{} = task, attrs \\ %{}) do
    Task.changeset(task, attrs)
  end
end
