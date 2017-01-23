defmodule Blog.FrontController do
  use Blog.Web, :controller

# plug LangChecker  that takes conn.assigns[:lang] and sets a default lang if needed

  def index(conn, _params) do

    #TODO select Lang for post_contents.lang = lang AND post_contents.status = 0
    query = Blog.Post
    |> preload(:contents)
    #|> where()

    posts = Repo.all(query)
    render conn, "index.html", posts: posts
  end

  def category(conn, params) do
    render conn, "index.html"
  end

  def view(conn, params) do

  end

  def page(conn, params) do
    render conn, "index.html"
  end

  def tag(conn, params) do
    render conn, "index.html"
  end
end
