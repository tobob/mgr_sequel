Trample.configure do
  concurrency 50
  iterations  10

  get  "http://localhost:3000/posts"
  post "http://localhost:3000/posts" do
    {post: {title: "Title", content: "Content Honolulu Kokopiko Majtki z brku"}}
  end
end
