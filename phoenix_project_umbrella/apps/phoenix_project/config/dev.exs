use Mix.Config

# Configure your database
config :phoenix_project, PhoenixProject.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_project_dev",
  hostname: "localhost",
  pool_size: 10
