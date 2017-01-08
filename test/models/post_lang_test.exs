defmodule Blog.PostLangTest do
  use Blog.ModelCase

  alias Blog.PostLang

  @valid_attrs %{embed_url: "some content", extended_text: "some content", kudos_count: 42, lang: "some content", og_description: "some content", og_image: "some content", og_title: "some content", og_video: "some content", post_id: 42, seo_url: "some content", short_text: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = PostLang.changeset(%PostLang{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = PostLang.changeset(%PostLang{}, @invalid_attrs)
    refute changeset.valid?
  end
end
