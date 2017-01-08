defmodule Blog.PostLang do
  use Blog.Web, :model

  schema "post_langs" do
    field :post_id, :integer
    field :lang, :string
    field :seo_url, :string
    field :embed_url, :string
    field :short_text, :string
    field :extended_text, :string
    field :kudos_count, :integer
    field :og_title, :string
    field :og_image, :string
    field :og_video, :string
    field :og_description, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:post_id, :lang, :seo_url, :embed_url, :short_text, :extended_text, :kudos_count, :og_title, :og_image, :og_video, :og_description])
    |> validate_required([:post_id, :lang, :seo_url, :embed_url, :short_text, :extended_text, :kudos_count, :og_title, :og_image, :og_video, :og_description])
  end
end
