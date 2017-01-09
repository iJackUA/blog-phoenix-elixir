defmodule Blog.Router do
  use Blog.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    #plug HelloPhoenix.Plugs.Locale, "en"
  end

  pipeline :admin_auth do
    #todo: add auth check for admin controller
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Blog do
    pipe_through :browser

    get "/", FrontController, :index
    get "/:lang", FrontController, :index
    get "/:lang/cat/:slug", FrontController, :category_index
    get "/:lang/:slug", FrontController, :view
  end

  scope "/admin", Blog do
    pipe_through [:browser, :admin_auth]

  end
end
