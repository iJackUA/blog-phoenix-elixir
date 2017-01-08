defmodule Blog.PageController do
  use Blog.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def view(conn, params) do

  end
end
