defmodule TorchDemo.Repo do
  use Ecto.Repo,
    otp_app: :torch_demo,
    adapter: Ecto.Adapters.Postgres
end
