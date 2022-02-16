defmodule Backend.ListsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Backend.Lists` context.
  """

  @doc """
  Generate a list.
  """
  def list_fixture(attrs \\ %{}) do
    {:ok, list} =
      attrs
      |> Enum.into(%{
        position: 42,
        title: "some title"
      })
      |> Backend.Lists.create_list()

    list
  end

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        description: "some description",
        title: "some title"
      })
      |> Backend.Lists.create_task()

    task
  end
end
