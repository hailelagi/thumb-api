# Thumb

Thumbnail processing/generating api. This server has been configured to respond only to
graphql requests via `application/graphql` or `application/json` see the
[absinthe configuration](https://hexdocs.pm/absinthe/plug-phoenix.html#general-usage). Both the original files and the
thumbnail are stored in an aws bucket.

- Options
1. Process the image via an aws lambda function. 
2. Process the image via the ImageMagick binary.
3. Use the rust NIF function and dynamically process the image server side.

# Usage
The processor must be a string:
1. "lambda"
2. "magick"
3. "thumbelina"

```graphql
{
  createThumbnail(image, processor) {
    id
  }
}
```

# benchmarks/performance overview
todo:

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
