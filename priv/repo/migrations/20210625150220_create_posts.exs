defmodule TorchDemo.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :text
      add :publish_at, :utc_datetime

      timestamps()
    end

  end
end
