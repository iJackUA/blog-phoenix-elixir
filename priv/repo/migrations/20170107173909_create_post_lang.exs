defmodule Blog.Repo.Migrations.CreatePostLang do
  use Ecto.Migration

  def change do
    create table(:post_contents) do
      add :post_id, :integer, null: false
      add :lang, :string, null: false
      add :status, :integer, null: false
      add :seo_url, :string, null: false
      add :embed_url, :text
      add :short_text, :text
      add :extended_text, :text
      add :kudos_count, :integer, default: 0
      add :og_title, :text
      add :og_image, :text
      add :og_video, :text
      add :og_description, :text

      timestamps()
    end

  end
end
