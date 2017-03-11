defmodule Tally.ItemController do
  use Tally.Web, :controller

  alias Tally.Item

  def index(conn, params) do
    items = Repo.all(Item)
    render conn, "index.html", items: items
  end

end
