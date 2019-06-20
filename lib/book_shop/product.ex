defmodule BookShop.Product do
  import Ecto.Query, warn: false
  alias BookShop.Repo
  alias BookShop.Products.Product

  def get_all() do
    Repo.all(Product)
  end

  def create_product(attrs) do
    %Product{}
    |> Product.changeset(attrs)
    |> Repo.insert()
  end

end
