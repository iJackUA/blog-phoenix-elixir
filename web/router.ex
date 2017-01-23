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

    Application.get_env(:blog, :supported_langs)
    |> Enum.each(fn %{code: lang} ->
      get "/#{lang}", FrontController, :index, assigns: %{lang: lang}
      get "/#{lang}/cat/:slug", FrontController, :category, assigns: %{lang: lang}
      get "/#{lang}/post/:slug", FrontController, :view, assigns: %{lang: lang}
      get "/#{lang}/page/:slug", FrontController, :page, assigns: %{lang: lang}
      get "/#{lang}/tag/:name", FrontController, :tag, assigns: %{lang: lang}

      #  get "/:#{lang}/rss/all.rss", FrontController, :rss_index, assigns: %{lang: lang}
      #  get "/:#{lang}/rss/cat/:name", FrontController, :rss_category, assigns: %{lang: lang}
    end)
  end


  scope "/admin", Blog do
    pipe_through [:browser, :admin_auth]

    get "/", Admin.PostController, :index
    get "/login", Admin.MainController, :login
    get "/logout", Admin.MainController, :logout
    resources "/posts", Admin.PostController, except: [:show]
  end
end
