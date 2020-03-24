# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :dargons,
  ecto_repos: [Dargons.Repo]

# Configures the endpoint
config :dargons, DargonsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "O8DM0r/3Zgz4pNLh/DG5pIh0ILfDvCMVYq4VOsJ+9RLLMrX/klOABnSDx9hNiL23",
  render_errors: [view: DargonsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Dargons.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "Bwc9mm89"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
