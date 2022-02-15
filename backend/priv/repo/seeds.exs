# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Backend.Repo.insert!(%Backend.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Backend.Repo
alias Backend.Lists.List

Repo.insert! %List{title: "Company 1", position: 1}
Repo.insert! %List{title: "Company 2", position: 2}
Repo.insert! %List{title: "Company 3", position: 3}
