# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_project_web,
  namespace: PhoenixProjectWeb,
  ecto_repos: [PhoenixProject.Repo]

# Configures the endpoint
config :phoenix_project_web, PhoenixProjectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1TYbzm3AtvYy/Y0jWAywal4z+PgmbE8Uk7OTu6bTUxsUCymJCQKNAkXk9iWZaEs2",
  render_errors: [view: PhoenixProjectWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixProjectWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix_project_web, :generators,
  context_app: :phoenix_project

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
