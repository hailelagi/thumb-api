defmodule ThumbWeb.Schema.Thumbnail do
  use Absinthe.Schema.Notation

  object :thumbnail do
    field :id, :id
    field :original_url, :string
    field :resized_url, :string
  end
end
