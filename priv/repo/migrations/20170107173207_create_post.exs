defmodule Blog.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :type, :integer, null: false
      add :category_id, :integer, null: false

      timestamps()
    end

  end
end
