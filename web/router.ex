defmodule Tally.Router do
  use Tally.Web, :router
  use Coherence.Router         # Add this

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Coherence.Authentication.Session  # Add this
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :protected do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Coherence.Authentication.Session, protected: true  # Add this
  end

  scope "/" do
    pipe_through :browser
    coherence_routes
  end

  scope "/" do
    pipe_through :protected
    coherence_routes :protected
  end

  scope "/", Tally do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/", Tally do
    pipe_through :browser # Use the default browser stack

    get "/items", ItemController, :index
  end

  scope "/", Tally do
    pipe_through :protected

    # add protected resources below
    resources "/login", PrivateController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Tally do
  #   pipe_through :api
  # end
end
