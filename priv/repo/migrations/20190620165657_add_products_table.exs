defmodule BookShop.Repo.Migrations.AddProductsTable do
  use Ecto.Migration

  def change do
    create table(:products, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :name, :string
      add :img_path, :string
      add :description, :text
      add :price, :float

      timestamps(type: :utc_datetime)
    end
  end
end
