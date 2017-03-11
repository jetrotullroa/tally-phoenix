defmodule Tally.ItemController do
  use Tally.Web, :controller

  alias Tally.Item

  def index(conn, params) do
    items = Repo.all(Item)
    render conn, "index.html", items: items
  end

  def show(conn, params) do
     
  end

  def new(conn, params) do

  end

  def create(conn, params) do

  end

  def edit(conn, params) do

  end

  def update(conn, params) do

  end

  def delete(conn, params) do

  end

end
