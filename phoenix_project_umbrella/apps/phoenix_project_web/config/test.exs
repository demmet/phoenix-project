use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_project_web, PhoenixProjectWeb.Endpoint,
  http: [port:4041],
  server: false
