defmodule Blog.TagPost do
  use Blog.Web, :model

  schema "tag_post" do
    field :tag_id, :integer
    field :post_id, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:tag_id, :post_id])
    |> validate_required([:tag_id, :post_id])
  end
end
