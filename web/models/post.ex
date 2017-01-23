defmodule Blog.Post do
  use Blog.Web, :model

  schema "posts" do
    field :type, :integer
    field :category_id, :integer

    has_many :contents, {"post_contents", Blog.PostContent}, foreign_key: :post_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:type, :category_id])
    |> validate_required([:type, :category_id])
  end
end
