defmodule TorchDemo.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :publish_at, :utc_datetime
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body, :publish_at])
    |> validate_required([:title, :body, :publish_at])
  end
end
