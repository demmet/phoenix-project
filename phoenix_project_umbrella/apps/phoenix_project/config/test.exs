use Mix.Config

# Configure your database
config :phoenix_project, PhoenixProject.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: Map.get(System.get_env(), "PG_USERNAME", "postgres"),
  password: Map.get(System.get_env(), "PG_PASSWORD", "postgres"),
  database: "phoenix_project_test",
  hostname: Map.get(System.get_env(), "PG_HOST", "localhost"),
  pool: Ecto.Adapters.SQL.Sandbox
