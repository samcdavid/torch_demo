# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :torch_demo,
  ecto_repos: [TorchDemo.Repo]

# Configures the endpoint
config :torch_demo, TorchDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XycCAKcaysPuIMPD+/CingB59s11PBVtnoqbDbXkjCHGDT6uzX9eBAvlLlBOwR2Q",
  render_errors: [view: TorchDemoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TorchDemo.PubSub,
  live_view: [signing_salt: "ufMcLfhk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :torch,
  otp_app: :torch_demo,
  template_format: "eex"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
