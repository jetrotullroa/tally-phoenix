defmodule Tally.Repo.Migrations.Item do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :string
      add :serial, :string
      add :used_by, :string
      add :quantity, :string
      
      timestamps()
    end

  end
end
