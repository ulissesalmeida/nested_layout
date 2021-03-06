# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :nested_layout,
  ecto_repos: [NestedLayout.Repo]

# Configures the endpoint
config :nested_layout, NestedLayoutWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fmDWKsBwY0bcwifh3bn2aArxkYAM8Z67F6WtveYN324KBggKHhe//9QRZxx+guHf",
  render_errors: [view: NestedLayoutWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NestedLayout.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
