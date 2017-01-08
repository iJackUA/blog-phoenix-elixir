defmodule Blog.TagPostTest do
  use Blog.ModelCase

  alias Blog.TagPost

  @valid_attrs %{post_id: 42, tag_id: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = TagPost.changeset(%TagPost{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = TagPost.changeset(%TagPost{}, @invalid_attrs)
    refute changeset.valid?
  end
end
