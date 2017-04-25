defmodule Blog.AuthPlug do
  import Plug.Conn
  import Phoenix.Controller

  def init(opts) do
    
  end

  def call(conn, repo) do
    admin_auth = get_session(conn, :admin_auth)
    if admin_auth do
      conn
    else
      conn
      |> put_flash(:error, 'Authorizaion required! Please log in.')
      |> redirect(to: Blog.Router.Helpers.main_path(conn, :login))
      |> halt
    end
  end

end
