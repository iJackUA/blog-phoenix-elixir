defmodule Blog.Repo.Migrations.CreateTagPost do
  use Ecto.Migration

  def change do
    create table(:tag_post) do
      add :tag_id, :integer
      add :post_id, :integer

      timestamps()
    end

  end
end
