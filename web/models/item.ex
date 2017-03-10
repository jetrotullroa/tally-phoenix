defmodule Tally.Item do
  use Tally.Web, :model


  schema "items" do
    field :name, :string
    field :serial, :string
    field :used_by, :string
    field :quantity, :string

    timestamps()
  end

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:name, :serial, :used_by, :quantity])
    |> validate_required([:name, :serial, :used_by, :quantity])
  end

end
