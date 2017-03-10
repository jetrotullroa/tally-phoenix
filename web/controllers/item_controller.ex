defmodule Tally.ItemController do
  use Tally.Web, :controller



  def index(conn, params) do
    render conn, "index.html"
  end

end
