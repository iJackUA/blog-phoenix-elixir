defmodule Blog.FrontController do
  use Blog.Web, :controller

  def index(conn, _params) do
    posts = Repo.all(Blog.Post |> preload(:post_langs))
    render conn, "index.html", posts: posts
  end

  def categry_index(conn, _params) do
    render conn, "index.html"
  end

  def view(conn, params) do

  end
end
