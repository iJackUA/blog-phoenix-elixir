defmodule Blog.Admin.MainController do
  use Blog.Web, :controller

  plug :put_layout, :empty

  def login(conn, _params) do
    render(conn, :login)
  end

  def perform_login(conn, params) do
    IO.inspect params

    if params["login"] == "a" && params["password"] == "b" do
      conn
      |> admin_login
      |> redirect(to: admin_path(conn, :index))
    else
      conn
      |> put_flash(:error, 'Login or password are not valid')
      |> redirect(to: main_path(conn, :login))
    end
  end

  def logout(conn, _params) do
    conn
    |> put_session(:admin_auth, false)
    |> redirect(to: main_path(conn, :login))
  end

  defp admin_login(conn) do
    conn
    |> put_session(:admin_auth, true)
    |> configure_session(renew: true)
  end

end
