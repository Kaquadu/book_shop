defmodule BookShop.Product.Products do
  use BookShop.Schema

  schema "products" do
    field :name, :string
    field :img_path, :string
    field :description, :string
    field :price, :float

    timestamps()
  end

  def changeset(product, attrs) do
    product
      |> cast(attrs, [:name, :img_path, :description, :price])
  end
end
