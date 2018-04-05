defmodule NestedLayoutWeb.Router do
  use NestedLayoutWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", NestedLayoutWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/about", HelpController, :about
    get "/faq", HelpController, :faq
    get "/contact", HelpController, :contact
  end

  # Other scopes may use custom stacks.
  # scope "/api", NestedLayoutWeb do
  #   pipe_through :api
  # end
end
