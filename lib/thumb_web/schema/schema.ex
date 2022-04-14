defmodule ThumbWeb.Schema do
  use Absinthe.Schema

  import_types ThumbWeb.Schema.Thumbnail

  query do
    @desc""
    field :get_thumbnail, :thumbnail do
      arg :id, non_null(:string)
      # resolve
   end
  end

  mutation do
    @desc ""
    field :create_thumbnail, :thumbnail do
      arg :image, non_null(:string)
      # resolve
    end
  end
end