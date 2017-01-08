defmodule Blog.LayoutView do
  use Blog.Web, :view

  def copy_year do
     {:ok, year} = Timex.format(Timex.now, "{YYYY}")
     year
  end

  def main_menu(_conn) do
      menu =
      Blog.Category.all
      |> Enum.map(fn(cat) ->
       "<a class='item' href='#{cat[:url]}'>
         #{cat[:titles][:en]}
       </a>"
      end)
      |> Enum.join

      raw(menu)
  end

end
