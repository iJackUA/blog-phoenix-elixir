defmodule Blog.LayoutView do
  use Blog.Web, :view

  def copy_year do
     {:ok, year} = Timex.format(Timex.now, "{YYYY}")
     year
  end

  def main_menu(_conn) do
    Enum.map(Blog.Category.all, &(content_tag(:a, &1[:titles][:en], href: &1[:url], class: "item")))
  end

end
