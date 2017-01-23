defmodule Blog.Admin.MainController do
  use Blog.Web, :controller

  plug :put_layout, :admin

  def login(conn, _params) do
    render conn, "index.html"
  end

  def logout(conn, _params) do
    render conn, "index.html"
  end

end
