# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Blog.Repo.insert!(%Blog.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

post = Blog.Repo.insert!(%Blog.Post{
  type: 1,
  category_id: 1
  })

Blog.Repo.insert!(%Blog.PostContent{
  post_id: post.id,
  lang: "en",
  status: 1,
  seo_url: "hello-www",
  embed_url: "http://github.com",
  short_text: "short_text. Hello www HTML",
  extended_text: "extended_text. Hello www HTML",
  kudos_count: 123,
  og_title: "og_title. Hello www",
  og_image: "og_image. Hello www",
  og_video: "og_video. Hello www",
  og_description: "og_description. Hello www",
})

post2 = Blog.Repo.insert!(%Blog.Post{
  type: 1,
  category_id: 2
  })

Blog.Repo.insert!(%Blog.PostContent{
  post_id: post2.id,
  lang: "ua_ru",
  status: 1,
  seo_url: "agov_blog",
  embed_url: "http://github.com",
  short_text: "short_text. Agov HTML",
  extended_text: "extended_text. Agov HTML",
  kudos_count: 123,
  og_title: "og_title. Agov www",
  og_image: "og_image. Agov www",
  og_video: "og_video. Agov www",
  og_description: "og_description. Agov www",
})
