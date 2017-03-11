# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Tally.Repo.insert!(%Tally.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


Tally.Repo.delete_all Tally.User

Tally.User.changeset(%Tally.User{}, %{name: "Test User", email: "testuser@example.com", password: "secret", password_confirmation: "secret"})
|> Tally.Repo.insert!



# Tally.Repo.delete_all Tally.Item
#
# Tally.Item.changeset(%Tally.Item{}, %{name: "Lenovo Laptop", serial: "X657231", used_by: "Jetro Roa", quantity: "1"})
# |> Tally.Repo.insert!
